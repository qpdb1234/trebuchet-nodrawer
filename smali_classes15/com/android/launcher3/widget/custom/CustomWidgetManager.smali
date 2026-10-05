.class public Lcom/android/launcher3/widget/custom/CustomWidgetManager;
.super Ljava/lang/Object;
.source "CustomWidgetManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/CustomWidgetPlugin;",
        ">;",
        "Lcom/android/launcher3/util/SafeCloseable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/widget/custom/CustomWidgetManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLUGIN_PKG:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "CustomWidgetManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCustomWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlugins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/plugins/CustomWidgetPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetRefreshCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KTvIvuJBygaYFI3nHoDo6nn7Fjg(Landroid/content/Context;)Lcom/android/launcher3/widget/custom/CustomWidgetManager;
    .locals 1

    new-instance v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/widget/custom/CustomWidgetManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    .line 70
    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v1, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 73
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SMARTSPACE_AS_A_WIDGET:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$array;->custom_widget_providers:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 74
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 77
    .local v5, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 78
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    .line 80
    .local v7, "plugin":Lcom/android/systemui/plugins/CustomWidgetPlugin;
    invoke-virtual {p0, v7, p1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->onPluginConnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "plugin":Lcom/android/systemui/plugins/CustomWidgetPlugin;
    goto :goto_2

    .line 81
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_1

    :catch_4
    move-exception v6

    goto :goto_1

    :catch_5
    move-exception v6

    .line 84
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception found when trying to add custom widgets: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CustomWidgetManager"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method private getWidgetProviderComponent(Lcom/android/systemui/plugins/CustomWidgetPlugin;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/CustomWidgetPlugin;

    .line 165
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#custom-widget-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-object v0
.end method

.method static synthetic lambda$getWidgetProvider$1(Landroid/content/ComponentName;Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;)Z
    .locals 1
    .param p0, "cn"    # Landroid/content/ComponentName;
    .param p1, "w"    # Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    .line 147
    invoke-virtual {p1}, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onPluginDisconnected$0(Landroid/content/ComponentName;Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;)Z
    .locals 1
    .param p0, "cn"    # Landroid/content/ComponentName;
    .param p1, "w"    # Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    .line 113
    invoke-virtual {p1}, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private newInfo(Lcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/os/Parcel;)Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;
    .locals 2
    .param p1, "plugin"    # Lcom/android/systemui/plugins/CustomWidgetPlugin;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 151
    new-instance v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 152
    .local v0, "info":Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->getWidgetProviderComponent(Lcom/android/systemui/plugins/CustomWidgetPlugin;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 153
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->updateWidgetInfo(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/Context;)V

    .line 154
    return-object v0
.end method


# virtual methods
.method public allocateCustomAppWidgetId(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->getWidgetProvider(Landroid/content/ComponentName;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x64

    return v0
.end method

.method public close()V
    .locals 2

    .line 92
    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 93
    return-void
.end method

.method public getWidgetProvider(Landroid/content/ComponentName;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/custom/CustomWidgetManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentName;)V

    .line 147
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 146
    return-object v0
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/content/Context;)V
    .locals 5
    .param p1, "plugin"    # Lcom/android/systemui/plugins/CustomWidgetPlugin;
    .param p2, "context"    # Landroid/content/Context;

    .line 97
    invoke-static {p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 98
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 101
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->newInfo(Lcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/os/Parcel;)Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    move-result-object v2

    .line 104
    .local v2, "info":Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    iget-object v3, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v3, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->onPluginConnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/CustomWidgetPlugin;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->getWidgetProviderComponent(Lcom/android/systemui/plugins/CustomWidgetPlugin;)Landroid/content/ComponentName;

    move-result-object v0

    .line 112
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    new-instance v2, Lcom/android/launcher3/widget/custom/CustomWidgetManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/launcher3/widget/custom/CustomWidgetManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 114
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->onPluginDisconnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;)V

    return-void
.end method

.method public onViewCreated(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .locals 3
    .param p1, "view"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 127
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    .line 128
    .local v0, "info":Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    .line 129
    .local v1, "plugin":Lcom/android/systemui/plugins/CustomWidgetPlugin;
    if-nez v1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->onViewCreated(Landroid/appwidget/AppWidgetHostView;)V

    .line 131
    return-void
.end method

.method public setWidgetRefreshCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "cb":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/launcher3/util/PackageUserKey;>;"
    iput-object p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetRefreshCallback:Ljava/util/function/Consumer;

    .line 121
    return-void
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
