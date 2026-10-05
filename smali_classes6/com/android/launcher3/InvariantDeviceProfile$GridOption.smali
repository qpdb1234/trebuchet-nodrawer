.class public final Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
.super Ljava/lang/Object;
.source "InvariantDeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/InvariantDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GridOption"
.end annotation


# static fields
.field private static final DEVICE_CATEGORY_ALL:I = 0x7

.field private static final DEVICE_CATEGORY_MULTI_DISPLAY:I = 0x4

.field private static final DEVICE_CATEGORY_PHONE:I = 0x1

.field private static final DEVICE_CATEGORY_TABLET:I = 0x2

.field private static final DONT_INLINE_QSB:I = 0x0

.field private static final INLINE_QSB_FOR_LANDSCAPE:I = 0x2

.field private static final INLINE_QSB_FOR_PORTRAIT:I = 0x1

.field private static final INLINE_QSB_FOR_TWO_PANEL_LANDSCAPE:I = 0x8

.field private static final INLINE_QSB_FOR_TWO_PANEL_PORTRAIT:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "grid-option"


# instance fields
.field private final allAppsStyle:I

.field private final cellStyle:I

.field private final dbFile:Ljava/lang/String;

.field private final defaultLayoutId:I

.field private final demoModeLayoutId:I

.field public final deviceCategory:I

.field private final devicePaddingId:I

.field private final folderStyle:I

