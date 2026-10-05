.class public final Lcom/android/launcher3/widget/WidgetInflater;
.super Ljava/lang/Object;
.source "WidgetInflater.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/WidgetInflater$Companion;,
        Lcom/android/launcher3/widget/WidgetInflater$InflationResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\u000cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/android/launcher3/widget/WidgetInflater;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "widgetHelper",
        "Lcom/android/launcher3/widget/WidgetManagerHelper;",
        "inflateAppWidget",
        "Lcom/android/launcher3/widget/WidgetInflater$InflationResult;",
        "item",
        "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
        "Companion",
        "InflationResult",
        "Trebuchet_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/widget/WidgetInflater$Companion;

.field public static final TYPE_DELETE:I = 0x0

.field public static final TYPE_PENDING:I = 0x1

.field public static final TYPE_REAL:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;

.field private final widgetHelper:Lcom/android/launcher3/widget/WidgetManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/widget/WidgetInflater$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetInflater$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/widget/WidgetInflater;->Companion:Lcom/android/launcher3/widget/WidgetInflater$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetInflater;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetInflater;->widgetHelper:Lcom/android/launcher3/widget/WidgetManagerHelper;

    .line 29
    return-void
.end method


# virtual methods
.method public final inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Lcom/android/launcher3/widget/WidgetInflater$InflationResult;
    .locals 17
    .param p1, "item"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasOptionFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    iget-object v3, v0, Lcom/android/launcher3/widget/WidgetInflater;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 38
    iget-object v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    .line 39
    new-instance v2, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;

    .line 40
    const/4 v5, 0x0

    .line 41
    const-string v6, "search widget removed because search component cannot be found"

    .line 42
    const-string v7, "no_search_widget"

    .line 39
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 46
    :cond_0
    sget-object v3, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, v0, Lcom/android/launcher3/widget/WidgetInflater;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isSafeModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    new-instance v2, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    const/4 v11, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 50
    .local v3, "appWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    const-string v4, ""

    .line 51
    .local v4, "removalReason":Ljava/lang/String;
    const-string v5, "app_not_installed"

    .line 52
    .local v5, "logReason":Ljava/lang/String;
    const/4 v6, 0x0

    .line 54
    .local v6, "update":Z
    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_3

    .line 56
    iget-object v7, v0, Lcom/android/launcher3/widget/WidgetInflater;->widgetHelper:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v10, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v9, v10}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    .line 57
    if-nez v3, :cond_2

    .line 58
    nop

    .line 62
    const-string v4, "WidgetManagerHelper cannot find a provider from provider info."

    .line 63
    const-string v5, "missing_widget_provider"

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v1, v8}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 67
    nop

    .line 68
    iget v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v7, v7, -0x3

    .line 67
    iput v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 69
    const/4 v6, 0x1

    goto :goto_0

    .line 73
    :cond_3
    iget-object v7, v0, Lcom/android/launcher3/widget/WidgetInflater;->widgetHelper:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(ILandroid/content/ComponentName;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v7

    .line 72
    move-object v3, v7

    .line 74
    if-nez v3, :cond_5

    .line 75
    iget v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v9, -0x64

    if-gt v7, v9, :cond_4

    .line 76
    const-string v4, "CustomWidgetManager cannot find provider from that widget id."

    .line 77
    const-string v5, "missing_information_when_loading"

    goto :goto_0

    .line 80
    :cond_4
    nop

    .line 79
    const-string v7, "AppWidgetManager cannot find provider for that widget id. It could be because AppWidgetService is not available, or the appWidgetId has not been bound to a the provider yet, or you don\'t have access to that appWidgetId."

    move-object v4, v7

    .line 84
    const-string v5, "invalid_widget_id"

    .line 90
    :cond_5
    :goto_0
    nop

    .line 91
    invoke-virtual {v1, v8}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-nez v7, :cond_e

    .line 92
    iget v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v7, :cond_e

    .line 94
    if-nez v3, :cond_6

    .line 95
    new-instance v2, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;

    .line 96
    const/4 v10, 0x0

    .line 98
    iget v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v8, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing restored widget: id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " belongs to component "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", as the provider is null and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 99
    nop

    .line 95
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x18

    const/16 v16, 0x0

    move-object v9, v2

    move-object v12, v5

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 104
    :cond_6
    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-eqz v2, :cond_c

    .line 105
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v9

    if-nez v9, :cond_e

    .line 107
    iget-object v9, v0, Lcom/android/launcher3/widget/WidgetInflater;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v9

    .local v9, "it":Lcom/android/launcher3/widget/LauncherWidgetHolder;
    const/4 v10, 0x0

    .line 108
    .local v10, "$i$a$-let-WidgetInflater$inflateAppWidget$1":I
    invoke-virtual {v9}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->allocateAppWidgetId()I

    move-result v11

    iput v11, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    .line 109
    invoke-virtual {v9}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    .line 110
    nop

    .line 107
    .end local v9    # "it":Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .end local v10    # "$i$a$-let-WidgetInflater$inflateAppWidget$1":I
    nop

    .line 111
    nop

    .line 112
    iget v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v2, v9

    .line 111
    iput v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 116
    new-instance v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    invoke-direct {v2, v3, v9}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    .line 117
    .local v2, "pendingInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    iget v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iput v9, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 118
    iget v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    iput v9, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 119
    iget v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanX:I

    iput v9, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 120
    iget v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanY:I

    iput v9, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 121
    iget-object v9, v0, Lcom/android/launcher3/widget/WidgetInflater;->context:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v9

    .line 123
    .local v9, "options":Landroid/os/Bundle;
    const/16 v10, 0x20

    invoke-virtual {v1, v10}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v10

    .line 122
    nop

    .line 124
    .local v10, "isDirectConfig":Z
    if-eqz v10, :cond_8

    iget-object v11, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    if-eqz v11, :cond_8

    .line 125
    iget-object v11, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 126
    .local v11, "newOptions":Landroid/os/Bundle;
    if-eqz v9, :cond_7

    .line 127
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 129
    :cond_7
    move-object v9, v11

    .line 132
    .end local v11    # "newOptions":Landroid/os/Bundle;
    :cond_8
    iget-object v11, v0, Lcom/android/launcher3/widget/WidgetInflater;->widgetHelper:Lcom/android/launcher3/widget/WidgetManagerHelper;

    .line 133
    iget v12, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    .line 134
    move-object v13, v3

    check-cast v13, Landroid/appwidget/AppWidgetProviderInfo;

    .line 135
    nop

    .line 132
    invoke-virtual {v11, v12, v13, v9}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v11

    .line 131
    nop

    .line 141
    .local v11, "success":Z
    const/4 v12, 0x0

    iput-object v12, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 142
    nop

    .line 143
    iget v12, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v12, v12, -0x21

    .line 142
    iput v12, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 146
    if-eqz v11, :cond_b

    .line 149
    nop

    .line 150
    iget-object v12, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v12, :cond_a

    if-eqz v10, :cond_9

    goto :goto_1

    .line 152
    :cond_9
    move v7, v8

    goto :goto_2

    .line 151
    :cond_a
    :goto_1
    nop

    .line 149
    :goto_2
    iput v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 154
    :cond_b
    const/4 v6, 0x1

    .end local v2    # "pendingInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .end local v9    # "options":Landroid/os/Bundle;
    .end local v10    # "isDirectConfig":Z
    .end local v11    # "success":Z
    goto :goto_3

    .line 157
    :cond_c
    invoke-virtual {v1, v8}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 158
    iget-object v2, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v2, :cond_d

    .line 162
    iput v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 163
    const/4 v6, 0x1

    goto :goto_3

    .line 165
    :cond_d
    invoke-virtual {v1, v8}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 166
    iget-object v2, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_e

    .line 168
    iget-object v2, v0, Lcom/android/launcher3/widget/WidgetInflater;->widgetHelper:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v8, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v8}, Lcom/android/launcher3/widget/WidgetManagerHelper;->isAppWidgetRestored(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 169
    iput v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 170
    const/4 v6, 0x1

    .line 175
    :cond_e
    :goto_3
    iget v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v2, :cond_10

    .line 177
    if-nez v3, :cond_f

    .line 178
    iget v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing invalid widget: id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "Launcher"

    invoke-static {v7, v2}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v2, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1c

    const/16 v16, 0x0

    move-object v9, v2

    move-object v11, v4

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 181
    :cond_f
    iget v2, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanX:I

    .line 182
    iget v2, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanY:I

    .line 183
    new-instance v2, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object v9, v2

    move v13, v6

    move-object v14, v3

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 185
    :cond_10
    new-instance v2, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object v9, v2

    move v13, v6

    move-object v14, v3

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
