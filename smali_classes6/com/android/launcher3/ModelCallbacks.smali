.class public final Lcom/android/launcher3/ModelCallbacks;
.super Ljava/lang/Object;
.source "ModelCallbacks.kt"

# interfaces
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelCallbacks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelCallbacks.kt\ncom/android/launcher3/ModelCallbacks\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,423:1\n1747#2,3:424\n288#2,2:427\n1855#2,2:429\n819#2:431\n847#2,2:432\n1855#2,2:434\n766#2:436\n857#2,2:437\n1855#2,2:439\n*S KotlinDebug\n*F\n+ 1 ModelCallbacks.kt\ncom/android/launcher3/ModelCallbacks\n*L\n269#1:424,3\n289#1:427,2\n373#1:429,2\n380#1:431\n380#1:432,2\n386#1:434,2\n398#1:436\n398#1:437,2\n399#1:439,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002JA\u0010%\u001a\u00020\"2\u0010\u0010&\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010(\u0018\u00010\'2\u0006\u0010)\u001a\u00020*2\u0018\u0010+\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010-\u0012\u0006\u0012\u0004\u0018\u00010*\u0018\u00010,H\u0017\u00a2\u0006\u0002\u0010.J\u001a\u0010/\u001a\u00020\"2\u0010\u00100\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u000102\u0018\u000101H\u0016J6\u00103\u001a\u00020\"2\u0008\u00104\u001a\u0004\u0018\u00010$2\u0010\u00105\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u000107\u0018\u0001062\u0010\u00108\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u000107\u0018\u000106H\u0016J8\u00109\u001a\u00020\"2.\u0010:\u001a*\u0012\u0006\u0012\u0004\u0018\u00010<\u0012\u0006\u0012\u0004\u0018\u00010*\u0018\u00010;j\u0014\u0012\u0006\u0012\u0004\u0018\u00010<\u0012\u0006\u0012\u0004\u0018\u00010*\u0018\u0001`=H\u0016J\u0012\u0010>\u001a\u00020\"2\u0008\u0010?\u001a\u0004\u0018\u00010(H\u0016J(\u0010@\u001a\u00020\"2\u001e\u0010A\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u000107\u0018\u00010Bj\u000c\u0012\u0006\u0012\u0004\u0018\u000107\u0018\u0001`CH\u0016J\u0010\u0010D\u001a\u00020\"2\u0006\u0010E\u001a\u00020$H\u0016J\u0008\u0010F\u001a\u00020\"H\u0016J\u0010\u0010G\u001a\u00020\"2\u0006\u0010H\u001a\u00020\u0014H\u0016J(\u0010I\u001a\u00020\"2\u001e\u0010J\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010K\u0018\u000106j\u000c\u0012\u0006\u0012\u0004\u0018\u00010K\u0018\u0001`LH\u0016J\u001a\u0010M\u001a\u00020\"2\u0010\u0010N\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u000107\u0018\u00010OH\u0016J\u0018\u0010P\u001a\u00020\"2\u000e\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010R01H\u0016J\u0008\u0010S\u001a\u00020\"H\u0016J\u0010\u0010T\u001a\u00020$2\u0006\u0010E\u001a\u00020$H\u0002J\u0012\u0010U\u001a\u00020\"2\u0008\u0010V\u001a\u0004\u0018\u00010\u0008H\u0016J\u0006\u0010W\u001a\u00020\u0006J\u0018\u0010X\u001a\u0012\u0012\u000c\u0012\n Z*\u0004\u0018\u00010\u00030\u0003\u0018\u00010YH\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010E\u001a\u00020$H\u0016J0\u0010[\u001a\u00020\"2\u0006\u0010\\\u001a\u00020\u00082\u0006\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020^2\u0006\u0010`\u001a\u00020*2\u0006\u0010a\u001a\u00020\u0006H\u0017J\u0008\u0010b\u001a\u00020\"H\u0016J\u0010\u0010c\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010d\u001a\u00020\"H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\n\"\u0004\u0008\u001b\u0010\u000cR\u001a\u0010\u001c\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006e"
    }
    d2 = {
        "Lcom/android/launcher3/ModelCallbacks;",
        "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
        "launcher",
        "Lcom/android/launcher3/Launcher;",
        "(Lcom/android/launcher3/Launcher;)V",
        "isFirstPagePinnedItemEnabled",
        "",
        "pagesToBindSynchronously",
        "Lcom/android/launcher3/util/IntSet;",
        "getPagesToBindSynchronously",
        "()Lcom/android/launcher3/util/IntSet;",
        "setPagesToBindSynchronously",
        "(Lcom/android/launcher3/util/IntSet;)V",
        "pendingExecutor",
        "Lcom/android/launcher3/util/ViewOnDrawExecutor;",
        "getPendingExecutor",
        "()Lcom/android/launcher3/util/ViewOnDrawExecutor;",
        "setPendingExecutor",
        "(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V",
        "stringCache",
        "Lcom/android/launcher3/model/StringCache;",
        "getStringCache",
        "()Lcom/android/launcher3/model/StringCache;",
        "setStringCache",
        "(Lcom/android/launcher3/model/StringCache;)V",
        "synchronouslyBoundPages",
        "getSynchronouslyBoundPages",
        "setSynchronouslyBoundPages",
        "workspaceLoading",
        "getWorkspaceLoading",
        "()Z",
        "setWorkspaceLoading",
        "(Z)V",
        "bindAddScreens",
        "",
        "orderedScreenIdsArg",
        "Lcom/android/launcher3/util/IntArray;",
        "bindAllApplications",
        "apps",
        "",
        "Lcom/android/launcher3/model/data/AppInfo;",
        "flags",
        "",
        "packageUserKeytoUidMap",
        "",
        "Lcom/android/launcher3/util/PackageUserKey;",
        "([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V",
        "bindAllWidgets",
        "allWidgets",
        "",
        "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
        "bindAppsAdded",
        "newScreens",
        "addNotAnimated",
        "Ljava/util/ArrayList;",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "addAnimated",
        "bindDeepShortcutMap",
        "deepShortcutMapCopy",
        "Ljava/util/HashMap;",
        "Lcom/android/launcher3/util/ComponentKey;",
        "Lkotlin/collections/HashMap;",
        "bindIncrementalDownloadProgressUpdated",
        "app",
        "bindRestoreItemsChange",
        "updates",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "bindScreens",
        "orderedScreenIds",
        "bindSmartspaceWidget",
        "bindStringCache",
        "cache",
        "bindWidgetsRestored",
        "widgets",
        "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
        "Lkotlin/collections/ArrayList;",
        "bindWorkspaceComponentsRemoved",
        "matcher",
        "Ljava/util/function/Predicate;",
        "bindWorkspaceItemsChanged",
        "updated",
        "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
        "clearPendingBinds",
        "filterTwoPanelScreenIds",
        "finishBindingItems",
        "pagesBoundFirst",
        "getIsFirstPagePinnedItemEnabled",
        "getItemInflater",
        "Lcom/android/launcher3/util/ItemInflater;",
        "kotlin.jvm.PlatformType",
        "onInitialBindComplete",
        "boundPages",
        "pendingTasks",
        "Lcom/android/launcher3/util/RunnableList;",
        "onCompleteSignal",
        "workspaceItemCount",
        "isBindSync",
        "preAddApps",
        "setIsFirstPagePinnedItemEnabled",
        "startBinding",
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
.field private isFirstPagePinnedItemEnabled:Z

.field private launcher:Lcom/android/launcher3/Launcher;

.field private pagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

.field private pendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

.field private stringCache:Lcom/android/launcher3/model/StringCache;

.field private synchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

.field private workspaceLoading:Z


# direct methods
.method public static synthetic $r8$lambda$L-yjtyLZwrSSoVkwuSKouoG3zU4(Lcom/android/launcher3/ModelCallbacks;Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/ModelCallbacks;->onInitialBindComplete$lambda$1(Lcom/android/launcher3/ModelCallbacks;Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jihba7HNyLnx_9V929ZUeLlJ6ng(Lcom/android/launcher3/ModelCallbacks;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/ModelCallbacks;->onInitialBindComplete$lambda$0(Lcom/android/launcher3/ModelCallbacks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$udcyJzMYk6G88-s1tioxTPpaskg(Lcom/android/launcher3/AbstractFloatingView;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/ModelCallbacks;->preAddApps$lambda$2(Lcom/android/launcher3/AbstractFloatingView;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    .line 33
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->synchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    .line 34
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->pagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ModelCallbacks;->isFirstPagePinnedItemEnabled:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/ModelCallbacks;->workspaceLoading:Z

    .line 31
    return-void
.end method

.method private final bindAddScreens(Lcom/android/launcher3/util/IntArray;)V
    .locals 10
    .param p1, "orderedScreenIdsArg"    # Lcom/android/launcher3/util/IntArray;

    .line 365
    move-object v0, p1

    .line 366
    .local v0, "orderedScreenIds":Lcom/android/launcher3/util/IntArray;
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v1, :cond_2

    .line 367
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-direct {p0, v0}, Lcom/android/launcher3/ModelCallbacks;->filterTwoPanelScreenIds(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    goto :goto_1

    .line 372
    :cond_0
    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    .line 373
    .local v1, "screenIds":Lcom/android/launcher3/util/IntSet;
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 429
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "screenId":I
    const/4 v7, 0x0

    .line 374
    .local v7, "$i$a$-forEach-ModelCallbacks$bindAddScreens$1":I
    iget-object v8, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 375
    nop

    .line 429
    .end local v6    # "screenId":I
    .end local v7    # "$i$a$-forEach-ModelCallbacks$bindAddScreens$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 430
    :cond_1
    nop

    .line 376
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    const-string v3, "getArray(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    .line 379
    .end local v1    # "screenIds":Lcom/android/launcher3/util/IntSet;
    :cond_2
    :goto_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 380
    nop

    .local v1, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 431
    .local v2, "$i$f$filterNot":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 432
    .local v5, "$i$f$filterNotTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    .local v8, "screenId":Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 381
    .local v9, "$i$a$-filterNot-ModelCallbacks$bindAddScreens$2":I
    nop

    .line 432
    .end local v8    # "screenId":Ljava/lang/Integer;
    .end local v9    # "$i$a$-filterNot-ModelCallbacks$bindAddScreens$2":I
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 433
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterNotTo":I
    check-cast v3, Ljava/util/List;

    .line 431
    nop

    .end local v1    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filterNot":I
    check-cast v3, Ljava/lang/Iterable;

    .line 386
    move-object v1, v3

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 434
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    .local v5, "screenId":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 387
    .local v6, "$i$a$-forEach-ModelCallbacks$bindAddScreens$3":I
    iget-object v7, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v7

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(I)V

    .line 388
    nop

    .line 434
    .end local v5    # "screenId":Ljava/lang/Integer;
    .end local v6    # "$i$a$-forEach-ModelCallbacks$bindAddScreens$3":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 435
    :cond_4
    nop

    .line 389
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method private final filterTwoPanelScreenIds(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntArray;
    .locals 12
    .param p1, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 396
    invoke-static {p1}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    .line 397
    .local v0, "screenIds":Lcom/android/launcher3/util/IntSet;
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 398
    nop

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 436
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 437
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v7

    check-cast v9, Ljava/lang/Integer;

    .local v9, "screenId":Ljava/lang/Integer;
    const/4 v10, 0x0

    .line 398
    .local v10, "$i$a$-filter-ModelCallbacks$filterTwoPanelScreenIds$1":I
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    rem-int/lit8 v11, v11, 0x2

    if-ne v11, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 437
    .end local v9    # "screenId":Ljava/lang/Integer;
    .end local v10    # "$i$a$-filter-ModelCallbacks$filterTwoPanelScreenIds$1":I
    :goto_1
    if-eqz v8, :cond_0

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 436
    nop

    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    check-cast v3, Ljava/lang/Iterable;

    .line 399
    move-object v1, v3

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 439
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    .local v5, "screenId":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 400
    .local v6, "$i$a$-forEach-ModelCallbacks$filterTwoPanelScreenIds$2":I
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    .line 402
    iget-object v7, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v7, v9}, Lcom/android/launcher3/Workspace;->containsScreenId(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 403
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 405
    :cond_3
    nop

    .line 439
    .end local v5    # "screenId":Ljava/lang/Integer;
    .end local v6    # "$i$a$-forEach-ModelCallbacks$filterTwoPanelScreenIds$2":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 440
    :cond_4
    nop

    .line 406
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    const-string v2, "getArray(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final onInitialBindComplete$lambda$0(Lcom/android/launcher3/ModelCallbacks;)V
    .locals 2
    .param p0, "this$0"    # Lcom/android/launcher3/ModelCallbacks;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    .line 92
    nop

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdates(I)V

    .line 94
    return-void
.end method

.method private static final onInitialBindComplete$lambda$1(Lcom/android/launcher3/ModelCallbacks;Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 1
    .param p0, "this$0"    # Lcom/android/launcher3/ModelCallbacks;
    .param p1, "it"    # Lcom/android/launcher3/util/ViewOnDrawExecutor;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->pendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->pendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 101
    :cond_0
    return-void
.end method

.method private static final preAddApps$lambda$2(Lcom/android/launcher3/AbstractFloatingView;)V
    .locals 1
    .param p0, "$snackbar"    # Lcom/android/launcher3/AbstractFloatingView;

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method


# virtual methods
.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 3
    .param p1, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "flags"    # I
    .param p3, "packageUserKeytoUidMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldShowTabs()Z

    move-result v0

    .line 180
    .local v0, "hadWorkApps":Z
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    .line 181
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 182
    nop

    .line 183
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldShowTabs()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    check-cast v2, Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 188
    :cond_0
    return-void
.end method

.method public bindAllWidgets(Ljava/util/List;)V
    .locals 1
    .param p1, "allWidgets"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setAllWidgets(Ljava/util/List;)V

    .line 241
    return-void
.end method

.method public bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "newScreens"    # Lcom/android/launcher3/util/IntArray;
    .param p2, "addNotAnimated"    # Ljava/util/ArrayList;
    .param p3, "addAnimated"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 344
    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntArray;->removeAllValues(Lcom/android/launcher3/util/IntArray;)V

    .line 348
    invoke-direct {p0, p1}, Lcom/android/launcher3/ModelCallbacks;->bindAddScreens(Lcom/android/launcher3/util/IntArray;)V

    .line 353
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    move-object v3, p2

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 356
    :cond_3
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v1

    :goto_3
    if-nez v0, :cond_6

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    move-object v3, p3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    .line 362
    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 1
    .param p1, "deepShortcutMapCopy"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setDeepShortcutMap(Ljava/util/HashMap;)V

    .line 196
    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p1, "app"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 200
    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 2
    .param p1, "updates"    # Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/Workspace;->updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V

    .line 225
    return-void
.end method

.method public bindScreens(Lcom/android/launcher3/util/IntArray;)V
    .locals 3
    .param p1, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    const-string v0, "orderedScreenIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    .line 311
    nop

    .line 312
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    .line 310
    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setPauseScroll(ZZ)V

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "firstScreenPosition":I
    nop

    .line 316
    nop

    .line 324
    iget-boolean v1, p0, Lcom/android/launcher3/ModelCallbacks;->isFirstPagePinnedItemEnabled:Z

    if-eqz v1, :cond_0

    .line 325
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->shouldShowFirstPageWidget()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreens()V

    .line 330
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/ModelCallbacks;->bindAddScreens(Lcom/android/launcher3/util/IntArray;)V

    .line 335
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->unlockWallpaperFromDefaultPageOnNextLayout()V

    .line 336
    return-void
.end method

.method public bindSmartspaceWidget()V
    .locals 12

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 280
    nop

    .line 282
    .local v0, "cl":Lcom/android/launcher3/CellLayout;
    sget-object v2, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    .line 284
    .local v2, "spanX":I
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    .line 285
    return-void

    .line 289
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupDataProvider;->getAllWidgets()Ljava/util/List;

    move-result-object v3

    const-string v4, "getAllWidgets(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 427
    .local v4, "$i$f$firstOrNull":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .local v7, "item":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    const/4 v8, 0x0

    .line 290
    .local v8, "$i$a$-firstOrNull-ModelCallbacks$bindSmartspaceWidget$widgetsListBaseEntry$1":I
    iget-object v9, v7, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v9, v9, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.android.launcher"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 427
    .end local v7    # "item":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .end local v8    # "$i$a$-firstOrNull-ModelCallbacks$bindSmartspaceWidget$widgetsListBaseEntry$1":I
    if-eqz v7, :cond_2

    goto :goto_1

    .line 428
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/4 v6, 0x0

    .line 289
    .end local v3    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v6, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    if-nez v6, :cond_4

    .line 292
    return-void

    .line 288
    :cond_4
    move-object v3, v6

    .line 295
    .local v3, "widgetsListBaseEntry":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    new-instance v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 296
    iget-object v5, v3, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/WidgetItem;

    iget-object v5, v5, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 297
    nop

    .line 295
    const/16 v6, -0x64

    invoke-direct {v4, v5, v6}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    .line 294
    nop

    .line 299
    .local v4, "info":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    iget-object v5, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    .line 300
    move-object v6, v4

    check-cast v6, Lcom/android/launcher3/PendingAddItemInfo;

    .line 301
    iget v7, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->container:I

    .line 302
    const/4 v8, 0x0

    .line 303
    filled-new-array {v1, v1}, [I

    move-result-object v9

    .line 304
    iget v10, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 305
    iget v11, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 299
    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    .line 307
    return-void
.end method

.method public bindStringCache(Lcom/android/launcher3/model/StringCache;)V
    .locals 1
    .param p1, "cache"    # Lcom/android/launcher3/model/StringCache;

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iput-object p1, p0, Lcom/android/launcher3/ModelCallbacks;->stringCache:Lcom/android/launcher3/model/StringCache;

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateWorkUI()V

    .line 417
    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "widgets"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V

    .line 204
    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .locals 1
    .param p1, "matcher"    # Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Ljava/util/function/Predicate;)V

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 237
    return-void
.end method

.method public bindWorkspaceItemsChanged(Ljava/util/List;)V
    .locals 2
    .param p1, "updated"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updated"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/Workspace;->updateWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/views/ActivityContext;)V

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 217
    :cond_0
    return-void
.end method

.method public clearPendingBinds()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->pendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->cancel()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 152
    :cond_1
    iput-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->pendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    .line 156
    nop

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdatesSilently(I)V

    .line 158
    return-void
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 7
    .param p1, "pagesBoundFirst"    # Lcom/android/launcher3/util/IntSet;

    .line 120
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "finishBindingItems"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 122
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForRemainingPages()V

    .line 123
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/ModelCallbacks;->workspaceLoading:Z

    .line 124
    iget-object v2, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->processActivityResult()V

    .line 126
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v2

    goto :goto_0

    .line 128
    :cond_0
    const/4 v2, -0x1

    .line 126
    :goto_0
    nop

    .line 125
    nop

    .line 132
    .local v2, "currentPage":I
    iget-object v3, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Lcom/android/launcher3/Workspace;->setCurrentPage(II)V

    .line 133
    new-instance v3, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v3}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/ModelCallbacks;->pagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    .line 136
    iget-object v3, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v3

    .line 137
    sget v4, Lcom/android/launcher3/R$layout;->folder_application:I

    .line 138
    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->numFolderColumns:I

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->numFolderRows:I

    mul-int/2addr v5, v6

    .line 136
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    .line 140
    iget-object v3, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$layout;->folder_page:I

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    .line 141
    sget-object v3, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/util/TraceHelper;->endSection()V

    .line 142
    iget-object v3, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    .line 143
    iget-object v3, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/pageindicators/PageIndicator;

    iget-boolean v4, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    invoke-interface {v3, v1, v4}, Lcom/android/launcher3/pageindicators/PageIndicator;->setPauseScroll(ZZ)V

    .line 144
    return-void
.end method

.method public final getIsFirstPagePinnedItemEnabled()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/android/launcher3/ModelCallbacks;->isFirstPagePinnedItemEnabled:Z

    return v0
.end method

.method public getItemInflater()Lcom/android/launcher3/util/ItemInflater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/ItemInflater<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getItemInflater()Lcom/android/launcher3/util/ItemInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getPagesToBindSynchronously()Lcom/android/launcher3/util/IntSet;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->pagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    return-object v0
.end method

.method public getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .locals 12
    .param p1, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    const-string v0, "orderedScreenIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    nop

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->pagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->pagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    goto :goto_0

    .line 250
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/ModelCallbacks;->workspaceLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->synchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    .line 248
    :goto_0
    nop

    .line 247
    nop

    .line 254
    .local v0, "visibleIds":Lcom/android/launcher3/util/IntSet;
    new-instance v1, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 255
    .local v1, "result":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    return-object v1

    .line 258
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->clone()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    const-string v3, "clone(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .local v2, "actualIds":Lcom/android/launcher3/util/IntArray;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 260
    .local v3, "firstId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v4

    .line 263
    .local v4, "pairId":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 264
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 265
    iget-object v5, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v5, :cond_7

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 266
    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_2

    .line 269
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    const-string v6, "supportedProfiles"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 424
    .local v6, "$i$f$any":I
    instance-of v7, v5, Ljava/util/Collection;

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 425
    :cond_4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/DeviceProfile;

    .local v10, "receiver":Lcom/android/launcher3/DeviceProfile;
    const/4 v11, 0x0

    .local v11, "$i$a$-any-ModelCallbacks$getPagesToBindSynchronously$1":I
    iget-boolean v10, v10, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    .end local v10    # "receiver":Lcom/android/launcher3/DeviceProfile;
    .end local v11    # "$i$a$-any-ModelCallbacks$getPagesToBindSynchronously$1":I
    if-eqz v10, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    .line 426
    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_6
    nop

    .line 269
    .end local v5    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$any":I
    :goto_1
    if-eqz v8, :cond_7

    .line 270
    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 274
    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 276
    :cond_7
    :goto_2
    return-object v1
.end method

.method public final getPendingExecutor()Lcom/android/launcher3/util/ViewOnDrawExecutor;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->pendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    return-object v0
.end method

.method public final getStringCache()Lcom/android/launcher3/model/StringCache;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->stringCache:Lcom/android/launcher3/model/StringCache;

    return-object v0
.end method

.method public final getSynchronouslyBoundPages()Lcom/android/launcher3/util/IntSet;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->synchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    return-object v0
.end method

.method public final getWorkspaceLoading()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/android/launcher3/ModelCallbacks;->workspaceLoading:Z

    return v0
.end method

.method public onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/util/RunnableList;IZ)V
    .locals 2
    .param p1, "boundPages"    # Lcom/android/launcher3/util/IntSet;
    .param p2, "pendingTasks"    # Lcom/android/launcher3/util/RunnableList;
    .param p3, "onCompleteSignal"    # Lcom/android/launcher3/util/RunnableList;
    .param p4, "workspaceItemCount"    # I
    .param p5, "isBindSync"    # Z

    const-string v0, "boundPages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingTasks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompleteSignal"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    .line 81
    nop

    .line 82
    nop

    .line 80
    const-string v0, "DisplayWorkspaceFirstFrame"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/ModelCallbacks;->synchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    .line 86
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->pagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/ModelCallbacks;->clearPendingBinds()V

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    check-cast v1, Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->enableDeferUpdates(I)V

    .line 90
    new-instance v0, Lcom/android/launcher3/ModelCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ModelCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/ModelCallbacks;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 97
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 96
    new-instance v1, Lcom/android/launcher3/ModelCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/ModelCallbacks$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/ModelCallbacks;)V

    .line 97
    invoke-direct {v0, p2, v1}, Lcom/android/launcher3/util/ViewOnDrawExecutor;-><init>(Lcom/android/launcher3/util/RunnableList;Ljava/util/function/Consumer;)V

    .line 96
    nop

    .line 102
    .local v0, "executor":Lcom/android/launcher3/util/ViewOnDrawExecutor;
    iput-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->pendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 104
    invoke-static {}, Lcom/android/launcher3/Flags;->enableWorkspaceInflation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    new-instance v1, Lcom/android/launcher3/ModelCallbacks$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/launcher3/ModelCallbacks$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    invoke-virtual {p3, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachTo(Lcom/android/launcher3/Launcher;)V

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p4, p5}, Lcom/android/launcher3/Launcher;->bindComplete(IZ)V

    .line 112
    return-void
.end method

.method public preAddApps()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->commitDelete()V

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 167
    nop

    .line 165
    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 164
    nop

    .line 169
    .local v0, "snackbar":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/launcher3/ModelCallbacks$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/launcher3/ModelCallbacks$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/AbstractFloatingView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->post(Ljava/lang/Runnable;)Z

    .line 170
    :cond_0
    return-void
.end method

.method public setIsFirstPagePinnedItemEnabled(Z)V
    .locals 1
    .param p1, "isFirstPagePinnedItemEnabled"    # Z

    .line 410
    iput-boolean p1, p0, Lcom/android/launcher3/ModelCallbacks;->isFirstPagePinnedItemEnabled:Z

    .line 411
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen()V

    .line 412
    return-void
.end method

.method public final setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/android/launcher3/util/IntSet;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/android/launcher3/ModelCallbacks;->pagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    return-void
.end method

.method public final setPendingExecutor(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/ModelCallbacks;->pendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    return-void
.end method

.method public final setStringCache(Lcom/android/launcher3/model/StringCache;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/android/launcher3/model/StringCache;

    .line 39
    iput-object p1, p0, Lcom/android/launcher3/ModelCallbacks;->stringCache:Lcom/android/launcher3/model/StringCache;

    return-void
.end method

.method public final setSynchronouslyBoundPages(Lcom/android/launcher3/util/IntSet;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/android/launcher3/util/IntSet;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/android/launcher3/ModelCallbacks;->synchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    return-void
.end method

.method public final setWorkspaceLoading(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/android/launcher3/ModelCallbacks;->workspaceLoading:Z

    return-void
.end method

.method public startBinding()V
    .locals 3

    .line 51
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "startBinding"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 57
    nop

    .line 58
    nop

    .line 55
    const/4 v1, 0x1

    const v2, 0x289d8b

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 60
    iput-boolean v1, p0, Lcom/android/launcher3/ModelCallbacks;->workspaceLoading:Z

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->clearDropTargets()V

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeAllWorkspaceScreens()V

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->clearViews()V

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/ModelCallbacks;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->resetLayout(Z)V

    .line 68
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/TraceHelper;->endSection()V

    .line 69
    return-void
.end method