.field private final hotseatColumnSpan:[I

.field private inlineNavButtonsEndSpacing:I

.field private final inlineQsb:[Z

.field private final isScalable:Z

.field private final mAllAppsCellSpecsId:I

.field private final mAllAppsCellSpecsTwoPanelId:I

.field private final mAllAppsSpecsId:I

.field private final mAllAppsSpecsTwoPanelId:I

.field private final mFolderSpecsId:I

.field private final mFolderSpecsTwoPanelId:I

.field private final mHotseatSpecsId:I

.field private final mHotseatSpecsTwoPanelId:I

.field private final mNumAllAppsRowsForCellHeightCalculation:I

.field private final mWorkspaceCellSpecsId:I

.field private final mWorkspaceCellSpecsTwoPanelId:I

.field private final mWorkspaceSpecsId:I

.field private final mWorkspaceSpecsTwoPanelId:I

.field public final name:Ljava/lang/String;

.field private final numAllAppsColumns:I

.field public final numColumns:I

.field private final numDatabaseAllAppsColumns:I

.field private final numDatabaseHotseatIcons:I

.field private final numFolderColumns:[I

.field private final numFolderRows:[I

.field private final numHotseatIcons:I

.field public final numRows:I

.field public final numSearchContainerColumns:I


# direct methods
.method static bridge synthetic -$$Nest$fgetallAppsStyle(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->allAppsStyle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcellStyle(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->cellStyle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdbFile(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->dbFile:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdefaultLayoutId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->defaultLayoutId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdemoModeLayoutId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->demoModeLayoutId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdevicePaddingId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->devicePaddingId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfolderStyle(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->folderStyle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethotseatColumnSpan(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->hotseatColumnSpan:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinlineNavButtonsEndSpacing(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineNavButtonsEndSpacing:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinlineQsb(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineQsb:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisScalable(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isScalable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllAppsCellSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsCellSpecsId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllAppsCellSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsCellSpecsTwoPanelId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllAppsSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllAppsSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsTwoPanelId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFolderSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFolderSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsTwoPanelId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHotseatSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHotseatSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsTwoPanelId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumAllAppsRowsForCellHeightCalculation(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mNumAllAppsRowsForCellHeightCalculation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkspaceCellSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceCellSpecsId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkspaceCellSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceCellSpecsTwoPanelId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkspaceSpecsId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkspaceSpecsTwoPanelId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsTwoPanelId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumAllAppsColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numAllAppsColumns:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumDatabaseAllAppsColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseAllAppsColumns:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumDatabaseHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseHotseatIcons:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumFolderColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderColumns:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnumFolderRows(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderRows:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnumHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numHotseatIcons:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderRows:[I

    .line 870
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderColumns:[I

    .line 881
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->hotseatColumnSpan:[I

    .line 883
    new-array v4, v0, [Z

    iput-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineQsb:[Z

    .line 907
    sget-object v5, Lcom/android/launcher3/R$styleable;->GridDisplayOption:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 909
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/android/launcher3/R$styleable;->GridDisplayOption_name:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    .line 910
    sget v6, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numRows:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    .line 911
    sget v8, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numColumns:I

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    .line 912
    sget v9, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numSearchContainerColumns:I

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numSearchContainerColumns:I

    .line 915
    sget v9, Lcom/android/launcher3/R$styleable;->GridDisplayOption_dbFile:I

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->dbFile:Ljava/lang/String;

    .line 916
    sget v9, Lcom/android/launcher3/R$styleable;->GridDisplayOption_defaultLayoutId:I

    invoke-virtual {v5, v9, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->defaultLayoutId:I

    .line 918
    sget v10, Lcom/android/launcher3/R$styleable;->GridDisplayOption_demoModeLayoutId:I

    invoke-virtual {v5, v10, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->demoModeLayoutId:I

    .line 921
    sget v9, Lcom/android/launcher3/R$styleable;->GridDisplayOption_allAppsStyle:I

    sget v10, Lcom/android/launcher3/R$style;->AllAppsStyleDefault:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->allAppsStyle:I

    .line 923
    sget v9, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numAllAppsColumns:I

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numAllAppsColumns:I

    .line 925
    sget v10, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numExtendedAllAppsColumns:I

    const/4 v11, 0x2

    mul-int/2addr v9, v11

    invoke-virtual {v5, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseAllAppsColumns:I

    .line 928
    sget v9, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numHotseatIcons:I

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numHotseatIcons:I

    .line 930
    sget v10, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numExtendedHotseatIcons:I

    mul-int/2addr v9, v11

    invoke-virtual {v5, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseHotseatIcons:I

    .line 933
    sget v9, Lcom/android/launcher3/R$styleable;->GridDisplayOption_hotseatColumnSpan:I

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    aput v9, v3, v7

    .line 935
    sget v9, Lcom/android/launcher3/R$styleable;->GridDisplayOption_hotseatColumnSpanLandscape:I

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/4 v10, 0x1

    aput v9, v3, v10

    .line 937
    sget v9, Lcom/android/launcher3/R$styleable;->GridDisplayOption_hotseatColumnSpanTwoPanelLandscape:I

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/4 v12, 0x3

    aput v9, v3, v12

    .line 940
    sget v9, Lcom/android/launcher3/R$styleable;->GridDisplayOption_hotseatColumnSpanTwoPanelPortrait:I

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    aput v9, v3, v11

    .line 944
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_inlineNavButtonsEndSpacing:I

    sget v9, Lcom/android/launcher3/R$dimen;->taskbar_button_margin_default:I

    .line 945
    invoke-virtual {v5, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineNavButtonsEndSpacing:I

    .line 948
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numFolderRows:I

    invoke-virtual {v5, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aput v3, v1, v7

    .line 950
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numFolderColumns:I

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aput v3, v2, v7

    .line 953
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->enableResponsiveWorkspace()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 954
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numFolderRowsLandscape:I

    aget v8, v1, v7

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aput v3, v1, v10

    .line 957
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numFolderColumnsLandscape:I

    aget v8, v2, v7

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aput v3, v2, v10

    .line 960
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numFolderRowsTwoPanelPortrait:I

    aget v8, v1, v7

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aput v3, v1, v11

    .line 963
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numFolderColumnsTwoPanelPortrait:I

    aget v8, v2, v7

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aput v3, v2, v11

    .line 966
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numFolderRowsTwoPanelLandscape:I

    aget v8, v1, v7

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aput v3, v1, v12

    .line 969
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numFolderColumnsTwoPanelLandscape:I

    aget v3, v2, v7

    invoke-virtual {v5, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aput v1, v2, v12

    goto :goto_0

    .line 973
    :cond_0
    aget v3, v1, v7

    aput v3, v1, v10

    .line 974
    aget v8, v2, v7

    aput v8, v2, v10

    .line 975
    aput v3, v1, v11

    .line 976
    aput v8, v2, v11

    .line 977
    aput v3, v1, v12

    .line 978
    aput v8, v2, v12

    .line 981
    :goto_0
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_folderStyle:I

    const/4 v2, -0x1

    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->folderStyle:I

    .line 984
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_cellStyle:I

    sget v3, Lcom/android/launcher3/R$style;->CellStyleDefault:I

    invoke-virtual {v5, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->cellStyle:I

    .line 987
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_isScalable:I

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isScalable:Z

    .line 989
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_devicePaddingId:I

    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->devicePaddingId:I

    .line 991
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_deviceCategory:I

    const/4 v3, 0x7

    invoke-virtual {v5, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->deviceCategory:I

    .line 994
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->enableResponsiveWorkspace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 995
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_workspaceSpecsId:I

    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsId:I

    .line 997
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_workspaceSpecsTwoPanelId:I

    invoke-virtual {v5, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsTwoPanelId:I

    .line 1000
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_allAppsSpecsId:I

    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsId:I

    .line 1002
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_allAppsSpecsTwoPanelId:I

    invoke-virtual {v5, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsTwoPanelId:I

    .line 1005
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_folderSpecsId:I

    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsId:I

    .line 1007
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_folderSpecsTwoPanelId:I

    invoke-virtual {v5, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsTwoPanelId:I

    .line 1010
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_hotseatSpecsId:I

    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsId:I

    .line 1012
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_hotseatSpecsTwoPanelId:I

    invoke-virtual {v5, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsTwoPanelId:I

    .line 1015
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_workspaceCellSpecsId:I

    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceCellSpecsId:I

    .line 1018
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_workspaceCellSpecsTwoPanelId:I

    invoke-virtual {v5, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceCellSpecsTwoPanelId:I

    .line 1021
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_allAppsCellSpecsId:I

    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsCellSpecsId:I

    .line 1024
    sget v2, Lcom/android/launcher3/R$styleable;->GridDisplayOption_allAppsCellSpecsTwoPanelId:I

    invoke-virtual {v5, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsCellSpecsTwoPanelId:I

    .line 1027
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numAllAppsRowsForCellHeightCalculation:I

    invoke-virtual {v5, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mNumAllAppsRowsForCellHeightCalculation:I

    goto :goto_1

    .line 1031
    :cond_1
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsId:I

    .line 1032
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsTwoPanelId:I

    .line 1033
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsId:I

    .line 1034
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsTwoPanelId:I

    .line 1035
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsId:I

    .line 1036
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsTwoPanelId:I

    .line 1037
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsId:I

    .line 1038
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsTwoPanelId:I

    .line 1039
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceCellSpecsId:I

    .line 1040
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceCellSpecsTwoPanelId:I

    .line 1041
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsCellSpecsId:I

    .line 1042
    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsCellSpecsTwoPanelId:I

    .line 1043
    iput v6, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mNumAllAppsRowsForCellHeightCalculation:I

    .line 1046
    :goto_1
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_inlineQsb:I

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1048
    .local v1, "inlineForRotation":I
    and-int/lit8 v2, v1, 0x1

    if-ne v2, v10, :cond_2

    move v2, v10

    goto :goto_2

    :cond_2
    move v2, v7

    :goto_2
    aput-boolean v2, v4, v7

    .line 1050
    and-int/lit8 v2, v1, 0x2

    if-ne v2, v11, :cond_3

    move v2, v10

    goto :goto_3

    :cond_3
    move v2, v7

    :goto_3
    aput-boolean v2, v4, v10

    .line 1052
    and-int/lit8 v2, v1, 0x4

    if-ne v2, v0, :cond_4

    move v0, v10

    goto :goto_4

    :cond_4
    move v0, v7

    :goto_4
    aput-boolean v0, v4, v11

    .line 1055
    and-int/lit8 v0, v1, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    move v7, v10

    :cond_5
    aput-boolean v7, v4, v12

    .line 1059
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1060
    return-void
.end method


# virtual methods
.method public isEnabled(I)Z
    .locals 4
    .param p1, "deviceType"    # I

    .line 1063
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1072
    return v0

    .line 1067
    :pswitch_0
    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->deviceCategory:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 1069
    :pswitch_1
    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->deviceCategory:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 1065
    :pswitch_2
    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->deviceCategory:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_2

    move v0, v1

    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
