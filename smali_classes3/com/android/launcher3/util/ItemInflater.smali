.class public final Lcom/android/launcher3/util/ItemInflater;
.super Ljava/lang/Object;
.source "ItemInflater.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\u00020\u0004B-\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\rH\u0002J\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J&\u0010\u001c\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0018\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\rH\u0007J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00028\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/android/launcher3/util/ItemInflater;",
        "T",
        "Landroid/content/Context;",
        "Lcom/android/launcher3/views/ActivityContext;",
        "",
        "context",
        "widgetHolder",
        "Lcom/android/launcher3/widget/LauncherWidgetHolder;",
        "clickListener",
        "Landroid/view/View$OnClickListener;",
        "focusListener",
        "Landroid/view/View$OnFocusChangeListener;",
        "defaultParent",
        "Landroid/view/ViewGroup;",
        "(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Landroid/view/View$OnClickListener;Landroid/view/View$OnFocusChangeListener;Landroid/view/ViewGroup;)V",
        "Landroid/content/Context;",
        "widgetInflater",
        "Lcom/android/launcher3/widget/WidgetInflater;",
        "createShortcut",
        "Landroid/view/View;",
        "info",
        "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
        "parent",
        "inflateAppWidget",
        "item",
        "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
        "writer",
        "Lcom/android/launcher3/model/ModelWriter;",
        "inflateItem",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "nullableParent",
        "prepareAppWidget",
        "",
        "hostView",
        "Landroid/appwidget/AppWidgetHostView;",
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


# instance fields
.field private final clickListener:Landroid/view/View$OnClickListener;

.field private final context:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final defaultParent:Landroid/view/ViewGroup;

.field private final focusListener:Landroid/view/View$OnFocusChangeListener;

.field private final widgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

.field private final widgetInflater:Lcom/android/launcher3/widget/WidgetInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Landroid/view/View$OnClickListener;Landroid/view/View$OnFocusChangeListener;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetHolder"    # Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "focusListener"    # Landroid/view/View$OnFocusChangeListener;
    .param p5, "defaultParent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/launcher3/widget/LauncherWidgetHolder;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnFocusChangeListener;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultParent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/util/ItemInflater;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/launcher3/util/ItemInflater;->widgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    .line 46
    iput-object p3, p0, Lcom/android/launcher3/util/ItemInflater;->clickListener:Landroid/view/View$OnClickListener;

    .line 47
    iput-object p4, p0, Lcom/android/launcher3/util/ItemInflater;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 48
    iput-object p5, p0, Lcom/android/launcher3/util/ItemInflater;->defaultParent:Landroid/view/ViewGroup;

    .line 51
    new-instance v0, Lcom/android/launcher3/widget/WidgetInflater;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/WidgetInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ItemInflater;->widgetInflater:Lcom/android/launcher3/widget/WidgetInflater;

    .line 43
    return-void
.end method

