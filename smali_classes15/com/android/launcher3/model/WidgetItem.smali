.class public Lcom/android/launcher3/model/WidgetItem;
.super Lcom/android/launcher3/util/ComponentKey;
.source "WidgetItem.java"


# instance fields
.field public final activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

.field public bitmap:Lcom/android/launcher3/icons/BitmapInfo;

.field public final description:Ljava/lang/CharSequence;

.field public final generatedPreviews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final spanX:I

.field public final spanY:I

.field public final widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;Lcom/android/launcher3/icons/IconCache;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    .param p2, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;

    .line 81
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 39
    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 82
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/launcher3/icons/IconCache;->getTitleNoCache(Lcom/android/launcher3/icons/ComponentWithLabel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->description:Ljava/lang/CharSequence;

    .line 85
    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 86
    iput-object p1, p0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 87
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iput v1, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    .line 88
    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->generatedPreviews:Landroid/util/SparseArray;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;Landroid/content/Context;)V
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p4, "context"    # Landroid/content/Context;

    .line 77
    new-instance v5, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v5, p4}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;Landroid/content/Context;Lcom/android/launcher3/widget/WidgetManagerHelper;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;Landroid/content/Context;Lcom/android/launcher3/widget/WidgetManagerHelper;)V
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "helper"    # Lcom/android/launcher3/widget/WidgetManagerHelper;

    .line 48
    iget-object v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 39
    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 50
    invoke-virtual {p3, p1}, Lcom/android/launcher3/icons/IconCache;->getTitleNoCache(Lcom/android/launcher3/icons/ComponentWithLabel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    .line 51
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->loadDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->description:Ljava/lang/CharSequence;

    .line 52
    iput-object p1, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 53
    iput-object v1, p0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 55
    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    .line 56
    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget v2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    .line 58
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher3/Flags;->enableGeneratedPreviews()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->generatedPreviews:Landroid/util/SparseArray;

    .line 60
    const/4 v0, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    filled-new-array {v3, v0, v2}, [I

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    .line 65
    .local v3, "widgetCategory":I
    iget-object v4, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget v4, v4, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->generatedPreviewCategories:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    .line 66
    iget-object v4, p0, Lcom/android/launcher3/model/WidgetItem;->generatedPreviews:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 67
    invoke-virtual {p5, v5, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;->loadGeneratedPreview(Landroid/appwidget/AppWidgetProviderInfo;I)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 66
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .end local v3    # "widgetCategory":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    :cond_2
    iput-object v1, p0, Lcom/android/launcher3/model/WidgetItem;->generatedPreviews:Landroid/util/SparseArray;

    .line 73
    :cond_3
    return-void
.end method


# virtual methods
.method public hasGeneratedPreview(I)Z
    .locals 1
    .param p1, "widgetCategory"    # I

    .line 123
    invoke-static {}, Lcom/android/launcher3/Flags;->enableGeneratedPreviews()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->generatedPreviews:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    return v0

    .line 124
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPreviewLayout()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->previewLayout:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSameType(Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 2
    .param p1, "otherItem"    # Lcom/android/launcher3/model/WidgetItem;

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 99
    return v1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_1

    .line 102
    return v1

    .line 104
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcut()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
