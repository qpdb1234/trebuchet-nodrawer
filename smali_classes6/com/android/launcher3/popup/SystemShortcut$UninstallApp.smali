.class Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SystemShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UninstallApp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 6
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;
    .param p4, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 366
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;, "Lcom/android/launcher3/popup/SystemShortcut$UninstallApp<TT;>;"
    .local p1, "target":Lcom/android/launcher3/views/ActivityContext;, "TT;"
    sget v1, Lcom/android/launcher3/R$drawable;->ic_uninstall_no_shadow:I

    sget v2, Lcom/android/launcher3/R$string;->uninstall_drop_target_label:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 368
    iput-object p4, p0, Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;->mComponentName:Landroid/content/ComponentName;

    .line 370
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 374
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;, "Lcom/android/launcher3/popup/SystemShortcut$UninstallApp<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;->mTarget:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;->dismissTaskMenuView(Lcom/android/launcher3/views/ActivityContext;)V

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/SecondaryDropTarget;->performUninstall(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;->mTarget:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 378
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_PRIVATE_SPACE_UNINSTALL_SYSTEM_SHORTCUT_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 379
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 380
    return-void
.end method
