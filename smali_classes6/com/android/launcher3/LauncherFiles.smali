.class public Lcom/android/launcher3/LauncherFiles;
.super Ljava/lang/Object;
.source "LauncherFiles.java"


# static fields
.field public static final ALL_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_ICONS_DB:Ljava/lang/String; = "app_icons.db"

.field public static final BACKUP_DB:Ljava/lang/String; = "backup.db"

.field public static final DEVICE_PREFERENCES_KEY:Ljava/lang/String; = "com.android.launcher3.device.prefs"

.field public static final GRID_DB_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAUNCHER_2_BY_2_DB:Ljava/lang/String; = "launcher_2_by_2.db"

.field public static final LAUNCHER_3_BY_3_DB:Ljava/lang/String; = "launcher_3_by_3.db"

.field public static final LAUNCHER_4_BY_4_DB:Ljava/lang/String; = "launcher_4_by_4.db"

.field public static final LAUNCHER_4_BY_5_DB:Ljava/lang/String; = "launcher_4_by_5.db"

.field public static final LAUNCHER_5_BY_6_DB:Ljava/lang/String; = "launcher_5_by_6.db"

.field public static final LAUNCHER_5_BY_7_DB:Ljava/lang/String; = "launcher_5_by_7.db"

.field public static final LAUNCHER_6_BY_5_DB:Ljava/lang/String; = "launcher_6_by_5.db"

.field public static final LAUNCHER_6_BY_6_DB:Ljava/lang/String; = "launcher_6_by_6.db"

.field public static final LAUNCHER_DB:Ljava/lang/String; = "launcher.db"

.field public static final MANAGED_USER_PREFERENCES_KEY:Ljava/lang/String; = "com.android.launcher3.managedusers.prefs"

.field public static final OTHER_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "com.android.launcher3.prefs"

.field public static final WIDGET_PREVIEWS_DB:Ljava/lang/String; = "widgetpreviews.db"

.field private static final XML:Ljava/lang/String; = ".xml"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 37
    const-string v0, "launcher.db"

    const-string v1, "launcher_6_by_6.db"

    const-string v2, "launcher_6_by_5.db"

    const-string v3, "launcher_5_by_7.db"

    const-string v4, "launcher_5_by_6.db"

    const-string v5, "launcher_4_by_5.db"

    const-string v6, "launcher_4_by_4.db"

    const-string v7, "launcher_3_by_3.db"

    const-string v8, "launcher_2_by_2.db"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFiles;->GRID_DB_FILES:Ljava/util/List;

    .line 48
    const-string v1, "backup.db"

    const-string v2, "com.android.launcher3.prefs.xml"

    const-string v3, "widgetpreviews.db"

    const-string v4, "com.android.launcher3.managedusers.prefs.xml"

    const-string v5, "com.android.launcher3.device.prefs.xml"

    const-string v6, "app_icons.db"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFiles;->OTHER_FILES:Ljava/util/List;

    .line 63
    invoke-static {}, Lcom/android/launcher3/LauncherFiles;->createAllFiles()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFiles;->ALL_FILES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAllFiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/launcher3/LauncherFiles;->GRID_DB_FILES:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    sget-object v1, Lcom/android/launcher3/LauncherFiles;->OTHER_FILES:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
