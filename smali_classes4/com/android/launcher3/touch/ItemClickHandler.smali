.class public Lcom/android/launcher3/touch/ItemClickHandler;
.super Ljava/lang/Object;
.source "ItemClickHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroid/view/View$OnClickListener;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$c3IcSovkrXGdCZtXy0f_A5Sz5VA(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Lcom/android/launcher3/touch/ItemClickHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->TAG:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleDisabledItemClicked(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z
    .locals 5
    .param p0, "shortcut"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p1, "context"    # Landroid/content/Context;

    .line 262
    iget v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x103f

    .line 266
    .local v0, "disabledFlags":I
    invoke-static {p0, p1}, Lcom/android/launcher3/touch/ItemClickHandler;->maybeCreateAlertDialogForShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 267
    return v2

    .line 270
    :cond_0
    and-int/lit8 v1, v0, -0x5

    and-int/lit8 v1, v1, -0x9

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 275
    return v3

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 280
    return v2

    .line 283
    :cond_2
    sget v1, Lcom/android/launcher3/R$string;->activity_not_available:I

    .line 284
    .local v1, "error":I
    iget v4, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_3

    .line 285
    sget v1, Lcom/android/launcher3/R$string;->safemode_shortcut_error:I

    goto :goto_0

    .line 286
    :cond_3
    iget v4, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_5

    .line 288
    :cond_4
    sget v1, Lcom/android/launcher3/R$string;->shortcut_not_available:I

    .line 290
    :cond_5
    :goto_0
    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 291
    return v2
.end method

