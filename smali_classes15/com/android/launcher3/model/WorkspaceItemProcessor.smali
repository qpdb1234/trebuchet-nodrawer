.class public final Lcom/android/launcher3/model/WorkspaceItemProcessor;
.super Ljava/lang/Object;
.source "WorkspaceItemProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/WorkspaceItemProcessor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 52\u00020\u0001:\u00015B\u00db\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0016\u0012\"\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001b0\u001aj\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001b`\u001c\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u0012\u0006\u0010\u001f\u001a\u00020 \u0012\u0006\u0010!\u001a\u00020\"\u0012\u0012\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0%0$\u0012\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u001e0(\u0012\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00100$\u00a2\u0006\u0002\u0010*J\u0008\u00100\u001a\u000201H\u0003J\u0008\u00102\u001a\u000201H\u0002J\u0006\u00103\u001a\u000201J\u0008\u00104\u001a\u000201H\u0002R\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00100$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010+\u001a\n -*\u0004\u0018\u00010,0,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0%0$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001b0\u001aj\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001b`\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u001e0(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/android/launcher3/model/WorkspaceItemProcessor;",
        "",
        "c",
        "Lcom/android/launcher3/model/LoaderCursor;",
        "memoryLogger",
        "Lcom/android/launcher3/model/LoaderMemoryLogger;",
        "userManagerState",
        "Lcom/android/launcher3/model/UserManagerState;",
        "launcherApps",
        "Landroid/content/pm/LauncherApps;",
        "pendingPackages",
        "",
        "Lcom/android/launcher3/util/PackageUserKey;",
        "shortcutKeyToPinnedShortcuts",
        "",
        "Lcom/android/launcher3/shortcuts/ShortcutKey;",
        "Landroid/content/pm/ShortcutInfo;",
        "app",
        "Lcom/android/launcher3/LauncherAppState;",
        "bgDataModel",
        "Lcom/android/launcher3/model/BgDataModel;",
        "widgetProvidersMap",
        "",
        "Lcom/android/launcher3/util/ComponentKey;",
        "Landroid/appwidget/AppWidgetProviderInfo;",
        "installingPkgs",
        "Ljava/util/HashMap;",
        "Landroid/content/pm/PackageInstaller$SessionInfo;",
        "Lkotlin/collections/HashMap;",
        "isSdCardReady",
        "",
        "widgetInflater",
        "Lcom/android/launcher3/widget/WidgetInflater;",
        "pmHelper",
        "Lcom/android/launcher3/util/PackageManagerHelper;",
        "iconRequestInfos",
        "",
        "Lcom/android/launcher3/model/data/IconRequestInfo;",
        "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
        "unlockedUsers",
        "Landroid/util/LongSparseArray;",
        "allDeepShortcuts",
        "(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/LoaderMemoryLogger;Lcom/android/launcher3/model/UserManagerState;Landroid/content/pm/LauncherApps;Ljava/util/Set;Ljava/util/Map;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/HashMap;ZLcom/android/launcher3/widget/WidgetInflater;Lcom/android/launcher3/util/PackageManagerHelper;Ljava/util/List;Landroid/util/LongSparseArray;Ljava/util/List;)V",
        "iconCache",
        "Lcom/android/launcher3/icons/IconCache;",
        "kotlin.jvm.PlatformType",
        "isSafeMode",
        "tempPackageKey",
        "processAppOrDeepShortcut",
        "",
        "processFolderOrAppPair",
        "processItem",
        "processWidget",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/android/launcher3/model/WorkspaceItemProcessor$Companion;

.field private static final TAG:Ljava/lang/String; = "WorkspaceItemProcessor"


# instance fields
.field private final allDeepShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final app:Lcom/android/launcher3/LauncherAppState;

.field private final bgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final c:Lcom/android/launcher3/model/LoaderCursor;

.field private final iconCache:Lcom/android/launcher3/icons/IconCache;

.field private final iconRequestInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final installingPkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final isSafeMode:Z

.field private final isSdCardReady:Z

.field private final launcherApps:Landroid/content/pm/LauncherApps;

