.class public Lcom/android/launcher3/pm/PinRequestHelper;
.super Ljava/lang/Object;
.source "PinRequestHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRequestForShortcut(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ShortcutInfo;

    .line 98
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    const-class v1, Landroid/content/pm/ShortcutManager;

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 100
    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method public static createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/content/pm/LauncherApps$PinItemRequest;
    .param p2, "acceptDelay"    # J

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 60
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    return-object v0

    .line 68
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/pm/PinRequestHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/launcher3/pm/PinRequestHelper$$ExternalSyntheticLambda0;-><init>(JLandroid/content/pm/LauncherApps$PinItemRequest;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 77
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 80
    .local v1, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    new-instance v2, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v2}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->loadIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 81
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/LauncherModel;->updateAndBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V

    .line 82
    return-object v1

    .line 84
    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v1    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_2
    return-object v0
.end method

.method public static getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 90
    const-string v0, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 91
    .local v0, "extra":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/content/pm/LauncherApps$PinItemRequest;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/LauncherApps$PinItemRequest;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static synthetic lambda$createWorkspaceItemFromPinItemRequest$0(JLandroid/content/pm/LauncherApps$PinItemRequest;)V
    .locals 1
    .param p0, "acceptDelay"    # J
    .param p2, "request"    # Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 69
    invoke-static {p0, p1}, Landroid/os/SystemClock;->sleep(J)V

    .line 70
    invoke-virtual {p2}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p2}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    .line 73
    :cond_0
    return-void
.end method
