.class Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SystemShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DontSuggestApp"
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


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 6
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 325
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp;, "Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp<TT;>;"
    .local p1, "target":Lcom/android/launcher3/views/ActivityContext;, "TT;"
    sget v1, Lcom/android/launcher3/R$drawable;->ic_block_no_shadow:I

    sget v2, Lcom/android/launcher3/R$string;->dismiss_prediction_label:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 327
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 331
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp;, "Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp;->mTarget:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp;->dismissTaskMenuView(Lcom/android/launcher3/views/ActivityContext;)V

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp;->mTarget:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 333
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_DONT_SUGGEST_APP_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 334
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 335
    return-void
.end method