.field private final memoryLogger:Lcom/android/launcher3/model/LoaderMemoryLogger;

.field private final pendingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field private final pmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

.field private final shortcutKeyToPinnedShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final tempPackageKey:Lcom/android/launcher3/util/PackageUserKey;

.field private final unlockedUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final userManagerState:Lcom/android/launcher3/model/UserManagerState;

.field private final widgetInflater:Lcom/android/launcher3/widget/WidgetInflater;

.field private final widgetProvidersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/model/WorkspaceItemProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/WorkspaceItemProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->Companion:Lcom/android/launcher3/model/WorkspaceItemProcessor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/LoaderMemoryLogger;Lcom/android/launcher3/model/UserManagerState;Landroid/content/pm/LauncherApps;Ljava/util/Set;Ljava/util/Map;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/HashMap;ZLcom/android/launcher3/widget/WidgetInflater;Lcom/android/launcher3/util/PackageManagerHelper;Ljava/util/List;Landroid/util/LongSparseArray;Ljava/util/List;)V
    .locals 16
    .param p1, "c"    # Lcom/android/launcher3/model/LoaderCursor;
    .param p2, "memoryLogger"    # Lcom/android/launcher3/model/LoaderMemoryLogger;
    .param p3, "userManagerState"    # Lcom/android/launcher3/model/UserManagerState;
    .param p4, "launcherApps"    # Landroid/content/pm/LauncherApps;
    .param p5, "pendingPackages"    # Ljava/util/Set;
    .param p6, "shortcutKeyToPinnedShortcuts"    # Ljava/util/Map;
    .param p7, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p8, "bgDataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p9, "widgetProvidersMap"    # Ljava/util/Map;
    .param p10, "installingPkgs"    # Ljava/util/HashMap;
    .param p11, "isSdCardReady"    # Z
    .param p12, "widgetInflater"    # Lcom/android/launcher3/widget/WidgetInflater;
    .param p13, "pmHelper"    # Lcom/android/launcher3/util/PackageManagerHelper;
    .param p14, "iconRequestInfos"    # Ljava/util/List;
    .param p15, "unlockedUsers"    # Landroid/util/LongSparseArray;
    .param p16, "allDeepShortcuts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/LoaderCursor;",
            "Lcom/android/launcher3/model/LoaderMemoryLogger;",
            "Lcom/android/launcher3/model/UserManagerState;",
            "Landroid/content/pm/LauncherApps;",
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;Z",
            "Lcom/android/launcher3/widget/WidgetInflater;",
            "Lcom/android/launcher3/util/PackageManagerHelper;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;>;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    const-string v15, "c"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "userManagerState"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "launcherApps"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "pendingPackages"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "shortcutKeyToPinnedShortcuts"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "app"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "bgDataModel"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "widgetProvidersMap"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "installingPkgs"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "widgetInflater"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "pmHelper"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "iconRequestInfos"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "unlockedUsers"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "allDeepShortcuts"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    .line 58
    move-object/from16 v15, p2

    iput-object v15, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->memoryLogger:Lcom/android/launcher3/model/LoaderMemoryLogger;

    .line 59
    iput-object v2, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->userManagerState:Lcom/android/launcher3/model/UserManagerState;

    .line 60
    iput-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 61
    iput-object v4, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->pendingPackages:Ljava/util/Set;

    .line 62
    iput-object v5, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->shortcutKeyToPinnedShortcuts:Ljava/util/Map;

    .line 63
    iput-object v6, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->app:Lcom/android/launcher3/LauncherAppState;

    .line 64
    iput-object v7, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->bgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 65
    iput-object v8, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->widgetProvidersMap:Ljava/util/Map;

    .line 66
    iput-object v9, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->installingPkgs:Ljava/util/HashMap;

    .line 67
    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->isSdCardReady:Z

    .line 68
    iput-object v10, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->widgetInflater:Lcom/android/launcher3/widget/WidgetInflater;

    .line 69
    iput-object v11, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->pmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    .line 70
    iput-object v12, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->iconRequestInfos:Ljava/util/List;

    .line 71
    iput-object v13, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->unlockedUsers:Landroid/util/LongSparseArray;

    .line 72
    iput-object v14, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->allDeepShortcuts:Ljava/util/List;

    .line 75
    invoke-virtual/range {p7 .. p7}, Lcom/android/launcher3/LauncherAppState;->isSafeModeEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->isSafeMode:Z

    .line 76
    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->tempPackageKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 77
    invoke-virtual/range {p7 .. p7}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->iconCache:Lcom/android/launcher3/icons/IconCache;

    .line 56
    return-void
