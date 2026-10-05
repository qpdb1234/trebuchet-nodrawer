.class public Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# static fields
.field public static final CUSTOM_WIDGET_ID:I = -0x64

.field public static final FEATURE_MAX_SIZE:I = 0x20

.field public static final FEATURE_MIN_SIZE:I = 0x10

.field public static final FEATURE_OPTIONAL_CONFIGURATION:I = 0x2

.field public static final FEATURE_PREVIEW_LAYOUT:I = 0x4

.field public static final FEATURE_RECONFIGURABLE:I = 0x1

.field public static final FEATURE_ROUNDED_CORNERS:I = 0x40

.field public static final FEATURE_TARGET_CELL_SIZE:I = 0x8

.field public static final FLAG_DIRECT_CONFIG:I = 0x20

.field public static final FLAG_ID_ALLOCATED:I = 0x10

.field public static final FLAG_ID_NOT_VALID:I = 0x1

.field public static final FLAG_PROVIDER_NOT_READY:I = 0x2

.field public static final FLAG_RESTORE_STARTED:I = 0x8

.field public static final FLAG_UI_NOT_READY:I = 0x4

.field public static final NO_ID:I = -0x1

.field public static final OPTION_SEARCH_WIDGET:I = 0x1

.field public static final RESTORE_COMPLETED:I


# instance fields
.field public appWidgetId:I

.field public bindOptions:Landroid/content/Intent;

.field public installProgress:I

.field public options:I

.field public pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

.field public providerName:Landroid/content/ComponentName;

.field public restoreStatus:I

.field public sourceContainer:I

.field private widgetFeatures:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    .line 121
    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    .line 147
    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    .line 177
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->itemType:I

    .line 178
    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "providerName"    # Landroid/content/ComponentName;

    .line 149
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    .line 121
    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    .line 147
    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    .line 150
    iput p1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    .line 151
    iput-object p2, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->itemType:I

    goto :goto_0

    .line 156
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->itemType:I

    .line 161
    :goto_0
    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    .line 162
    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 163
    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->widgetFeatures:I

    .line 165
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 167
    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "providerName"    # Landroid/content/ComponentName;
    .param p3, "providerInfo"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p4, "hostView"    # Landroid/appwidget/AppWidgetHostView;

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 172
    invoke-static {p3, p4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->computeWidgetFeatures(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->widgetFeatures:I

    .line 173
    return-void
.end method

.method private static computeWidgetFeatures(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)I
    .locals 2
    .param p0, "providerInfo"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "widgetFeatures":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    or-int/lit8 v0, v0, 0x1

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isConfigurationOptional()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    or-int/lit8 v0, v0, 0x2

    .line 236
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->previewLayout:I

    if-eqz v1, :cond_2

    .line 237
    or-int/lit8 v0, v0, 0x4

    .line 239
    :cond_2
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellWidth:I

    if-gtz v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellHeight:I

    if-lez v1, :cond_5

    .line 240
    :cond_4
    or-int/lit8 v0, v0, 0x8

    .line 242
    :cond_5
    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    if-gtz v1, :cond_6

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    if-lez v1, :cond_7

    .line 243
    :cond_6
    or-int/lit8 v0, v0, 0x10

    .line 245
    :cond_7
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeWidth:I

    if-gtz v1, :cond_9

    :cond_8
    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeHeight:I

    if-lez v1, :cond_a

    .line 246
    :cond_9
    or-int/lit8 v0, v0, 0x20

    .line 248
    :cond_a
    instance-of v1, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_b

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 249
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->hasEnforcedCornerRadius()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 250
    or-int/lit8 v0, v0, 0x40

    .line 252
    :cond_b
    return v0
.end method

.method public static getAttribute(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;
    .locals 1
    .param p0, "container"    # I

    .line 256
    sparse-switch p0, :sswitch_data_0

    .line 268
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->UNKNOWN:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    return-object v0

    .line 266
    :sswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->ALL_APPS_SEARCH_RESULT_WIDGETS:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    return-object v0

    .line 258
    :sswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->WIDGETS:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    return-object v0

    .line 264
    :sswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->WIDGETS_TRAY_PREDICTION:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    return-object v0

    .line 260
    :sswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->WIDGETS_BOTTOM_TRAY:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    return-object v0

    .line 262
    :sswitch_4
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->PINITEM:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71 -> :sswitch_4
        -0x70 -> :sswitch_3
        -0x6f -> :sswitch_2
        -0x69 -> :sswitch_1
        -0x68 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 4
    .param p1, "folderInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 275
    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    .line 276
    .local v0, "info":Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 277
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    iget v3, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->widgetFeatures:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->setWidgetFeatures(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    .line 278
    invoke-static {v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->getAttribute(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->addItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$Attribute;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 276
    return-object v1
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " providerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appWidgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final hasOptionFlag(I)Z
    .locals 1
    .param p1, "option"    # I

    .line 223
    iget v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasRestoreFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 214
    iget v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCustomWidget()Z
    .locals 2

    .line 181
    iget v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v1, -0x64

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isWidgetIdAllocated()Z
    .locals 2

    .line 209
    iget v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3
    .param p1, "writer"    # Lcom/android/launcher3/util/ContentWriter;

    .line 192
    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 193
    iget v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 194
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appWidgetProvider"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->options:I

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 197
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appWidgetSource"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 199
    return-void
.end method
