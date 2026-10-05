.class public Lcom/android/launcher3/model/WidgetsModel;
.super Ljava/lang/Object;
.source "WidgetsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;,
        Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GO_DISABLE_NOTIFICATION_DOTS:Z = false

.field public static final GO_DISABLE_WIDGETS:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetsModel"


# instance fields
.field private final mWidgetsList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$YDX78crJH1-Cf7YyupqQa4DkSzI(Lcom/android/launcher3/model/WidgetsModel;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/stream/Stream;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/WidgetsModel;->lambda$setWidgetsAndShortcuts$4(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    return-void
.end method

.method private getPackageUserKeys(Landroid/content/Context;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/launcher3/model/WidgetItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/model/WidgetItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation

    .line 265
    nop

    .line 266
    invoke-static {p1}, Lcom/android/launcher3/widget/WidgetSections;->getWidgetsToCategory(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 267
    .local v0, "widgetsToCategories":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher3/util/IntSet;>;"
    iget-object v1, p2, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/IntSet;

    .line 268
    .local v1, "categories":Lcom/android/launcher3/util/IntSet;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v2, "packageUserKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/PackageUserKey;>;"
    new-instance v3, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2, p2}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;Lcom/android/launcher3/model/WidgetItem;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/IntSet;->forEach(Ljava/util/function/Consumer;)V

    .line 282
    return-object v2

    .line 269
    .end local v2    # "packageUserKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/PackageUserKey;>;"
    :cond_1
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/util/PackageUserKey;

    new-instance v3, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v4, p2, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    .line 270
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 269
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$getAllWidgetsWithoutShortcuts$1(Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getAllWidgetsWithoutShortcuts$2(Ljava/util/Map;Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List;)V
    .locals 4
    .param p0, "packagesToWidgets"    # Ljava/util/Map;
    .param p1, "packageItemInfo"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p2, "widgetsAndShortcuts"    # Ljava/util/List;

    .line 116
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda6;-><init>()V

    .line 117
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 118
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 119
    .local v0, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 120
    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v2, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-void
.end method

.method static synthetic lambda$getPackageUserKeys$7(Ljava/util/List;Lcom/android/launcher3/model/WidgetItem;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "packageUserKeys"    # Ljava/util/List;
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "category"    # Ljava/lang/Integer;

    .line 274
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 275
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    .line 276
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 275
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(ILandroid/os/UserHandle;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :goto_0
    return-void
.end method

.method static synthetic lambda$getWidgetsListForPicker$0(Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$setWidgetsAndShortcuts$3(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/util/PackageUserKey;)Landroid/util/Pair;
    .locals 2
    .param p0, "packageItemInfoCache"    # Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;
    .param p1, "widgetItem"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "key"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 198
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->getOrCreate(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private synthetic lambda$setWidgetsAndShortcuts$4(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "packageItemInfoCache"    # Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;
    .param p3, "widgetItem"    # Lcom/android/launcher3/model/WidgetItem;

    .line 197
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/model/WidgetsModel;->getPackageUserKeys(Landroid/content/Context;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2, p3}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;)V

    .line 198
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 197
    return-object v0
.end method

.method static synthetic lambda$setWidgetsAndShortcuts$5(Landroid/util/Pair;)Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 1
    .param p0, "pair"    # Landroid/util/Pair;

    .line 199
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    return-object v0
.end method

.method static synthetic lambda$setWidgetsAndShortcuts$6(Landroid/util/Pair;)Lcom/android/launcher3/model/WidgetItem;
    .locals 1
    .param p0, "pair"    # Landroid/util/Pair;

    .line 199
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/WidgetItem;

    return-object v0
.end method

.method public static newPendingItemInfo(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 251
    nop

    .line 252
    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetSections;->getWidgetsToCategory(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 253
    .local v0, "widgetsToCategories":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher3/util/IntSet;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 255
    .local v1, "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    .line 256
    .local v2, "firstCategory":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 257
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 259
    :cond_0
    new-instance v3, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, p2}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-object v3

    .line 261
    .end local v1    # "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "firstCategory":I
    :cond_1
    new-instance v1, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v1
.end method

.method private declared-synchronized setWidgetsAndShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 6
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "packageUser"    # Lcom/android/launcher3/util/PackageUserKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ")V"
        }
    .end annotation

    .local p1, "rawWidgetsShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;"
    monitor-enter p0

    .line 184
    :try_start_0
    new-instance v0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;-><init>(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache-IA;)V

    .line 186
    .local v0, "packageItemInfoCache":Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;
    if-nez p3, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 191
    .end local p0    # "this":Lcom/android/launcher3/model/WidgetsModel;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->getOrCreate(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;

    invoke-direct {v3, p2}, Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    .line 196
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2, v0}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/WidgetsModel;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;)V

    .line 197
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda3;-><init>()V

    .line 199
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 195
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 202
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    .line 203
    .local v1, "iconCache":Lcom/android/launcher3/icons/IconCache;
    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 204
    .local v3, "p":Lcom/android/launcher3/model/data/PackageItemInfo;
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v3    # "p":Lcom/android/launcher3/model/data/PackageItemInfo;
    goto :goto_1

    .line 206
    :cond_1
    monitor-exit p0

    return-void

    .line 183
    .end local v0    # "packageItemInfoCache":Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;
    .end local v1    # "iconCache":Lcom/android/launcher3/icons/IconCache;
    .end local p1    # "rawWidgetsShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local p2    # "app":Lcom/android/launcher3/LauncherAppState;
    .end local p3    # "packageUser":Lcom/android/launcher3/util/PackageUserKey;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getAllWidgetsWithoutShortcuts()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v0, "packagesToWidgets":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    new-instance v2, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-object v0

    .line 113
    .end local v0    # "packagesToWidgets":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    .end local p0    # "this":Lcom/android/launcher3/model/WidgetsModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFilteredWidgetsListForPicker(Landroid/content/Context;Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    .local p2, "widgetItemFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/WidgetItem;>;"
    monitor-enter p0

    .line 82
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    new-instance v1, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-direct {v1, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    .line 85
    .local v1, "indexer":Lcom/android/launcher3/compat/AlphabeticIndexCompat;
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 86
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 87
    .local v4, "pkgItem":Lcom/android/launcher3/model/data/PackageItemInfo;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 88
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    .line 89
    invoke-interface {v5, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v5

    .line 90
    .local v5, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 91
    iget-object v6, v4, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v6, :cond_0

    const-string v6, ""

    goto :goto_1

    .line 92
    .end local p0    # "this":Lcom/android/launcher3/model/WidgetsModel;
    :cond_0
    iget-object v6, v4, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    nop

    .line 93
    .local v6, "sectionName":Ljava/lang/String;
    invoke-static {v4, v6, v5}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->create(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v7, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    invoke-direct {v7, v4, v6, v5}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    .end local v4    # "pkgItem":Lcom/android/launcher3/model/data/PackageItemInfo;
    .end local v5    # "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v6    # "sectionName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 97
    :cond_2
    monitor-exit p0

    return-object v0

    .line 81
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    .end local v1    # "indexer":Lcom/android/launcher3/compat/AlphabeticIndexCompat;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "widgetItemFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/WidgetItem;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/WidgetItem;
    .locals 5
    .param p1, "providerName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    new-instance v1, Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 235
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 234
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 236
    .local v0, "widgetsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    return-object v1

    .line 240
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/WidgetItem;

    .line 241
    .local v3, "item":Lcom/android/launcher3/model/WidgetItem;
    iget-object v4, v3, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    return-object v3

    .line 244
    .end local v3    # "item":Lcom/android/launcher3/model/WidgetItem;
    :cond_1
    goto :goto_0

    .line 245
    :cond_2
    return-object v1
.end method

.method public declared-synchronized getWidgetsListForPicker(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 109
    :try_start_0
    new-instance v0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/WidgetsModel;->getFilteredWidgetsListForPicker(Landroid/content/Context;Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 109
    .end local p0    # "this":Lcom/android/launcher3/model/WidgetsModel;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPackageIconsUpdated(Ljava/util/Set;Landroid/os/UserHandle;Lcom/android/launcher3/LauncherAppState;)V
    .locals 16
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "app"    # Lcom/android/launcher3/LauncherAppState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "Lcom/android/launcher3/LauncherAppState;",
            ")V"
        }
    .end annotation

    .line 210
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    .line 211
    .local v5, "widgetManager":Lcom/android/launcher3/widget/WidgetManagerHelper;
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    .line 212
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v9, p1

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 214
    .local v10, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 215
    .local v11, "count":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_2

    .line 216
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/launcher3/model/WidgetItem;

    .line 217
    .local v13, "item":Lcom/android/launcher3/model/WidgetItem;
    iget-object v0, v13, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    move-object/from16 v14, p2

    invoke-virtual {v0, v14}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, v13, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/android/launcher3/model/WidgetItem;

    iget-object v1, v13, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    .line 220
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;Lcom/android/launcher3/icons/IconCache;Landroid/content/pm/PackageManager;)V

    .line 219
    invoke-interface {v10, v12, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 222
    :cond_0
    new-instance v15, Lcom/android/launcher3/model/WidgetItem;

    iget-object v1, v13, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 223
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    .line 224
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;Landroid/content/Context;Lcom/android/launcher3/widget/WidgetManagerHelper;)V

    .line 222
    invoke-interface {v10, v12, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v13    # "item":Lcom/android/launcher3/model/WidgetItem;
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v14, p2

    goto :goto_3

    .line 212
    .end local v10    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v11    # "count":I
    .end local v12    # "i":I
    :cond_3
    move-object/from16 v14, p2

    .line 229
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    :goto_3
    goto :goto_0

    .line 230
    :cond_4
    move-object/from16 v9, p1

    move-object/from16 v14, p2

    return-void
.end method

.method public update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 16
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "packageUser"    # Lcom/android/launcher3/util/PackageUserKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;",
            ">;"
        }
    .end annotation

    .line 134
    move-object/from16 v1, p2

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 137
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 138
    .local v3, "widgetsAndShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 140
    .local v4, "updatedItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v7

    .line 141
    .local v7, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 144
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v5, v2}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    move-object v11, v5

    .line 145
    .local v11, "widgetManager":Lcom/android/launcher3/widget/WidgetManagerHelper;
    invoke-virtual {v11, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    move-object v13, v5

    .line 146
    .local v13, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    nop

    .line 147
    invoke-static {v2, v13}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v5

    move-object v14, v5

    .line 149
    .local v14, "launcherWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    new-instance v15, Lcom/android/launcher3/model/WidgetItem;

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v5, v15

    move-object v6, v14

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;Landroid/content/Context;Lcom/android/launcher3/widget/WidgetManagerHelper;)V

    .line 149
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    nop

    .end local v13    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v14    # "launcherWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    goto :goto_0

    .line 157
    :cond_0
    invoke-static {v2, v1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->queryList(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 158
    .local v6, "info":Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    new-instance v8, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v9

    invoke-direct {v8, v6, v9, v0}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;Lcom/android/launcher3/icons/IconCache;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    nop

    .end local v6    # "info":Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    goto :goto_1

    .line 161
    :cond_1
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    :try_start_1
    invoke-direct {v5, v3, v6, v1}, Lcom/android/launcher3/model/WidgetsModel;->setWidgetsAndShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local v11    # "widgetManager":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto :goto_3

    .line 162
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v4

    .line 169
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    throw v0
.end method
