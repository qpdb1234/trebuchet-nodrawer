.class public Lcom/android/launcher3/popup/PopupPopulator;
.super Ljava/lang/Object;
.source "PopupPopulator.java"


# static fields
.field public static final MAX_SHORTCUTS:I = 0x4

.field static final NUM_DYNAMIC:I = 0x2

.field private static final SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUpdateRunnable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 10
    .param p1, "originalInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "uiHandler"    # Landroid/os/Handler;
    .param p3, "container"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/os/Handler;",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/DeepShortcutView;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 113
    .local p0, "context":Landroid/content/Context;, "TT;"
    .local p4, "shortcutViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/shortcuts/DeepShortcutView;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 114
    .local v7, "activity":Landroid/content/ComponentName;
    iget-object v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 115
    .local v8, "user":Landroid/os/UserHandle;
    new-instance v9, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda0;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v8

    move-object v3, v7

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-object v9
.end method

.method static synthetic lambda$createUpdateRunnable$1(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0
    .param p0, "view"    # Lcom/android/launcher3/shortcuts/DeepShortcutView;
    .param p1, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "container"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->applyShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-void
.end method

.method static synthetic lambda$createUpdateRunnable$2(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "activity"    # Landroid/content/ComponentName;
    .param p3, "shortcutViews"    # Ljava/util/List;
    .param p4, "uiHandler"    # Landroid/os/Handler;
    .param p5, "container"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 116
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 117
    invoke-virtual {v0, p2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->withContainer(Landroid/content/ComponentName;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v0

    .line 118
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v0

    .line 119
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {v0}, Lcom/android/launcher3/popup/PopupPopulator;->sortAndFilterShortcuts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    .line 121
    .local v1, "cache":Lcom/android/launcher3/icons/IconCache;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 122
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 123
    .local v3, "shortcut":Landroid/content/pm/ShortcutInfo;
    new-instance v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v4, v3, p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 124
    .local v4, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v1, v4, v3}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    .line 125
    iput v2, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    .line 126
    const/16 v5, -0x6b

    iput v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    .line 128
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 129
    .local v5, "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    new-instance v6, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5, v4, v3, p5}, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {p4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    .end local v3    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .end local v4    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v5    # "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 2
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 55
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, -0x1

    return v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public static sortAndFilterShortcuts(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 72
    .local p0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 73
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 74
    return-object p0

    .line 79
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v0, "filteredShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v2, 0x0

    .line 81
    .local v2, "numDynamic":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 82
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 83
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 84
    .local v5, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 85
    .local v6, "filteredSize":I
    if-ge v6, v1, :cond_1

    .line 87
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    if-ge v2, v7, :cond_2

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    sub-int v7, v6, v2

    .line 98
    .local v7, "lastStaticIndex":I
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v5    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "filteredSize":I
    .end local v7    # "lastStaticIndex":I
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .end local v4    # "i":I
    :cond_3
    return-object v0
.end method