.end method

.method private final processAppOrDeepShortcut()V
    .locals 17

    .line 133
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 134
    .local v1, "allowMissingTarget":Z
    iget-object v2, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v2

    .line 135
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "missing_information_when_loading"

    if-nez v2, :cond_0

    .line 136
    iget-object v4, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v5, v4, Lcom/android/launcher3/model/LoaderCursor;->id:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Null intent from db for item id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 140
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->app:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->isPackageHidden(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v6, v5, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-nez v6, :cond_2

    const-string v6, "trust-hidden app, releasing its slot for item id="

    const-string v7, "trust_hidden_app"

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    return-void

    :cond_3
    nop

    .line 141
    iget-object v4, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->userManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v5, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-wide v5, v5, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(J)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 141
    move v4, v5

    goto :goto_1

    .line 142
    :cond_4
    move v4, v6

    .line 140
    :goto_1
    nop

    .line 139
    nop

    .line 143
    .local v4, "disabledState":I
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 144
    .local v7, "cn":Landroid/content/ComponentName;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    :cond_5
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "targetPkg":Ljava/lang/String;
    :cond_6
    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    move v9, v6

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_9

    .line 146
    iget-object v5, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v6, v5, Lcom/android/launcher3/model/LoaderCursor;->id:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No target package for item id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_9
    iget-object v9, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->launcherApps:Landroid/content/pm/LauncherApps;

    iget-object v11, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v11, v11, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v9, v8, v11}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v9

    .line 152
    .local v9, "validTarget":Z
    const-string v11, ", user="

    const/4 v12, 0x6

    const-string v13, "WorkspaceItemProcessor"

    if-eqz v7, :cond_c

    if-eqz v9, :cond_c

    iget-object v14, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v14, v14, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-eq v14, v12, :cond_c

    .line 156
    iget-object v14, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->launcherApps:Landroid/content/pm/LauncherApps;

    iget-object v15, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v15, v15, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v14, v7, v15}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 158
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v3}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    goto/16 :goto_4

    .line 162
    :cond_a
    nop

    .line 163
    iget-object v14, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v14, v14, Lcom/android/launcher3/model/LoaderCursor;->id:I

    iget-object v15, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v15, v15, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 164
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity not enabled for id="

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", component="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ". Will attempt to find fallback Activity for targetPkg="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, "."

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 161
    invoke-static {v13, v10}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v10, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->pmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v14, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v14, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v8, v14}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v2

    .line 167
    if-eqz v2, :cond_b

    .line 168
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iput v6, v3, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 169
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v3}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    const-string v10, "intent"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v10, v12}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto :goto_4

    .line 171
    :cond_b
    iget-object v5, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    .line 172
    iget v6, v5, Lcom/android/launcher3/model/LoaderCursor;->id:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No Activities found for id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", targetPkg="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ". Unable to create launch Intent."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 174
    nop

    .line 171
    invoke-virtual {v5, v6, v3}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void

    .line 182
    :cond_c
    :goto_4
    nop

    .line 183
    move-object v3, v8

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v10, 0x4

    if-nez v3, :cond_11

    if-nez v9, :cond_11

    .line 186
    nop

    .line 187
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v3, v3, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    const-string v12, "app_not_installed"

    if-eqz v3, :cond_e

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "package not yet restored: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->tempPackageKey:Lcom/android/launcher3/util/PackageUserKey;

    iget-object v14, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v14, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v14}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 192
    nop

    .line 193
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v3, v10}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 196
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->installingPkgs:Ljava/util/HashMap;

    iget-object v14, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->tempPackageKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 198
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    .line 199
    iget v12, v3, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    or-int/2addr v12, v10

    .line 198
    iput v12, v3, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restore started for installing app: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v3}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    iget-object v12, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v12, v12, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "restored"

    invoke-virtual {v3, v13, v12}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto :goto_5

    .line 204
    :cond_d
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removing app that is not restored and not installing. package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    nop

    .line 204
    invoke-virtual {v3, v5, v12}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void

    .line 212
    :cond_e
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->pmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v14, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v14, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v14}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 215
    or-int/lit8 v3, v4, 0x2

    .line 214
    move v4, v3

    .line 217
    const/4 v1, 0x1

    goto :goto_5

    .line 219
    :cond_f
    iget-boolean v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->isSdCardReady:Z

    if-nez v3, :cond_10

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing package, will check later: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->pendingPackages:Ljava/util/Set;

    new-instance v12, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v13, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v13, v13, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v12, v8, v13}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    const/4 v1, 0x1

    goto :goto_5

    .line 229
    :cond_10
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 231
    nop

    .line 229
    invoke-virtual {v3, v5, v12}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 238
    :cond_11
    :goto_5
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v3, v3, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_12

    .line 239
    const/4 v9, 0x0

    .line 241
    :cond_12
    if-eqz v9, :cond_13

    .line 244
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v3}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    .line 246
    :cond_13
    iget-object v3, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v3}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    .line 247
    .local v3, "useLowResIcon":Z
    const/4 v5, 0x0

    .line 248
    .local v5, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    nop

    .line 249
    iget-object v12, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v12, v12, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v12, :cond_14

    .line 251
    iget-object v6, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v6, v2}, Lcom/android/launcher3/model/LoaderCursor;->getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    move/from16 v16, v1

    goto/16 :goto_6

    .line 253
    :cond_14
    iget-object v12, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v12, v12, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-nez v12, :cond_15

    .line 254
    iget-object v10, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v10, v2, v1, v3, v6}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    move/from16 v16, v1

    goto/16 :goto_6

    .line 255
    :cond_15
    iget-object v6, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v6, v6, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v12, 0x6

    if-ne v6, v12, :cond_19

    .line 256
    iget-object v6, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v6, v6, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v2, v6}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v6

    .line 257
    .local v6, "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    iget-object v12, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->unlockedUsers:Landroid/util/LongSparseArray;

    iget-object v13, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-wide v13, v13, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v12, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "get(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 258
    iget-object v12, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->shortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ShortcutInfo;

    .line 259
    .local v12, "pinnedShortcut":Landroid/content/pm/ShortcutInfo;
    if-nez v12, :cond_16

    .line 261
    iget-object v10, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    .line 262
    invoke-virtual {v6}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v14, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    .end local v1    # "allowMissingTarget":Z
    .local v16, "allowMissingTarget":Z
    const-string v1, "Pinned shortcut not found from request. package="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    nop

    .line 261
    const-string v11, "shortcut_not_found"

    invoke-virtual {v10, v1, v11}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void

    .line 267
    .end local v16    # "allowMissingTarget":Z
    .restart local v1    # "allowMissingTarget":Z
    :cond_16
    move/from16 v16, v1

    .end local v1    # "allowMissingTarget":Z
    .restart local v16    # "allowMissingTarget":Z
    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v11, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->app:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    move-object v5, v1

    .line 270
    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->iconCache:Lcom/android/launcher3/icons/IconCache;

    move-object v11, v5

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v13, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    new-instance v14, Lcom/android/launcher3/model/WorkspaceItemProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v14, v13}, Lcom/android/launcher3/model/WorkspaceItemProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/LoaderCursor;)V

    invoke-virtual {v1, v11, v12, v14}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Predicate;)V

    .line 271
    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->pmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v11, v13}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 272
    nop

    .line 273
    iget v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    or-int/2addr v1, v10

    .line 272
    iput v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 275
    :cond_17
    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 276
    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->allDeepShortcuts:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 279
    .end local v12    # "pinnedShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v16    # "allowMissingTarget":Z
    .restart local v1    # "allowMissingTarget":Z
    :cond_18
    move/from16 v16, v1

    .end local v1    # "allowMissingTarget":Z
    .restart local v16    # "allowMissingTarget":Z
    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    .line 280
    nop

    .line 281
    iget v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    or-int/lit8 v1, v1, 0x20

    .line 280
    iput v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .end local v6    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    goto :goto_6

    .line 285
    .end local v16    # "allowMissingTarget":Z
    .restart local v1    # "allowMissingTarget":Z
    :cond_19
    move/from16 v16, v1

    .end local v1    # "allowMissingTarget":Z
    .restart local v16    # "allowMissingTarget":Z
    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    .line 288
    move-object v1, v8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->pmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v6, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v6, v6, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v8, v6}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 289
    or-int/lit8 v4, v4, 0x4

    .line 291
    :cond_1a
    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderCursor;->getOptions()I

    move-result v1

    iput v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I

    .line 295
    nop

    .line 296
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 297
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 298
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v6, "android.intent.action.MAIN"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 299
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 301
    nop

    .line 302
    nop

    .line 301
    const/high16 v1, 0x10200000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    :cond_1b
    :goto_6
    if-eqz v5, :cond_24

    .line 308
    iget v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v6, 0x6

    if-eq v1, v6, :cond_1c

    .line 311
    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->iconRequestInfos:Ljava/util/List;

    iget-object v6, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v6, v5, v3}, Lcom/android/launcher3/model/LoaderCursor;->createIconRequestInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Lcom/android/launcher3/model/data/IconRequestInfo;

    move-result-object v6

    const-string v10, "createIconRequestInfo(...)"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_1c
    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 314
    iput-object v2, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 315
    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderCursor;->getRank()I

    move-result v1

    iput v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    .line 316
    const/4 v1, 0x1

    iput v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->spanX:I

    .line 317
    iput v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->spanY:I

    .line 318
    iget v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    or-int/2addr v1, v4

    iput v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 319
    iget-boolean v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->isSafeMode:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->app:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 320
    nop

    .line 321
    iget v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    const/4 v6, 0x1

    or-int/2addr v1, v6

    .line 320
    iput v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 323
    :cond_1d
    iget-object v1, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderCursor;->getLauncherActivityInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v1

    .line 324
    .local v1, "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    if-eqz v1, :cond_1f

    .line 325
    invoke-static {v1}, Lcom/android/launcher3/uioverrides/ApiWrapper;->isNonResizeableActivity(Landroid/content/pm/LauncherActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 326
    iget v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 328
    :cond_1e
    nop

    .line 329
    invoke-static {v1}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v6

    .line 330
    nop

    .line 328
    const/4 v10, 0x2

    invoke-virtual {v5, v6, v10}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setProgressLevel(II)V

    .line 333
    :cond_1f
    nop

    .line 334
    iget-object v6, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v6, v6, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-nez v6, :cond_20

    .line 335
    invoke-static {}, Lcom/android/launcher3/Utilities;->enableSupportForArchiving()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 336
    if-eqz v1, :cond_23

    .line 337
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz v6, :cond_23

    :cond_20
    move-object v6, v8

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 339
    iget-object v6, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->tempPackageKey:Lcom/android/launcher3/util/PackageUserKey;

    iget-object v10, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v10, v10, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v8, v10}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 340
    iget-object v6, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->installingPkgs:Ljava/util/HashMap;

    iget-object v10, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->tempPackageKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 341
    .local v6, "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-nez v6, :cond_21

    .line 342
    nop

    .line 343
    iget v10, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 344
    nop

    .line 343
    and-int/lit16 v10, v10, -0x401

    .line 342
    iput v10, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    goto :goto_7

    .line 346
    :cond_21
    if-eqz v1, :cond_22

    .line 347
    invoke-static {}, Lcom/android/launcher3/Utilities;->enableSupportForArchiving()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 348
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz v10, :cond_23

    .line 352
    :cond_22
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v10

    const/16 v11, 0x64

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 353
    .local v10, "installProgress":I
    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setProgressLevel(II)V

    .line 356
    .end local v6    # "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v10    # "installProgress":I
    :cond_23
    :goto_7
    iget-object v6, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    move-object v10, v5

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v11, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->bgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v12, v0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->memoryLogger:Lcom/android/launcher3/model/LoaderMemoryLogger;

    invoke-virtual {v6, v10, v11, v12}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    .line 360
    .end local v1    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    return-void

    .line 358
    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected null WorkspaceItemInfo"

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final processFolderOrAppPair()V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->bgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v1, v1, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$processFolderOrAppPair_u24lambda_u240":Lcom/android/launcher3/model/data/FolderInfo;
    const/4 v2, 0x0

    .line 370
    .local v2, "$i$a$-apply-WorkspaceItemProcessor$processFolderOrAppPair$folderInfo$1":I
    iget-object v3, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 371
    iget-object v3, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v3, v3, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->itemType:I

    .line 373
    iget-object v3, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v4, v3, Lcom/android/launcher3/model/LoaderCursor;->mTitleIndex:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 374
    const/4 v3, 0x1

    iput v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->spanX:I

    .line 375
    iput v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->spanY:I

    .line 376
    iget-object v3, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v3}, Lcom/android/launcher3/model/LoaderCursor;->getOptions()I

    move-result v3

    iput v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    .line 377
    nop

    .line 369
    .end local v1    # "$this$processFolderOrAppPair_u24lambda_u240":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v2    # "$i$a$-apply-WorkspaceItemProcessor$processFolderOrAppPair$folderInfo$1":I
    nop

    .line 368
    nop

    .line 380
    .local v0, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v1, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    .line 381
    iget-object v1, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->bgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->memoryLogger:Lcom/android/launcher3/model/LoaderMemoryLogger;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    .line 382
    return-void