.method static synthetic lambda$maybeCreateAlertDialogForShortcut$5(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "marketIntent"    # Landroid/content/Intent;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 313
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method static synthetic lambda$maybeCreateAlertDialogForShortcut$6(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "shortcut"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 317
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 319
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v1

    .line 318
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/Set;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 317
    const-string v2, "user explicitly removes disabled shortcut"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->persistRemoveItemsByMatcher(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method static synthetic lambda$onClickAppPairIcon$0(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p0, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 158
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    return v0
.end method

.method static synthetic lambda$onClickPendingAppItem$1(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 2
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/InstallSessionHelper;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 219
    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessionInfo(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 218
    return-object v0
.end method

.method static synthetic lambda$onClickPendingAppItem$2(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 5
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 222
    if-eqz p4, :cond_0

    .line 223
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 225
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    nop

    .line 226
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 225
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2, v1}, Landroid/content/pm/LauncherApps;->startPackageInstallerSessionDetailsActivity(Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-void

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/launcher3/touch/ItemClickHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch market intent for package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v0    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    nop

    .line 234
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 233
    invoke-static {p0, p3, v0}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getAppMarketActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    .line 236
    return-void
.end method

.method static synthetic lambda$onClickPendingAppItem$3(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "siFuture"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "marketLaunchAction"    # Ljava/util/function/Consumer;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 247
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method static synthetic lambda$onClickPendingAppItem$4(Lcom/android/launcher3/Launcher;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "d"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 251
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 250
    invoke-static {v1, v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v1

    const-string v2, "user explicitly removes the promise app icon"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->persistRemoveItemsByMatcher(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private static maybeCreateAlertDialogForShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z
    .locals 6
    .param p0, "shortcut"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p1, "context"    # Landroid/content/Context;

    .line 298
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 299
    .local v1, "launcher":Lcom/android/launcher3/Launcher;
    iget v2, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isDisabledVersionLower()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 304
    .local v2, "marketIntent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 305
    return v0

    .line 308
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/android/launcher3/R$string;->dialog_update_title:I

    .line 309
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->dialog_update_message:I

    .line 310
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->dialog_update:I

    new-instance v5, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda4;

    invoke-direct {v5, p1, v2}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 311
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->dialog_remove:I

    new-instance v5, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda5;

    invoke-direct {v5, v1, p0}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 315
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 322
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 323
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    const/4 v0, 0x1

    return v0

    .line 328
    .end local v1    # "launcher":Lcom/android/launcher3/Launcher;
    .end local v2    # "marketIntent":Landroid/content/Intent;
    :cond_1
    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/launcher3/touch/ItemClickHandler;->TAG:Ljava/lang/String;

    const-string v3, "Error creating alert dialog"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private static onClick(Landroid/view/View;)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 100
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_2

    .line 104
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0, v2, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickAppShortcut(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;)V

    goto/16 :goto_1

    .line 105
    :cond_2
    instance-of v2, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_4

    .line 106
    instance-of v2, p0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_3

    .line 107
    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_1

    .line 108
    :cond_3
    instance-of v2, p0, Lcom/android/launcher3/apppairs/AppPairIcon;

    if-eqz v2, :cond_a

    .line 109
    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickAppPairIcon(Landroid/view/View;)V

    goto :goto_1

    .line 111
    :cond_4
    instance-of v2, v1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v2, :cond_5

    .line 112
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p0, v2, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/Launcher;)V

    goto :goto_1

    .line 113
    :cond_5
    instance-of v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v2, :cond_6

    .line 114
    instance-of v2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v2, :cond_a

    .line 115
    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-static {v2, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickPendingWidget(Lcom/android/launcher3/widget/PendingAppWidgetHostView;Lcom/android/launcher3/Launcher;)V

    goto :goto_1

    .line 117
    :cond_6
    instance-of v2, v1, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;

    if-eqz v2, :cond_7

    .line 118
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;->onItemClicked(Landroid/view/View;)V

    goto :goto_1

    .line 119
    :cond_7
    instance-of v2, v1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 120
    sget v2, Lcom/android/launcher3/R$string;->long_press_shortcut_to_add:I

    .line 121
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget v4, Lcom/android/launcher3/R$string;->long_accessible_way_to_add_shortcut:I

    .line 122
    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v2, v4}, Lcom/android/launcher3/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 123
    .local v2, "msg":Ljava/lang/CharSequence;
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/views/Snackbar;->show(Lcom/android/launcher3/views/ActivityContext;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    .end local v2    # "msg":Ljava/lang/CharSequence;
    goto :goto_0

    .line 124
    :cond_8
    instance-of v2, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v2, :cond_9

    .line 125
    sget v2, Lcom/android/launcher3/R$string;->long_press_widget_to_add:I

    .line 126
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget v4, Lcom/android/launcher3/R$string;->long_accessible_way_to_add:I

    .line 127
    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {v2, v4}, Lcom/android/launcher3/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 128
    .restart local v2    # "msg":Ljava/lang/CharSequence;
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/views/Snackbar;->show(Lcom/android/launcher3/views/ActivityContext;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 124
    .end local v2    # "msg":Ljava/lang/CharSequence;
    :cond_9
    :goto_0
    nop

    .line 130
    :cond_a
    :goto_1
    return-void
.end method

.method private static onClickAppPairIcon(Landroid/view/View;)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 154
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/apppairs/AppPairIcon;

    .line 155
    .local v1, "appPairIcon":Lcom/android/launcher3/apppairs/AppPairIcon;
    invoke-virtual {v1}, Lcom/android/launcher3/apppairs/AppPairIcon;->isLaunchableAtScreenSize()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 157
    sget-object v2, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 158
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    .line 159
    .local v2, "isFoldable":Z
    if-eqz v2, :cond_0

    .line 160
    sget v4, Lcom/android/launcher3/R$string;->app_pair_needs_unfold:I

    goto :goto_0

    .line 161
    :cond_0
    sget v4, Lcom/android/launcher3/R$string;->app_pair_unlaunchable_at_screen_size:I

    :goto_0
    nop

    .line 159
    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 163
    .end local v2    # "isFoldable":Z
    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/apppairs/AppPairIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/FolderInfo;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {v1}, Lcom/android/launcher3/apppairs/AppPairIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 165
    .local v2, "app1":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/apppairs/AppPairIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 167
    .local v3, "app2":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isDisabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->handleDisabledItemClicked(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    invoke-static {p0, v2, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickAppShortcut(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;)V

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isDisabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->handleDisabledItemClicked(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 172
    invoke-static {p0, v3, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickAppShortcut(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;)V

    .line 174
    .end local v2    # "app1":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v3    # "app2":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_3
    :goto_1
    goto :goto_2

    .line 175
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->launchAppPair(Lcom/android/launcher3/apppairs/AppPairIcon;)V

    .line 177
    :goto_2
    return-void
.end method

.method public static onClickAppShortcut(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "shortcut"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 339
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->handleDisabledItemClicked(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    return-void

    .line 344
    :cond_0
    instance-of v0, p0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    invoke-static {}, Lcom/android/launcher3/Utilities;->enableSupportForArchiving()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isArchived()Z

    move-result v0

    if-nez v0, :cond_4

    .line 346
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 349
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 350
    iget v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {p0, p2, v0, v1}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickPendingAppItem(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;Z)V

    .line 356
    return-void

    .line 361
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/Launcher;)V

    .line 362
    return-void
.end method

.method private static onClickFolderIcon(Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 138
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 139
    .local v0, "folder":Lcom/android/launcher3/folder/Folder;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_OPEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 143
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 145
    :cond_0
    return-void
.end method

.method private static onClickPendingAppItem(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "downloadStarted"    # Z

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 217
    .local v0, "item":Lcom/android/launcher3/model/data/ItemInfo;
    new-instance v1, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v1, v2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 221
    .local v1, "siFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    new-instance v2, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p0, v0, p2}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    .line 238
    .local v2, "marketLaunchAction":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    if-eqz p3, :cond_0

    .line 240
    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 241
    return-void

    .line 243
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/android/launcher3/R$string;->abandoned_promises_title:I

    .line 244
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->abandoned_promise_explanation:I

    .line 245
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->abandoned_search:I

    new-instance v5, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, v2}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    .line 246
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->abandoned_clean_this:I

    new-instance v5, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda3;

    invoke-direct {v5, p1, p2, v0}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/Launcher;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 248
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 253
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 254
    return-void
.end method

.method private static onClickPendingWidget(Lcom/android/launcher3/widget/PendingAppWidgetHostView;Lcom/android/launcher3/Launcher;)V
    .locals 5
    .param p0, "v"    # Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 183
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 184
    sget v0, Lcom/android/launcher3/R$string;->safemode_widget_error:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 189
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 190
    new-instance v1, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 191
    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 192
    .local v1, "appWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    if-nez v1, :cond_1

    .line 193
    return-void

    .line 195
    :cond_1
    new-instance v2, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v2, v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 197
    .local v2, "addFlowHandler":Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 200
    return-void

    .line 202
    :cond_2
    iget v3, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v4, 0xc

    invoke-virtual {v2, p1, v3, v0, v4}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)V

    goto :goto_0

    .line 205
    :cond_3
    const/16 v3, 0xd

    invoke-virtual {v2, p1, v0, v3}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;I)Z

    .line 207
    .end local v1    # "appWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .end local v2    # "addFlowHandler":Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    :goto_0
    goto :goto_1

    .line 208
    :cond_4
    iget-object v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "packageName":Ljava/lang/String;
    iget v4, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    if-ltz v4, :cond_5

    move v1, v3

    :cond_5
    invoke-static {p0, p1, v2, v1}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickPendingAppItem(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;Z)V

    .line 211
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private static startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 365
    const-string v0, "Main"

    const-string v1, "start: startAppShortcutOrInfoActivity"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 368
    .local v0, "intent":Landroid/content/Intent;
    instance-of v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 369
    .local v1, "itemInfoWithIcon":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_0

    .line 371
    nop

    .line 372
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 371
    invoke-static {p2, v2, v3}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getAppMarketActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_0
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 376
    nop

    .line 378
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getPrivateProfileManager()Lcom/android/launcher3/allapps/PrivateProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getProfileUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 376
    const-string v3, "com.android.launcher"

    invoke-static {p2, v3, v2}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getAppMarketActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    .line 379
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_PRIVATE_SPACE_INSTALL_APP_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 383
    .end local v1    # "itemInfoWithIcon":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    .line 386
    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 387
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 388
    .local v1, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 389
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v3

    .line 395
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    :cond_2
    iget v3, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    .line 398
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 399
    new-instance v2, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v2}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v2

    .line 400
    .local v2, "instanceId":Lcom/android/launcher3/logging/InstanceId;
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v3

    invoke-virtual {p2, v3, p1, v2}, Lcom/android/launcher3/Launcher;->logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    .line 401
    return-void

    .line 404
    .end local v1    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v2    # "instanceId":Lcom/android/launcher3/logging/InstanceId;
    :cond_3
    const/4 v1, 0x1

    if-eqz p0, :cond_4

    invoke-virtual {p2, p0}, Lcom/android/launcher3/Launcher;->supportsAdaptiveIconAnimation(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 405
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->shouldUseBackgroundAnimation()Z

    move-result v3

    if-nez v3, :cond_4

    .line 407
    invoke-static {p2, p0, p1, v1}, Lcom/android/launcher3/views/FloatingIconView;->fetchIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 410
    :cond_4
    invoke-static {p2}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    move-result-object v3

    .line 411
    .local v3, "db":Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 412
    .local v4, "cn":Landroid/content/ComponentName;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->isPackageProtected(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v1

    :cond_5
    move v1, v2

    .line 414
    .local v1, "isProtected":Z
    if-eqz v1, :cond_6

    .line 415
    invoke-virtual {p2, p0, v0, p1}, Lcom/android/launcher3/Launcher;->startActivitySafelyAuth(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_1

    .line 417
    :cond_6
    invoke-virtual {p2, p0, v0, p1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    .line 419
    :goto_1
    return-void

    .line 384
    .end local v1    # "isProtected":Z
    .end local v3    # "db":Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;
    .end local v4    # "cn":Landroid/content/ComponentName;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input must have a valid intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
