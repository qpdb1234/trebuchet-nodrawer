.class public Lcom/android/launcher3/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherProvider$SqlArguments;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherProvider"


# direct methods
.method public static synthetic $r8$lambda$9IO_zpC7faw3XumFLMjm4ehwwZA(Lcom/android/launcher3/LauncherProvider;Landroid/content/ContentValues;Landroid/net/Uri;Lcom/android/launcher3/model/ModelDbController;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherProvider;->lambda$insert$1(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/android/launcher3/model/ModelDbController;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$a0-5M3aCHz_cPQG2x-goqicOHms(Lcom/android/launcher3/LauncherProvider;Ljava/util/function/ToIntFunction;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider;->lambda$executeControllerTask$4(Ljava/util/function/ToIntFunction;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private executeControllerTask(Ljava/util/function/ToIntFunction;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "Lcom/android/launcher3/model/ModelDbController;",
            ">;)I"
        }
    .end annotation

    .line 146
    .local p1, "task":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Lcom/android/launcher3/model/ModelDbController;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 150
    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/LauncherProvider;Ljava/util/function/ToIntFunction;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Same process should call model directly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$delete$2(Lcom/android/launcher3/LauncherProvider$SqlArguments;Lcom/android/launcher3/model/ModelDbController;)I
    .locals 3
    .param p0, "args"    # Lcom/android/launcher3/LauncherProvider$SqlArguments;
    .param p1, "c"    # Lcom/android/launcher3/model/ModelDbController;

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher3/model/ModelDbController;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$executeControllerTask$4(Ljava/util/function/ToIntFunction;)Ljava/lang/Integer;
    .locals 4
    .param p1, "task"    # Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    .line 152
    .local v0, "model":Lcom/android/launcher3/LauncherModel;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    .line 153
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 154
    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 156
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private synthetic lambda$insert$1(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/android/launcher3/model/ModelDbController;)I
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "controller"    # Lcom/android/launcher3/model/ModelDbController;

    .line 92
    invoke-virtual {p3}, Lcom/android/launcher3/model/ModelDbController;->generateNewItemId()I

    move-result v0

    .line 93
    .local v0, "id":I
    const-string v1, "_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v1, "itemType"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 98
    .local v1, "itemType":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 100
    const-string v2, "appWidgetId"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 102
    nop

    .line 103
    const-string v3, "appWidgetProvider"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 104
    .local v3, "cn":Landroid/content/ComponentName;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 105
    return v4

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v5

    .line 110
    .local v5, "widgetHolder":Lcom/android/launcher3/widget/LauncherWidgetHolder;
    :try_start_0
    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->allocateAppWidgetId()I

    move-result v6

    .line 111
    .local v6, "appWidgetId":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v6, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-virtual {v5, v6}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    nop

    .line 122
    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    .line 115
    return v4

    .line 122
    .end local v6    # "appWidgetId":I
    :cond_1
    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    .line 123
    goto :goto_1

    .line 122
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v6, "LauncherProvider"

    const-string v7, "Failed to initialize external widget"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    nop

    .line 122
    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    .line 119
    return v4

    .line 122
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    .line 123
    throw v2

    .line 126
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "widgetHolder":Lcom/android/launcher3/widget/LauncherWidgetHolder;
    :cond_2
    :goto_1
    new-instance v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v2, p2}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 127
    .local v2, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    iget-object v3, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p3, v3, p1}, Lcom/android/launcher3/model/ModelDbController;->insert(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    return v3
.end method

.method static synthetic lambda$query$0([Landroid/database/Cursor;Lcom/android/launcher3/LauncherProvider$SqlArguments;[Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/model/ModelDbController;)I
    .locals 6
    .param p0, "result"    # [Landroid/database/Cursor;
    .param p1, "args"    # Lcom/android/launcher3/LauncherProvider$SqlArguments;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .param p4, "controller"    # Lcom/android/launcher3/model/ModelDbController;

    .line 82
    iget-object v1, p1, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v0, p4

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/ModelDbController;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 83
    return v1
.end method

.method static synthetic lambda$update$3(Lcom/android/launcher3/LauncherProvider$SqlArguments;Landroid/content/ContentValues;Lcom/android/launcher3/model/ModelDbController;)I
    .locals 3
    .param p0, "args"    # Lcom/android/launcher3/LauncherProvider$SqlArguments;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "c"    # Lcom/android/launcher3/model/ModelDbController;

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/android/launcher3/model/ModelDbController;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    new-instance v1, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/LauncherProvider$SqlArguments;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherProvider;->executeControllerTask(Ljava/util/function/ToIntFunction;)I

    move-result v1

    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 52
    .local v0, "appState":Lcom/android/launcher3/LauncherAppState;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 56
    return-void

    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 65
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 90
    new-instance v0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/LauncherProvider;Landroid/content/ContentValues;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider;->executeControllerTask(Ljava/util/function/ToIntFunction;)I

    move-result v0

    .line 130
    .local v0, "rowId":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    int-to-long v1, v0

    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public onCreate()Z
    .locals 1

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 78
    .local v1, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 80
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/database/Cursor;

    .line 81
    .local v2, "result":[Landroid/database/Cursor;
    new-instance v3, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2, v0, p2, p5}, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda3;-><init>([Landroid/database/Cursor;Lcom/android/launcher3/LauncherProvider$SqlArguments;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/LauncherProvider;->executeControllerTask(Ljava/util/function/ToIntFunction;)I

    .line 85
    const/4 v3, 0x0

    aget-object v3, v2, v3

    return-object v3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    new-instance v1, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p2}, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/LauncherProvider$SqlArguments;Landroid/content/ContentValues;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherProvider;->executeControllerTask(Ljava/util/function/ToIntFunction;)I

    move-result v1

    return v1
.end method
