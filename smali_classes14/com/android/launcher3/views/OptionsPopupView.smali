.class public Lcom/android/launcher3/views/OptionsPopupView;
.super Lcom/android/launcher3/popup/ArrowPopup;
.source "OptionsPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/popup/ArrowPopup<",
        "TT;>;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field private static final EXTRA_WALLPAPER_FLAVOR:Ljava/lang/String; = "com.android.launcher3.WALLPAPER_FLAVOR"

.field private static final EXTRA_WALLPAPER_LAUNCH_SOURCE:Ljava/lang/String; = "com.android.wallpaper.LAUNCH_SOURCE"

.field private static final EXTRA_WALLPAPER_OFFSET:Ljava/lang/String; = "com.android.launcher3.WALLPAPER_OFFSET"


# instance fields
.field private final mItemMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldAddArrow:Z

.field private mTargetRect:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$6qGgmQNuWcO7ZripzAwtPnpRTgk(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->startSettings(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NF9IRgQh6XF9g8qF1c_COh67JiE(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->startWallpaperPicker(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ayCAzWi9037cW7DY6pd5Kix-DOw(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->enterHomeGardening(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pAmZ81tgdasP-vyIfkVDZFKhjAk(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->onWidgetsClicked(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/OptionsPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 85
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/OptionsPopupView;->mItemMap:Landroid/util/ArrayMap;

    .line 86
    return-void
.end method

.method private static enterHomeGardening(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 234
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 235
    const/4 v1, 0x1

    return v1
.end method

.method public static getOptions(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    new-instance v7, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    sget v3, Lcom/android/launcher3/R$string;->styles_wallpaper_button_text:I

    sget v4, Lcom/android/launcher3/R$drawable;->ic_palette:I

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v6, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda0;-><init>()V

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isWorkspaceEditAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    sget v4, Lcom/android/launcher3/R$string;->widget_button_text:I

    sget v5, Lcom/android/launcher3/R$drawable;->ic_widget:I

    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGETSTRAY_BUTTON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v7, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda1;-><init>()V

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->MULTI_SELECT_EDIT_MODE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    new-instance v1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    sget v4, Lcom/android/launcher3/R$string;->edit_home_screen:I

    sget v5, Lcom/android/launcher3/R$drawable;->enter_home_gardening_icon:I

    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SETTINGS_BUTTON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v7, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda2;-><init>()V

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1
    new-instance v1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    sget v10, Lcom/android/launcher3/R$string;->settings_button_text:I

    sget v11, Lcom/android/launcher3/R$drawable;->ic_setting:I

    sget-object v12, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SETTINGS_BUTTON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v13, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda3;

    invoke-direct {v13}, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda3;-><init>()V

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    return-object v0
.end method

.method private handleViewClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 103
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/OptionsPopupView;->mItemMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    .line 104
    .local v0, "item":Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    return v1

    .line 107
    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {v2}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v2

    if-lez v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/launcher3/views/OptionsPopupView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 110
    :cond_1
    iget-object v2, v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->clickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v2, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/OptionsPopupView;->close(Z)V

    .line 112
    return v1

    .line 114
    :cond_2
    return v1
.end method

.method private static onWidgetsClicked(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/OptionsPopupView;->openWidgets(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static openWidgets(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
    .locals 2
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget v0, Lcom/android/launcher3/R$string;->safemode_widget_error:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 249
    :cond_0
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 251
    .local v0, "floatingView":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_1

    .line 252
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    return-object v1

    .line 254
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->show(Lcom/android/launcher3/BaseActivity;Z)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    move-result-object v1

    return-object v1
.end method

.method static placeholderInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 294
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 295
    .local v0, "placeholderInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iput-object p0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 296
    const/16 v1, -0x6c

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    .line 297
    return-object v0
.end method

.method public static show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;
    .locals 1
    .param p0, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "targetRect"    # Landroid/graphics/RectF;
    .param p3, "shouldAddArrow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;Z)",
            "Lcom/android/launcher3/views/OptionsPopupView<",
            "TT;>;"
        }
    .end annotation

    .line 166
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;ZI)Lcom/android/launcher3/views/OptionsPopupView;

    move-result-object v0

    return-object v0
.end method

.method private static show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;ZI)Lcom/android/launcher3/views/OptionsPopupView;
    .locals 6
    .param p0, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "targetRect"    # Landroid/graphics/RectF;
    .param p3, "shouldAddArrow"    # Z
    .param p4, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;ZI)",
            "Lcom/android/launcher3/views/OptionsPopupView<",
            "TT;>;"
        }
    .end annotation

    .line 176
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    if-nez p0, :cond_0

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->longpress_options_menu:I

    .line 180
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/OptionsPopupView;

    .line 181
    .local v0, "popup":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    iput-object p1, v0, Lcom/android/launcher3/views/OptionsPopupView;->mTargetRect:Landroid/graphics/RectF;

    .line 182
    invoke-virtual {v0, p3}, Lcom/android/launcher3/views/OptionsPopupView;->setShouldAddArrow(Z)V

    .line 184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    .line 185
    .local v2, "item":Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    sget v3, Lcom/android/launcher3/R$layout;->system_shortcut:I

    invoke-virtual {v0, v3, v0}, Lcom/android/launcher3/views/OptionsPopupView;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 186
    .local v3, "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    if-lez p4, :cond_1

    .line 187
    invoke-virtual {v3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput p4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 189
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    invoke-virtual {v3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v3, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v3, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    iget-object v4, v0, Lcom/android/launcher3/views/OptionsPopupView;->mItemMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v2    # "item":Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    .end local v3    # "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/views/OptionsPopupView;->show()V

    .line 197
    return-object v0
.end method

.method private static startSettings(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 259
    const-string v0, "Main"

    const-string v1, "start: startSettings"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 261
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 263
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 264
    const/4 v1, 0x1

    return v1
.end method

.method private static startWallpaperPicker(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 273
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isWallpaperAllowed(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 274
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    goto :goto_0

    .line 276
    :cond_0
    sget v1, Lcom/android/launcher3/R$string;->msg_disabled_by_admin:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 277
    .local v1, "message":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 278
    return v2

    .line 280
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 283
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getWallpaperOffsetForCenterPage()F

    move-result v3

    .line 282
    const-string v4, "com.android.launcher3.WALLPAPER_OFFSET"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    .line 284
    const-string v3, "com.android.wallpaper.LAUNCH_SOURCE"

    const-string v4, "app_launched_launcher"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 285
    const-string v3, "com.android.launcher3.WALLPAPER_FLAVOR"

    const-string v4, "focus_wallpaper"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 286
    .local v1, "intent":Landroid/content/Intent;
    sget v3, Lcom/android/launcher3/R$string;->wallpaper_picker_package:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "pickerPackage":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    :cond_2
    invoke-static {v1}, Lcom/android/launcher3/views/OptionsPopupView;->placeholderInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method


# virtual methods
.method public assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 150
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    nop

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/views/OptionsPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/OptionsPopupView;->mColorIds:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/views/OptionsPopupView;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 154
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 156
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 157
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/launcher3/views/OptionsPopupView;->mChildContainerMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 154
    .end local v2    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected getTargetObjectLocation(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outPos"    # Landroid/graphics/Rect;

    .line 145
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/OptionsPopupView;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 146
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 131
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 94
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/OptionsPopupView;->handleViewClick(Landroid/view/View;)Z

    .line 95
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 119
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    return v1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/OptionsPopupView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    return v1

    .line 125
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/OptionsPopupView;->close(Z)V

    .line 126
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 99
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/OptionsPopupView;->handleViewClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public setShouldAddArrow(Z)V
    .locals 0
    .param p1, "shouldAddArrow"    # Z

    .line 135
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    iput-boolean p1, p0, Lcom/android/launcher3/views/OptionsPopupView;->mShouldAddArrow:Z

    .line 136
    return-void
.end method

.method public setTargetRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "targetRect"    # Landroid/graphics/RectF;

    .line 89
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/views/OptionsPopupView;->mTargetRect:Landroid/graphics/RectF;

    .line 90
    return-void
.end method

.method protected shouldAddArrow()Z
    .locals 1

    .line 140
    .local p0, "this":Lcom/android/launcher3/views/OptionsPopupView;, "Lcom/android/launcher3/views/OptionsPopupView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/views/OptionsPopupView;->mShouldAddArrow:Z

    return v0
.end method
