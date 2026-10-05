.class public Lcom/android/launcher3/model/ItemInstallQueue;
.super Ljava/lang/Object;
.source "ItemInstallQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;
    }
.end annotation


# static fields
.field private static final APPS_PENDING_INSTALL:Ljava/lang/String; = "apps_to_install"

.field public static final FLAG_ACTIVITY_PAUSED:I = 0x1

.field public static final FLAG_DRAG_AND_DROP:I = 0x4

.field public static final FLAG_LOADER_RUNNING:I = 0x2

.field public static INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/model/ItemInstallQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG:Ljava/lang/String; = "ItemInstallQueue"

.field public static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field public static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x55

.field private static final TAG:Ljava/lang/String; = "InstallShortcutReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInstallQueueDisabledFlags:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorage:Lcom/android/launcher3/util/PersistedItemArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/PersistedItemArray<",
            "Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6EIpYO421BaSV9QuCRUZj_GN-kw(Lcom/android/launcher3/model/ItemInstallQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->flushQueueInBackground()V

    return-void
.end method

.method public static synthetic $r8$lambda$AMTw73kZLhQ1bs2sXtTE7OK0guI(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->lambda$flushQueueInBackground$0(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WTKciH_7lXJjNEZ-Tk9sAnzzlO4(Landroid/content/Context;)Lcom/android/launcher3/model/ItemInstallQueue;
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ItemInstallQueue;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$ZYT01uVfugWceFeDIFfsvNVZgWo(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/ItemInstallQueue;->lambda$queuePendingShortcutInfo$4(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oTdCGBF-1Hec9egcoL67mnnQAjE(Lcom/android/launcher3/model/ItemInstallQueue;ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/ItemInstallQueue;->decode(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/android/launcher3/util/PersistedItemArray;

    const-string v1, "apps_to_install"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/PersistedItemArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    .line 98
    iput-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method private addToQueue(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    .line 111
    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/PersistedItemArray;->write(Landroid/content/Context;Ljava/util/List;)V

    .line 116
    :cond_0
    return-void
.end method

.method private decode(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;
    .locals 5
    .param p1, "itemType"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 370
    const/4 v0, 0x0

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 394
    const-string v0, "InstallShortcutReceiver"

    const-string v2, "Unknown item type"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v1

    .line 374
    :sswitch_0
    invoke-static {p3, p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {v2, v3}, Lcom/android/launcher3/shortcuts/ShortcutKey;->buildRequest(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v2

    .line 376
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v2

    .line 377
    .local v2, "si":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    return-object v1

    .line 380
    :cond_0
    new-instance v1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;)V

    return-object v1

    .line 384
    .end local v2    # "si":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :sswitch_1
    const-string v2, "appWidgetId"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 385
    .local v0, "widgetId":I
    iget-object v2, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    .line 386
    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 387
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 391
    :cond_1
    new-instance v1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    return-object v1

    .line 389
    :cond_2
    :goto_0
    return-object v1

    .line 372
    .end local v0    # "widgetId":I
    .end local v2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_2
    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private ensureQueueLoaded()V
    .locals 3

    .line 103
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/PersistedItemArray;->read(Landroid/content/Context;Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    .line 107
    :cond_0
    return-void
.end method

.method private flushInstallQueue()V
    .locals 2

    .line 229
    iget v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    if-eqz v0, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method private flushQueueInBackground()V
    .locals 4

    .line 120
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 121
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;)V

    .line 131
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 132
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 135
    .local v1, "installQueue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 140
    iget-object v2, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object v3, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/PersistedItemArray;->getFile(Landroid/content/Context;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 141
    return-void
.end method

.method private static getIntentPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 365
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 365
    :goto_0
    return-object v0
.end method

.method private synthetic lambda$flushQueueInBackground$0(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Landroid/util/Pair;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->getItemInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getPendingShortcuts$2(Landroid/os/UserHandle;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Z
    .locals 2
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "item"    # Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    .line 186
    iget v0, p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getPendingShortcuts$3(Landroid/os/UserHandle;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "item"    # Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    .line 187
    iget-object v0, p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$queuePendingShortcutInfo$4(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;
    .param p2, "stackTrace"    # Ljava/lang/Exception;

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->getItemInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 196
    .local v0, "itemInfo":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;"
    const-string v1, "ItemInstallQueue"

    if-nez v0, :cond_0

    .line 197
    const-string v2, "Adding PendingInstallShortcutInfo with no attached info to queue."

    invoke-static {v1, v2, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 201
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding PendingInstallShortcutInfo to queue. Attached info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 207
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->addToQueue(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V

    .line 208
    return-void
.end method

.method static synthetic lambda$removeFromInstallQueue$1(Landroid/os/UserHandle;Ljava/util/HashSet;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Z
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "packageNames"    # Ljava/util/HashSet;
    .param p2, "item"    # Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    .line 153
    iget-object v0, p2, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/launcher3/model/ItemInstallQueue;->getIntentPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    .line 191
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 194
    .local v0, "stackTrace":Ljava/lang/Exception;
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 209
    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->flushInstallQueue()V

    .line 210
    return-void
.end method


# virtual methods
.method public getPendingShortcuts(Landroid/os/UserHandle;)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda0;-><init>(Landroid/os/UserHandle;)V

    .line 186
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda1;-><init>(Landroid/os/UserHandle;)V

    .line 187
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method public pauseModelPush(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 217
    iget v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    .line 218
    return-void
.end method

.method public queueItem(Landroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "widgetId"    # I

    .line 169
    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V

    .line 170
    return-void
.end method

.method public queueItem(Landroid/content/pm/ShortcutInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ShortcutInfo;

    .line 162
    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V

    .line 163
    return-void
.end method

.method public queueItem(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 176
    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V

    .line 177
    return-void
.end method

.method public removeFromInstallQueue(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 3
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 148
    .local p1, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p1}, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda4;-><init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/PersistedItemArray;->write(Landroid/content/Context;Ljava/util/List;)V

    .line 156
    :cond_1
    return-void
.end method

.method public resumeModelPush(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 224
    iget v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    .line 225
    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->flushInstallQueue()V

    .line 226
    return-void
.end method