.end method

.method private final processWidget()V
    .locals 13

    .line 402
    iget-object v0, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v0}, Lcom/android/launcher3/model/LoaderCursor;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 403
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderCursor;->getAppWidgetId()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 404
    .local v1, "appWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 405
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderCursor;->getSpanX()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    .line 406
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderCursor;->getSpanY()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 407
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderCursor;->getOptions()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->options:I

    .line 408
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v2, v2, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 409
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderCursor;->getAppWidgetSource()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    .line 410
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v2, v2, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 411
    iget v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    const-string v3, "invalid_size_or_location"

    const-string v4, "x"

    if-lez v2, :cond_a

    iget v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    if-gtz v2, :cond_0

    goto/16 :goto_2

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    .line 420
    nop

    .line 421
    nop

    .line 419
    const-string v4, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void

    .line 425
    :cond_1
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 428
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->widgetInflater:Lcom/android/launcher3/widget/WidgetInflater;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/WidgetInflater;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Lcom/android/launcher3/widget/WidgetInflater$InflationResult;

    move-result-object v2

    .line 429
    .local v2, "inflationResult":Lcom/android/launcher3/widget/WidgetInflater$InflationResult;
    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;->isUpdate()Z

    move-result v3

    .line 430
    .local v3, "shouldUpdate":Z
    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;->getWidgetInfo()Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v5

    .line 432
    .local v5, "lapi":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 474
    :pswitch_0
    iget v6, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    .line 475
    move-object v7, v5

    check-cast v7, Landroid/appwidget/AppWidgetProviderInfo;

    .line 476
    iget-object v8, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->app:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 477
    iget v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    .line 478
    iget v10, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 473
    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRangesAsync(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 438
    :pswitch_1
    iget-object v6, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->tempPackageKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v8, v8, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 439
    iget-object v6, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->installingPkgs:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->tempPackageKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 441
    .local v6, "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    nop

    .line 442
    iget-object v7, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 443
    iget-boolean v7, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->isSafeMode:Z

    if-nez v7, :cond_4

    .line 444
    if-nez v6, :cond_4

    .line 445
    if-nez v5, :cond_4

    .line 446
    invoke-static {}, Lcom/android/launcher3/Utilities;->enableSupportForArchiving()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 447
    iget-object v7, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->pmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppArchived(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 450
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    .line 451
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrestored widget removed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 452
    nop

    .line 450
    const-string v8, "app_not_installed"

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void

    .line 456
    :cond_4
    iget-object v7, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v6, :cond_5

    .line 458
    const/4 v3, 0x1

    .line 459
    nop

    .line 460
    iget v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v7, v8

    .line 459
    iput v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 462
    :cond_5
    nop

    .line 463
    const/4 v7, 0x0

    if-nez v6, :cond_6

    move v8, v7

    goto :goto_0

    :cond_6
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v8

    const/16 v9, 0x64

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 462
    :goto_0
    iput v8, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    .line 464
    nop

    .line 466
    iget-object v8, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->app:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 467
    iget-object v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 468
    iget-object v10, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 465
    invoke-static {v8, v9, v10}, Lcom/android/launcher3/model/WidgetsModel;->newPendingItemInfo(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v8

    .line 464
    iput-object v8, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 470
    iget-object v8, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->iconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v9, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {v8, v9, v7}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    .end local v6    # "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_1

    .line 434
    :pswitch_2
    iget-object v4, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;->getRestoreErrorType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void

    .line 482
    :goto_1
    if-eqz v3, :cond_7

    .line 483
    iget-object v6, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v6}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v6

    .line 484
    const-string v7, "appWidgetProvider"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v6

    .line 485
    iget v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "appWidgetId"

    invoke-virtual {v6, v8, v7}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v6

    .line 486
    iget v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "restored"

    invoke-virtual {v6, v8, v7}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v6

    .line 487
    invoke-virtual {v6}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    .line 489
    :cond_7
    if-eqz v5, :cond_9

    .line 490
    iget-object v6, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->widgetProvidersMap:Ljava/util/Map;

    new-instance v7, Lcom/android/launcher3/util/ComponentKey;

    iget-object v8, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetInflater$InflationResult;->getWidgetInfo()Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget v6, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v7, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    if-lt v6, v7, :cond_8

    iget v6, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    iget v7, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    if-ge v6, v7, :cond_9

    .line 493
    :cond_8
    nop

    .line 494
    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget v7, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v8, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    iget v9, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget v10, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Widget "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " minSizes not meet: span="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " minSpan="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 492
    const-string v6, "WorkspaceItemProcessor"

    invoke-static {v6, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v4, Lcom/android/launcher3/model/WorkspaceItemProcessor;->Companion:Lcom/android/launcher3/model/WorkspaceItemProcessor$Companion;

    iget-object v6, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->app:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v6

    const-string v7, "getInvariantDeviceProfile(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6, v5}, Lcom/android/launcher3/model/WorkspaceItemProcessor$Companion;->access$logWidgetInfo(Lcom/android/launcher3/model/WorkspaceItemProcessor$Companion;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    .line 499
    :cond_9
    iget-object v4, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v7, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->bgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    .line 500
    return-void

    .line 412
    .end local v2    # "inflationResult":Lcom/android/launcher3/widget/WidgetInflater$InflationResult;
    .end local v3    # "shouldUpdate":Z
    .end local v5    # "lapi":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    :cond_a
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    .line 413
    iget v5, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v6, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Widget has invalid size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 414
    nop

    .line 412
    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final processItem()V
    .locals 4

    .line 88
    nop

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    .line 92
    iget v1, v0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User has been deleted for item id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v2, "user_profile_deleted"

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/WorkspaceItemProcessor;->c:Lcom/android/launcher3/model/LoaderCursor;

    iget v0, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 103
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/model/WorkspaceItemProcessor;->processWidget()V

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher3/model/WorkspaceItemProcessor;->processFolderOrAppPair()V

    goto :goto_1

    .line 99
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher3/model/WorkspaceItemProcessor;->processAppOrDeepShortcut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    :goto_0
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Desktop items loading interrupted"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "WorkspaceItemProcessor"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
