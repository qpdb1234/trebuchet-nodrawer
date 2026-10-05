.class Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SystemShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstallToPrivateProfile"
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
.field mSpaceUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Landroid/os/UserHandle;)V
    .locals 6
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;
    .param p4, "spaceUser"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 251
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;, "Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile<TT;>;"
    .local p1, "target":Lcom/android/launcher3/views/ActivityContext;, "TT;"
    sget v1, Lcom/android/launcher3/R$drawable;->ic_install_to_private:I

    sget v2, Lcom/android/launcher3/R$string;->install_private_system_shortcut_label:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 257
    iput-object p4, p0, Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;->mSpaceUser:Landroid/os/UserHandle;

    .line 258
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 262
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;, "Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile<TT;>;"
    nop

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 265
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;->mSpaceUser:Landroid/os/UserHandle;

    .line 263
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getAppMarketActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;->mTarget:Lcom/android/launcher3/views/ActivityContext;

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v1, p1, v0, v2}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    .line 268
    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;->mTarget:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 269
    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;->mTarget:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 271
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_PRIVATE_SPACE_INSTALL_SYSTEM_SHORTCUT_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 272
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 273
    return-void
.end method