.method private final createShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->app_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.BubbleTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 102
    nop

    .line 105
    .local v0, "favorite":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 106
    iget-object v1, p0, Lcom/android/launcher3/util/ItemInflater;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/android/launcher3/util/ItemInflater;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 108
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method private final inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/ModelWriter;)Landroid/view/View;
    .locals 7
    .param p1, "item"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p2, "writer"    # Lcom/android/launcher3/model/ModelWriter;

    .line 112
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    iget v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIND_WIDGET_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    .line 113
    nop

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/util/ItemInflater;->widgetInflater:Lcom/android/launcher3/widget/WidgetInflater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetInflater;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Lcom/android/launcher3/widget/WidgetInflater$InflationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;->component1()I

    move-result v1

    .local v1, "type":I
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;->component2()Ljava/lang/String;

    move-result-object v2

    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;->component4()Z

    move-result v3

    .local v3, "isUpdate":Z
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;->component5()Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 115
    .local v0, "widgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    if-nez v1, :cond_0

    .line 116
    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p2, v4, v2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    nop

    .line 129
    .end local v0    # "widgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .end local v1    # "type":I
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "isUpdate":Z
    sget-object v4, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v4}, Lcom/android/launcher3/util/TraceHelper;->endSection()V

    .line 117
    .restart local v0    # "widgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .restart local v1    # "type":I
    .restart local v2    # "reason":Ljava/lang/String;
    .restart local v3    # "isUpdate":Z
    const/4 v4, 0x0

    return-object v4

    .line 119
    :cond_0
    if-eqz v3, :cond_1

    .line 120
    :try_start_1
    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p2, v4}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 123
    :cond_1
    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    .line 125
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/util/ItemInflater;->widgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    iget v5, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v5, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createView(ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    goto :goto_1

    .line 124
    :cond_3
    :goto_0
    new-instance v4, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v5, p0, Lcom/android/launcher3/util/ItemInflater;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/launcher3/util/ItemInflater;->widgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-direct {v4, v5, v6, p1, v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    .line 123
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    nop

    .line 126
    .local v4, "view":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0, v4, p1}, Lcom/android/launcher3/util/ItemInflater;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    .line 127
    move-object v5, v4

    check-cast v5, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v0    # "widgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .end local v1    # "type":I
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "isUpdate":Z
    .end local v4    # "view":Landroid/appwidget/AppWidgetHostView;
    sget-object v6, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v6}, Lcom/android/launcher3/util/TraceHelper;->endSection()V

    .line 127
    .restart local v0    # "widgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .restart local v1    # "type":I
    .restart local v2    # "reason":Ljava/lang/String;
    .restart local v3    # "isUpdate":Z
    .restart local v4    # "view":Landroid/appwidget/AppWidgetHostView;
    return-object v5

    .line 129
    .end local v0    # "widgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .end local v1    # "type":I
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "isUpdate":Z
    .end local v4    # "view":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/TraceHelper;->endSection()V

    throw v0
.end method

.method public static synthetic inflateItem$default(Lcom/android/launcher3/util/ItemInflater;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 54
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/ItemInflater;->inflateItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final inflateItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;)Landroid/view/View;
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/util/ItemInflater;->inflateItem$default(Lcom/android/launcher3/util/ItemInflater;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final inflateItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "writer"    # Lcom/android/launcher3/model/ModelWriter;
    .param p3, "nullableParent"    # Landroid/view/ViewGroup;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/ItemInflater;->defaultParent:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 56
    .local v0, "parent":Landroid/view/ViewGroup;
    :goto_0
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 89
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid Item Type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :pswitch_1
    sget v1, Lcom/android/launcher3/R$layout;->app_pair_icon:I

    .line 82
    iget-object v2, p0, Lcom/android/launcher3/util/ItemInflater;->context:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    .line 83
    nop

    .line 84
    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    .line 80
    invoke-static {v1, v2, v0, v3}, Lcom/android/launcher3/apppairs/AppPairIcon;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/apppairs/AppPairIcon;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 88
    :pswitch_2
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {p0, v1, p2}, Lcom/android/launcher3/util/ItemInflater;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/ModelWriter;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 74
    :pswitch_3
    sget v1, Lcom/android/launcher3/R$layout;->folder_icon:I

    .line 75
    iget-object v2, p0, Lcom/android/launcher3/util/ItemInflater;->context:Landroid/content/Context;

    .line 76
    nop

    .line 77
    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    .line 73
    invoke-static {v1, v2, v0, v3}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 61
    :pswitch_4
    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    iget-object v2, p0, Lcom/android/launcher3/util/ItemInflater;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    goto :goto_1

    .line 64
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 61
    :goto_1
    nop

    .line 60
    nop

    .line 66
    .local v1, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    const/16 v3, -0x66

    if-ne v2, v3, :cond_2

    .line 68
    new-instance v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v2, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move-object v1, v2

    .line 70
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/util/ItemInflater;->createShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public final prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 1
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "item"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const-string v0, "hostView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->setFocusable(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/util/ItemInflater;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    return-void
.end method
