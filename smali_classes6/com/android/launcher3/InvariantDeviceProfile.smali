.class public Lcom/android/launcher3/InvariantDeviceProfile;
.super Ljava/lang/Object;
.source "InvariantDeviceProfile.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;,
        Lcom/android/launcher3/InvariantDeviceProfile$GridOption;,
        Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;,
        Lcom/android/launcher3/InvariantDeviceProfile$DeviceType;
    }
.end annotation


# static fields
.field static final COUNT_SIZES:I = 0x4

.field private static final ICON_SIZE_DEFINED_IN_APP_DP:F = 48.0f

.field static final INDEX_DEFAULT:I = 0x0

.field static final INDEX_LANDSCAPE:I = 0x1

.field static final INDEX_TWO_PANEL_LANDSCAPE:I = 0x3

.field static final INDEX_TWO_PANEL_PORTRAIT:I = 0x2

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ALLAPPS_THEMED_ICONS:Ljava/lang/String; = "pref_allapps_themed_icons"

.field public static final KEY_SHOW_DESKTOP_LABELS:Ljava/lang/String; = "pref_desktop_show_labels"

.field public static final KEY_SHOW_DRAWER_LABELS:Ljava/lang/String; = "pref_drawer_show_labels"

.field public static final KEY_WORKSPACE_LOCK:Ljava/lang/String; = "pref_workspace_lock"

.field private static final KNEARESTNEIGHBOR:F = 3.0f

.field private static final RES_GRID_ICON_SIZE_DP:Ljava/lang/String; = "grid_icon_size_dp"

.field private static final RES_GRID_NUM_COLUMNS:Ljava/lang/String; = "grid_num_columns"

.field private static final RES_GRID_NUM_ROWS:Ljava/lang/String; = "grid_num_rows"

.field public static final TAG:Ljava/lang/String; = "IDP"

.field public static final TYPE_MULTI_DISPLAY:I = 0x1

.field public static final TYPE_PHONE:I = 0x0

.field public static final TYPE_TABLET:I = 0x2

.field private static final WEIGHT_EFFICIENT:F = 100000.0f

.field private static final WEIGHT_POWER:F = 5.0f


# instance fields
.field public allAppsBorderSpaces:[Landroid/graphics/PointF;

.field public allAppsCellSize:[Landroid/graphics/PointF;

.field public allAppsCellSpecsId:I

.field public allAppsCellSpecsTwoPanelId:I

.field public allAppsIconSize:[F

.field public allAppsIconTextSize:[F

.field public allAppsSpecsId:I

.field public allAppsSpecsTwoPanelId:I

.field public allAppsStyle:I

.field public borderSpaces:[Landroid/graphics/PointF;

.field public cellStyle:I

.field public dbFile:Ljava/lang/String;

.field public defaultLayoutId:I

.field public defaultWallpaperSize:Landroid/graphics/Point;

.field public demoModeLayoutId:I

.field public devicePaddingId:I

.field public deviceType:I

.field public fillResIconDpi:I

.field public folderSpecsId:I

.field public folderSpecsTwoPanelId:I

.field public folderStyle:I

.field public horizontalMargin:[F

.field public hotseatBarBottomSpace:[F

.field public hotseatColumnSpan:[I

.field public hotseatQsbSpace:[F

.field public hotseatSpecsId:I

.field public hotseatSpecsTwoPanelId:I

.field public iconBitmapSize:I

.field public iconSize:[F

.field public iconTextSize:[F

.field public inlineNavButtonsEndSpacing:I

.field public inlineQsb:[Z

.field protected isScalable:Z

.field private final mChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public minCellSize:[Landroid/graphics/PointF;

.field public numAllAppsColumns:I

.field public numAllAppsRowsForCellHeightCalculation:I

.field public numColumns:I

.field public numDatabaseAllAppsColumns:I

.field public numDatabaseHotseatIcons:I

.field public numFolderColumns:[I

.field public numFolderRows:[I

.field public numRows:I

.field public numSearchContainerColumns:I

.field public numShownHotseatIcons:I

.field public startAlignTaskbar:[Z

.field public supportedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile;",
            ">;"
        }
    .end annotation
.end field

.field public transientTaskbarIconSize:[F

.field public workspaceCellSpecsId:I

.field public workspaceCellSpecsTwoPanelId:I

.field public workspaceSpecsId:I

.field public workspaceSpecsTwoPanelId:I


# direct methods
.method public static synthetic $r8$lambda$DNcXzmawjoq65q3wgQi9M48DryY(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1

    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$LlHfeHRENaNpCGGe9WWKhHBWLvw(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$setCurrentGrid$8(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MdJWmFghQ3Ioth-Mihxsy3JEk_c(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$parseAllGridOptions$9(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nGa0NJI2SyP-NYh2OncriwNvUFc(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x0eHneg52tDl33i5j252RO28A_8(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$new$1(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    .line 191
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    .line 193
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsTwoPanelId:I

    .line 195
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    .line 197
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsTwoPanelId:I

    .line 199
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    .line 201
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsTwoPanelId:I

    .line 203
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    .line 205
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsTwoPanelId:I

    .line 207
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsId:I

    .line 209
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsTwoPanelId:I

    .line 211
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsId:I

    .line 213
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsTwoPanelId:I

    .line 219
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 224
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    .line 233
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    .line 191
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    .line 193
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsTwoPanelId:I

    .line 195
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    .line 197
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsTwoPanelId:I

    .line 199
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    .line 201
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsTwoPanelId:I

    .line 203
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    .line 205
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsTwoPanelId:I

    .line 207
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsId:I

    .line 209
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsTwoPanelId:I

    .line 211
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsId:I

    .line 213
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsTwoPanelId:I

    .line 219
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 224
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    .line 237
    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mContext:Landroid/content/Context;

    .line 239
    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 241
    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "gridName":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "newGridName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherPrefs;->GRID_NAME:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    .line 246
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/util/LockedUserState;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LockedUserState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    .line 250
    sget-object v3, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/DisplayController;

    new-instance v4, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/DisplayController;->setPriorityListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    .line 191
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    .line 193
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsTwoPanelId:I

    .line 195
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    .line 197
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsTwoPanelId:I

    .line 199
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    .line 201
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsTwoPanelId:I

    .line 203
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    .line 205
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsTwoPanelId:I

    .line 207
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsId:I

    .line 209
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsTwoPanelId:I

    .line 211
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsId:I

    .line 213
    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsTwoPanelId:I

    .line 219
    const/4 v2, 0x4

    new-array v3, v2, [Z

    iput-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 224
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    .line 274
    sget-object v3, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    .line 275
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "gridName":Ljava/lang/String;
    sget-object v4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v4}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v4

    .line 279
    .local v4, "defaultInfo":Lcom/android/launcher3/util/DisplayController$Info;
    invoke-static {v4}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v5

    .line 280
    .local v5, "defaultDeviceType":I
    nop

    .line 282
    const/4 v6, 0x0

    invoke-static {v1, v3, v5, v6}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v7

    .line 280
    invoke-static {v4, v7, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v7

    .line 286
    .local v7, "defaultDisplayOption":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v8

    .line 287
    .local v8, "displayContext":Landroid/content/Context;
    new-instance v9, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-direct {v9, v8}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;)V

    .line 288
    .local v9, "myInfo":Lcom/android/launcher3/util/DisplayController$Info;
    invoke-static {v9}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v10

    .line 289
    .local v10, "deviceType":I
    nop

    .line 291
    invoke-static {v1, v3, v10, v6}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v11

    .line 289
    invoke-static {v9, v11, v10}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v11

    .line 295
    .local v11, "myDisplayOption":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    new-instance v12, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    iget-object v13, v7, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-direct {v12, v13}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    .line 296
    invoke-static {v12, v11}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$madd(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v12

    .line 297
    .local v12, "result":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    invoke-static {v12}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v13

    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v14

    aget v14, v14, v6

    aput v14, v13, v6

    .line 299
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_0
    if-ge v13, v2, :cond_0

    .line 300
    invoke-static {v12}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v14

    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v15

    aget v15, v15, v13

    invoke-static {v11}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v16

    aget v2, v16, v13

    invoke-static {v15, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v14, v13

    .line 299
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x4

    goto :goto_0

    .line 304
    .end local v13    # "i":I
    :cond_0
    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminCellSize(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v12}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminCellSize(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v13

    const/4 v14, 0x4

    invoke-static {v2, v6, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetborderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v12}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetborderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v13

    invoke-static {v2, v6, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    invoke-direct {v0, v1, v9, v12, v10}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;I)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridName"    # Ljava/lang/String;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    .line 191
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    .line 193
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsTwoPanelId:I

    .line 195
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    .line 197
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsTwoPanelId:I

    .line 199
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    .line 201
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsTwoPanelId:I

    .line 203
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    .line 205
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsTwoPanelId:I

    .line 207
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsId:I

    .line 209
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsTwoPanelId:I

    .line 211
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsId:I

    .line 213
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsTwoPanelId:I

    .line 219
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 224
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "newName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    return-void

    .line 265
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown grid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;

    .line 691
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/util/Partner;

    move-result-object v0

    .line 692
    .local v0, "p":Lcom/android/launcher3/util/Partner;
    if-nez v0, :cond_0

    .line 693
    return-void

    .line 696
    :cond_0
    :try_start_0
    const-string v1, "grid_num_rows"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/Partner;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    .line 697
    .local v1, "numRows":I
    const-string v3, "grid_num_columns"

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/util/Partner;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    .line 698
    .local v3, "numColumns":I
    const-string v4, "grid_icon_size_dp"

    invoke-virtual {v0, v4, v2}, Lcom/android/launcher3/util/Partner;->getDimenValue(Ljava/lang/String;I)F

    move-result v2

    .line 700
    .local v2, "iconSizePx":F
    if-lez v1, :cond_1

    if-lez v3, :cond_1

    .line 701
    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 702
    iput v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 704
    :cond_1
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 705
    iget-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    iget v5, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 706
    invoke-static {v2, v5}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v1    # "numRows":I
    .end local v2    # "iconSizePx":F
    .end local v3    # "numColumns":I
    :cond_2
    goto :goto_0

    .line 708
    :catch_0
    move-exception v1

    .line 709
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "IDP"

    const-string v3, "Invalid Partner grid resource!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return-void
.end method

.method private static dist(FFFF)F
    .locals 4
    .param p0, "x0"    # F
    .param p1, "y0"    # F
    .param p2, "x1"    # F
    .param p3, "y1"    # F

    .line 714
    sub-float v0, p2, p0

    float-to-double v0, v0

    sub-float v2, p3, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 370
    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->GRID_NAME:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultGridName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 388
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>()V

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I
    .locals 5
    .param p0, "displayInfo"    # Lcom/android/launcher3/util/DisplayController$Info;

    .line 342
    const/4 v0, 0x1

    .line 343
    .local v0, "flagPhone":I
    const/4 v1, 0x2

    .line 345
    .local v1, "flagTablet":I
    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/util/DisplayController$Info;II)V

    .line 346
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda11;-><init>()V

    .line 347
    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Ljava/util/stream/IntStream;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result v2

    .line 348
    .local v2, "type":I
    or-int v3, v0, v1

    if-ne v2, v3, :cond_0

    .line 350
    const/4 v3, 0x1

    return v3

    .line 351
    :cond_0
    if-ne v2, v1, :cond_1

    .line 352
    const/4 v3, 0x2

    return v3

    .line 354
    :cond_1
    return v4
.end method

.method private getLauncherIconDensity(I)I
    .locals 5
    .param p1, "requiredSize"    # I

    .line 663
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 673
    .local v0, "densityBuckets":[I
    const/16 v1, 0x280

    .line 674
    .local v1, "density":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 675
    aget v3, v0, v2

    int-to-float v3, v3

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    .line 677
    .local v3, "expectedSize":F
    int-to-float v4, p1

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    .line 678
    aget v1, v0, v2

    .line 674
    .end local v3    # "expectedSize":F
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 682
    .end local v2    # "i":I
    :cond_1
    return v1

    nop

    :array_0
    .array-data 4
        0x78
        0xa0
        0xd5
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method private static getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gridName"    # Ljava/lang/String;
    .param p2, "deviceType"    # I
    .param p3, "allowDisabledGrid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;",
            ">;"
        }
    .end annotation

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v0, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$xml;->device_profiles:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 581
    .local v2, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 582
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_6

    :cond_1
    const/4 v3, 0x1

    if-eq v4, v3, :cond_6

    .line 583
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    const-string v7, "grid-option"

    .line 584
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 586
    new-instance v7, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 587
    .local v7, "gridOption":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    invoke-virtual {v7, p2}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz p3, :cond_5

    .line 588
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 589
    .local v8, "displayDepth":I
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    move v4, v9

    if-ne v9, v5, :cond_4

    .line 590
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v8, :cond_5

    :cond_4
    if-eq v4, v3, :cond_5

    .line 592
    if-ne v4, v6, :cond_3

    const-string v9, "display-option"

    .line 593
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 592
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 594
    new-instance v9, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 595
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    invoke-direct {v9, v7, p0, v10}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 594
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 599
    .end local v7    # "gridOption":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    .end local v8    # "displayDepth":I
    :cond_5
    goto :goto_0

    .line 601
    .end local v2    # "depth":I
    .end local v4    # "type":I
    :cond_6
    if-eqz v1, :cond_7

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 603
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_7
    nop

    .line 605
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v1, "filteredProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 607
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 608
    .local v3, "option":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    iget-object v4, v3, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-object v4, v4, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v3, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 609
    invoke-virtual {v4, p2}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz p3, :cond_9

    .line 610
    :cond_8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    .end local v3    # "option":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    :cond_9
    goto :goto_2

    .line 614
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 616
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 617
    .restart local v3    # "option":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    invoke-static {v3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetcanBeDefault(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 618
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    .end local v3    # "option":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    :cond_b
    goto :goto_3

    .line 622
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 625
    return-object v1

    .line 623
    :cond_d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No display option with canBeDefault=true"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 578
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_e

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "gridName":Ljava/lang/String;
    .end local p2    # "deviceType":I
    .end local p3    # "allowDisabledGrid":Z
    :cond_e
    :goto_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 601
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "gridName":Ljava/lang/String;
    .restart local p2    # "deviceType":I
    .restart local p3    # "allowDisabledGrid":Z
    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    :goto_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridName"    # Ljava/lang/String;

    .line 374
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    .line 375
    .local v0, "displayInfo":Lcom/android/launcher3/util/DisplayController$Info;
    invoke-static {v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v1

    .line 377
    .local v1, "deviceType":I
    nop

    .line 379
    invoke-static {p1}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v2

    .line 378
    invoke-static {p1, p2, v1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 380
    .local v2, "allOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    nop

    .line 381
    invoke-static {v0, v2, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v3

    .line 382
    .local v3, "displayOption":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    invoke-direct {p0, p1, v0, v3, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;I)V

    .line 383
    iget-object v4, v3, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-object v4, v4, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    return-object v4
.end method

.method private initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayInfo"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "displayOption"    # Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .param p4, "deviceType"    # I

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 394
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v5, p3

    iget-object v6, v5, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 395
    .local v6, "closestProfile":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    iget v7, v6, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    iput v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 396
    iget v7, v6, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    iput v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 399
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/config/GridSizeOverrides;->getRows(Landroid/content/Context;)I

    move-result v7

    .line 400
    .local v7, "rowsOverride":I
    if-lez v7, :cond_0

    .line 401
    iput v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 403
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/config/GridSizeOverrides;->getColumns(Landroid/content/Context;)I

    move-result v8

    .line 404
    .local v8, "columnsOverride":I
    if-lez v8, :cond_1

    .line 405
    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 407
    :cond_1
    iget v9, v6, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numSearchContainerColumns:I

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    .line 408
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetdbFile(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    .line 409
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetdefaultLayoutId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 410
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetdemoModeLayoutId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    .line 412
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumFolderRows(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I

    move-result-object v9

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:[I

    .line 413
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumFolderColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I

    move-result-object v9

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:[I

    .line 414
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetfolderStyle(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->folderStyle:I

    .line 416
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetcellStyle(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->cellStyle:I

    .line 418
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetisScalable(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->isScalable:Z

    .line 419
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetdevicePaddingId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    .line 420
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmWorkspaceSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    .line 421
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmWorkspaceSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsTwoPanelId:I

    .line 422
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmAllAppsSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    .line 423
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmAllAppsSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsTwoPanelId:I

    .line 424
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmFolderSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    .line 425
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmFolderSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsTwoPanelId:I

    .line 426
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmHotseatSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    .line 427
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmHotseatSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsTwoPanelId:I

    .line 428
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmWorkspaceCellSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsId:I

    .line 429
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmWorkspaceCellSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsTwoPanelId:I

    .line 430
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmAllAppsCellSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsId:I

    .line 431
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmAllAppsCellSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsTwoPanelId:I

    .line 432
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetmNumAllAppsRowsForCellHeightCalculation(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsRowsForCellHeightCalculation:I

    .line 434
    iput v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->deviceType:I

    .line 436
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetinlineNavButtonsEndSpacing(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineNavButtonsEndSpacing:I

    .line 438
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v9

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/config/IconSizeOverrides;->getScale(Landroid/content/Context;)F

    move-result v12

    invoke-static {v9, v12}, Lcom/android/launcher3/config/IconSizeOverrides;->scaleArray([FF)[F

    move-result-object v9

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    .line 439
    const/4 v10, 0x0

    aget v9, v9, v10

    .line 440
    .local v9, "maxIconSize":F
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_0
    iget-object v12, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    array-length v13, v12

    if-ge v11, v13, :cond_2

    .line 441
    aget v12, v12, v11

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 440
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 443
    .end local v11    # "i":I
    :cond_2
    invoke-static {v9, v4}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v11

    iput v11, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 444
    invoke-direct {v0, v11}, Lcom/android/launcher3/InvariantDeviceProfile;->getLauncherIconDensity(I)I

    move-result v11

    iput v11, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 446
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgettextSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v11

    iput-object v11, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    .line 448
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminCellSize(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v11

    iput-object v11, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    .line 450
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetborderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v11

    iput-object v11, v0, Lcom/android/launcher3/InvariantDeviceProfile;->borderSpaces:[Landroid/graphics/PointF;

    .line 452
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgethorizontalMargin(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v11

    iput-object v11, v0, Lcom/android/launcher3/InvariantDeviceProfile;->horizontalMargin:[F

    .line 454
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v11

    iput v11, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    .line 455
    const/4 v11, 0x1

    if-ne v3, v11, :cond_3

    .line 456
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumDatabaseHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v12

    goto :goto_1

    :cond_3
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v12

    :goto_1
    iput v12, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    .line 457
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgethotseatColumnSpan(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I

    move-result-object v12

    iput-object v12, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    .line 460
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/config/GridSizeOverrides;->getHotseatIcons(Landroid/content/Context;)I

    move-result v12

    .line 461
    .local v12, "hotseatOverride":I
    if-lez v12, :cond_4

    .line 462
    iput v12, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    .line 463
    iput v12, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    .line 466
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgethotseatColumnSpan(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I

    move-result-object v13

    invoke-virtual {v13}, [I->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    .line 467
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    iget-object v14, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    array-length v15, v14

    if-ge v13, v15, :cond_4

    .line 468
    aput v12, v14, v13

    .line 467
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 471
    .end local v13    # "i":I
    :cond_4
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgethotseatBarBottomSpace(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatBarBottomSpace:[F

    .line 472
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgethotseatQsbSpace(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatQsbSpace:[F

    .line 474
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetallAppsStyle(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsStyle:I

    .line 476
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumAllAppsColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    .line 478
    if-ne v3, v11, :cond_5

    .line 479
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumDatabaseAllAppsColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v13

    goto :goto_3

    :cond_5
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumAllAppsColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v13

    :goto_3
    iput v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    .line 481
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetallAppsCellSize(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSize:[Landroid/graphics/PointF;

    .line 482
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetallAppsBorderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    .line 483
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetallAppsIconSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    .line 484
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetallAppsIconTextSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconTextSize:[F

    .line 486
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetinlineQsb(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[Z

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 488
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgettransientTaskbarIconSize(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->transientTaskbarIconSize:[F

    .line 490
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetstartAlignTaskbar(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Z

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile;->startAlignTaskbar:[Z

    .line 494
    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    .line 496
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v13, "localSupportedProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/DeviceProfile;>;"
    new-instance v14, Landroid/graphics/Point;

    iget-object v15, v2, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-direct {v14, v15}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v14, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    .line 498
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 499
    .local v14, "dotRendererCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/icons/DotRenderer;>;"
    iget-object v15, v2, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/android/launcher3/util/WindowBounds;

    .line 500
    .local v10, "bounds":Lcom/android/launcher3/util/WindowBounds;
    move-object/from16 v16, v4

    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .local v16, "metrics":Landroid/util/DisplayMetrics;
    new-instance v4, Lcom/android/launcher3/DeviceProfile$Builder;

    invoke-direct {v4, v1, v0, v2}, Lcom/android/launcher3/DeviceProfile$Builder;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;)V

    if-ne v3, v11, :cond_6

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    .line 501
    :goto_5
    invoke-virtual {v4, v11}, Lcom/android/launcher3/DeviceProfile$Builder;->setIsMultiDisplay(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v4

    .line 502
    invoke-virtual {v4, v10}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v4

    .line 503
    invoke-virtual {v4, v14}, Lcom/android/launcher3/DeviceProfile$Builder;->setDotRendererCache(Landroid/util/SparseArray;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v4

    .line 504
    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 500
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v4, v10, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 508
    .local v4, "displayWidth":I
    iget-object v11, v10, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 509
    .local v11, "displayHeight":I
    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 515
    nop

    .line 514
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v1

    const/high16 v2, 0x44340000    # 720.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 516
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_6

    .line 517
    :cond_7
    invoke-static {v4, v11}, Lcom/android/launcher3/InvariantDeviceProfile;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v1

    :goto_6
    nop

    .line 518
    .local v1, "parallaxFactor":F
    iget-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v4

    mul-float/2addr v5, v1

    .line 519
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 520
    .end local v1    # "parallaxFactor":F
    .end local v4    # "displayWidth":I
    .end local v10    # "bounds":Lcom/android/launcher3/util/WindowBounds;
    .end local v11    # "displayHeight":I
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move/from16 v3, p4

    move-object/from16 v4, v16

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_4

    .line 521
    .end local v16    # "metrics":Landroid/util/DisplayMetrics;
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    :cond_8
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 523
    nop

    .line 524
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda4;-><init>()V

    .line 525
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda5;-><init>()V

    .line 526
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 527
    invoke-interface {v1}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v1

    .line 528
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v1

    .line 530
    .local v1, "numMinShownHotseatIconsForTablet":I
    iget-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 531
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda6;-><init>()V

    .line 532
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda7;-><init>(I)V

    .line 533
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 537
    return-void
.end method

.method private static invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 13
    .param p0, "displayInfo"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p2, "deviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/DisplayController$Info;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;",
            ">;I)",
            "Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;"
        }
    .end annotation

    .line 719
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    const v0, 0x7fffffff

    .line 720
    .local v0, "minWidthPx":I
    const v1, 0x7fffffff

    .line 721
    .local v1, "minHeightPx":I
    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/WindowBounds;

    .line 722
    .local v3, "bounds":Lcom/android/launcher3/util/WindowBounds;
    invoke-virtual {p0, v3}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v4

    .line 723
    .local v4, "isTablet":Z
    if-eqz v4, :cond_0

    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 725
    iget-object v5, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 726
    iget-object v5, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 728
    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/util/WindowBounds;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 730
    iget-object v5, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 731
    iget-object v5, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 733
    :cond_1
    iget-object v5, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 734
    iget-object v5, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 736
    .end local v3    # "bounds":Lcom/android/launcher3/util/WindowBounds;
    .end local v4    # "isTablet":Z
    :goto_1
    goto :goto_0

    .line 738
    :cond_2
    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v2

    .line 739
    .local v2, "width":F
    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v3

    .line 742
    .local v3, "height":F
    new-instance v4, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v3}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda2;-><init>(FF)V

    invoke-static {p1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 746
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 747
    .local v4, "closestPoint":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    iget-object v5, v4, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 748
    .local v5, "closestOption":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    const/4 v6, 0x0

    .line 750
    .local v6, "weights":F
    invoke-static {v4}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminWidthDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v7

    invoke-static {v4}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminHeightDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v8

    invoke-static {v2, v3, v7, v8}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    .line 751
    return-object v4

    .line 754
    :cond_3
    new-instance v7, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-direct {v7, v5}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    .line 755
    .local v7, "out":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    int-to-float v9, v8

    const/high16 v10, 0x40400000    # 3.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    .line 756
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 757
    .local v9, "p":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    invoke-static {v9}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminWidthDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v10

    invoke-static {v9}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminHeightDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v11

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {v2, v3, v10, v11, v12}, Lcom/android/launcher3/InvariantDeviceProfile;->weight(FFFFF)F

    move-result v10

    .line 758
    .local v10, "w":F
    add-float/2addr v6, v10

    .line 759
    new-instance v11, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-direct {v11}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>()V

    invoke-static {v11, v9}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$madd(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$mmultiply(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$madd(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 755
    .end local v9    # "p":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .end local v10    # "w":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 761
    .end local v8    # "i":I
    :cond_4
    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v6

    invoke-static {v7, v8}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$mmultiply(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 765
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    const/4 v9, 0x4

    if-ge v8, v9, :cond_5

    .line 766
    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v9

    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v10

    aget v10, v10, v8

    invoke-static {v4}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v11

    aget v11, v11, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    aput v10, v9, v8

    .line 765
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 769
    .end local v8    # "i":I
    :cond_5
    return-object v7
.end method

.method static synthetic lambda$getDeviceType$2(Lcom/android/launcher3/util/DisplayController$Info;IILcom/android/launcher3/util/WindowBounds;)I
    .locals 1
    .param p0, "displayInfo"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p1, "flagTablet"    # I
    .param p2, "flagPhone"    # I
    .param p3, "bounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 346
    invoke-virtual {p0, p3}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method static synthetic lambda$getDeviceType$3(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 347
    or-int v0, p0, p1

    return v0
.end method

.method static synthetic lambda$initGrid$4(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 525
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    return v0
.end method

.method static synthetic lambda$initGrid$5(Lcom/android/launcher3/DeviceProfile;)I
    .locals 1
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 526
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    return v0
.end method

.method static synthetic lambda$initGrid$6(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 532
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    return v0
.end method

.method static synthetic lambda$initGrid$7(ILcom/android/launcher3/DeviceProfile;)V
    .locals 0
    .param p0, "numMinShownHotseatIconsForTablet"    # I
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 534
    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    .line 535
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->recalculateHotseatWidthAndBorderSpace()V

    .line 536
    return-void
.end method

.method static synthetic lambda$invDistWeightedInterpolate$10(FFLcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)I
    .locals 3
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "a"    # Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .param p3, "b"    # Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 743
    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminWidthDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v0

    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminHeightDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v0

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminWidthDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminHeightDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v2

    .line 744
    invoke-static {p0, p1, v1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v1

    .line 743
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 247
    new-instance v0, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    .line 248
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1
    .param p1, "displayContext"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 252
    and-int/lit8 v0, p3, 0x3c

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;)V

    .line 256
    :cond_0
    return-void
.end method

.method private synthetic lambda$parseAllGridOptions$9(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z
    .locals 1
    .param p1, "go"    # Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 634
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->deviceType:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$setCurrentGrid$8(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 550
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;)V

    return-void
.end method

.method public static parseAllDefinedGridOptions(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/InvariantDeviceProfile$GridOption;",
            ">;"
        }
    .end annotation

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/InvariantDeviceProfile$GridOption;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$xml;->device_profiles:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 647
    .local v2, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 648
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_2

    :cond_1
    const/4 v3, 0x1

    if-eq v4, v3, :cond_2

    .line 649
    const/4 v3, 0x2

    if-ne v4, v3, :cond_0

    const-string v3, "grid-option"

    .line 650
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 654
    .end local v2    # "depth":I
    .end local v4    # "type":I
    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 657
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_3
    nop

    .line 658
    return-object v0

    .line 644
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/InvariantDeviceProfile$GridOption;>;"
    .end local p0    # "context":Landroid/content/Context;
    :cond_4
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 654
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/InvariantDeviceProfile$GridOption;>;"
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 655
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const-string v2, "IDP"

    const-string v3, "Error parsing device profile"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private toModelState()[Ljava/lang/Object;
    .locals 9

    .line 554
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 555
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 556
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 554
    return-object v0
.end method

.method private static wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 813
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 820
    .local v0, "aspectRatio":F
    const v1, 0x3fcccccd    # 1.6f

    .line 821
    .local v1, "ASPECT_RATIO_LANDSCAPE":F
    const/high16 v2, 0x3f200000    # 0.625f

    .line 822
    .local v2, "ASPECT_RATIO_PORTRAIT":F
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 823
    .local v3, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE":F
    const v4, 0x3f99999a    # 1.2f

    .line 830
    .local v4, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT":F
    const v5, 0x3e9d89d7

    .line 834
    .local v5, "x":F
    const v6, 0x3f80fc10

    .line 835
    .local v6, "y":F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v0

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method

.method private static weight(FFFFF)F
    .locals 5
    .param p0, "x0"    # F
    .param p1, "y0"    # F
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "pow"    # F

    .line 801
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v0

    .line 802
    .local v0, "d":F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 803
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    return v1

    .line 805
    :cond_0
    float-to-double v1, v0

    float-to-double v3, p4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v3, v1

    double-to-float v1, v3

    return v1
.end method


# virtual methods
.method public addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;

    .line 540
    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    return-void
.end method

.method public getBestMatch(FFI)Lcom/android/launcher3/DeviceProfile;
    .locals 6
    .param p1, "screenWidth"    # F
    .param p2, "screenHeight"    # F
    .param p3, "rotation"    # I

    .line 784
    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DeviceProfile;

    .line 785
    .local v0, "bestMatch":Lcom/android/launcher3/DeviceProfile;
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 787
    .local v1, "minDiff":F
    iget-object v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/DeviceProfile;

    .line 788
    .local v3, "profile":Lcom/android/launcher3/DeviceProfile;
    iget v4, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v5, v5

    sub-float/2addr v5, p2

    .line 789
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    .line 790
    .local v4, "diff":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    .line 791
    move v1, v4

    .line 792
    move-object v0, v3

    goto :goto_1

    .line 793
    :cond_0
    cmpl-float v5, v4, v1

    if-nez v5, :cond_1

    iget v5, v3, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    if-ne v5, p3, :cond_1

    .line 794
    move-object v0, v3

    .line 796
    .end local v3    # "profile":Lcom/android/launcher3/DeviceProfile;
    .end local v4    # "diff":F
    :cond_1
    :goto_1
    goto :goto_0

    .line 797
    :cond_2
    return-object v0
.end method

.method public getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 773
    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    .line 774
    .local v0, "windowManagerProxy":Lcom/android/launcher3/util/window/WindowManagerProxy;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getCurrentBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 775
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRotation(Landroid/content/Context;)I

    move-result v2

    .line 777
    .local v2, "rotation":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getBestMatch(FFI)Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    return-object v3
.end method

.method public onConfigChanged(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 562
    invoke-direct {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->toModelState()[Ljava/lang/Object;

    move-result-object v0

    .line 565
    .local v0, "oldState":[Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "gridName":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 568
    invoke-direct {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->toModelState()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 569
    .local v2, "modelPropsChanged":Z
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;

    .line 570
    .local v4, "listener":Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;
    invoke-interface {v4, v2}, Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;->onIdpChanged(Z)V

    .line 571
    .end local v4    # "listener":Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;
    goto :goto_0

    .line 572
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 360
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "pref_allapps_themed_icons"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "pref_drawer_show_labels"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "pref_desktop_show_labels"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 364
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;)V

    .line 367
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5215003e -> :sswitch_2
        0x2523c4cf -> :sswitch_1
        0x61f9c35e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public parseAllGridOptions(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/InvariantDeviceProfile$GridOption;",
            ">;"
        }
    .end annotation

    .line 632
    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->parseAllDefinedGridOptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 633
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 634
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 635
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 632
    return-object v0
.end method

.method public reinitializeAfterRestore(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 316
    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "currentGridName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    .line 318
    .local v1, "currentDbFile":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "newGridName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    .line 320
    .local v3, "newDbFile":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reinitializing grid after restore. currentGridName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentDbFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newGridName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newDbFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IDP"

    invoke-static {v5, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored grid is disabled : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", migrating to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", removing all other grid db files"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v4, Lcom/android/launcher3/LauncherFiles;->GRID_DB_FILES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 330
    .local v6, "gridDbFile":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 331
    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p1, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed old grid db file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v6    # "gridDbFile":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->setCurrentGrid(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    :cond_3
    return-void
.end method

.method public removeOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;

    .line 544
    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 545
    return-void
.end method

.method public setCurrentGrid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridName"    # Ljava/lang/String;

    .line 549
    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->GRID_NAME:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    .line 550
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 551
    return-void
.end method
