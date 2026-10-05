.class public final Lcom/android/launcher3/LauncherPrefs;
.super Ljava/lang/Object;
.source "LauncherPrefs.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherPrefs$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLauncherPrefs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherPrefs.kt\ncom/android/launcher3/LauncherPrefs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,557:1\n1855#2,2:558\n1855#2,2:560\n1477#2:565\n1502#2,3:566\n1505#2,3:576\n1855#2,2:585\n1855#2,2:592\n1855#2,2:598\n2624#2,3:615\n1855#2,2:619\n1855#2,2:621\n1477#2:626\n1502#2,3:627\n1505#2,3:637\n1855#2,2:646\n1855#2,2:649\n3792#3:562\n4307#3,2:563\n3792#3:579\n4307#3,2:580\n11065#3:588\n11400#3,3:589\n11065#3:594\n11400#3,3:595\n10513#3:600\n10738#3,3:601\n10741#3,3:611\n3792#3:623\n4307#3,2:624\n3792#3:640\n4307#3,2:641\n372#4,7:569\n372#4,7:604\n372#4,7:630\n125#5:582\n152#5,2:583\n154#5:587\n215#5:614\n216#5:618\n125#5:643\n152#5,2:644\n154#5:648\n*S KotlinDebug\n*F\n+ 1 LauncherPrefs.kt\ncom/android/launcher3/LauncherPrefs\n*L\n118#1:558,2\n128#1:560,2\n146#1:565\n146#1:566,3\n146#1:576,3\n161#1:585,2\n204#1:592,2\n216#1:598,2\n227#1:615,3\n235#1:619,2\n238#1:621,2\n252#1:626\n252#1:627,3\n252#1:637,3\n267#1:646,2\n282#1:649,2\n145#1:562\n145#1:563,2\n150#1:579\n150#1:580,2\n202#1:588\n202#1:589,3\n214#1:594\n214#1:595,3\n225#1:600\n225#1:601,3\n225#1:611,3\n251#1:623\n251#1:624,2\n256#1:640\n256#1:641,2\n146#1:569,7\n225#1:604,7\n252#1:630,7\n159#1:582\n159#1:583,2\n159#1:587\n226#1:614\n226#1:618\n265#1:643\n265#1:644,2\n265#1:648\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 :2\u00020\u0001:\u0001:B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\'\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u0017\"\u00020\u000f\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u000fH\u0002J\u001f\u0010\u001b\u001a\u0002H\u001c\"\u0004\u0008\u0000\u0010\u001c2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001d\u00a2\u0006\u0002\u0010\u001eJ\u001f\u0010\u001b\u001a\u0002H\u001c\"\u0004\u0008\u0000\u0010\u001c2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f\u00a2\u0006\u0002\u0010 J#\u0010!\u001a\u0002H\u001c\"\u0004\u0008\u0000\u0010\u001c2\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\"\u001a\u0002H\u001cH\u0002\u00a2\u0006\u0002\u0010#J\u001f\u0010$\u001a\u00020\u000c2\u0012\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u0017\"\u00020\u000f\u00a2\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020\u0013J/\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(2\u001a\u0010*\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010+0\u0017H\u0002\u00a2\u0006\u0002\u0010,J#\u0010-\u001a\u0008\u0012\u0004\u0012\u00020)0(2\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u0017H\u0002\u00a2\u0006\u0002\u0010.J%\u0010/\u001a\u00020\u0013\"\u0008\u0008\u0000\u0010\u001c*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u00100\u001a\u0002H\u001c\u00a2\u0006\u0002\u00101J7\u0010/\u001a\u00020\u00132*\u00102\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010+0\u0017\"\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010+\u00a2\u0006\u0002\u00103J7\u00104\u001a\u00020\u00132*\u00102\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010+0\u0017\"\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010+\u00a2\u0006\u0002\u00103J\u001f\u00105\u001a\u00020\u00132\u0012\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u0017\"\u00020\u000f\u00a2\u0006\u0002\u00106J\'\u00107\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u0017\"\u00020\u000f\u00a2\u0006\u0002\u0010\u0018J\u001f\u00108\u001a\u00020\u00132\u0012\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u0017\"\u00020\u000f\u00a2\u0006\u0002\u00106J\u001e\u00109\u001a\u00020)*\u00020)2\u0006\u0010\u001a\u001a\u00020\u000f2\u0008\u00100\u001a\u0004\u0018\u00010\u0001H\u0002R\u001c\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR \u0010\u000e\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006*\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006;"
    }
    d2 = {
        "Lcom/android/launcher3/LauncherPrefs;",
        "",
        "encryptedContext",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "bootAwarePrefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "getBootAwarePrefs",
        "()Landroid/content/SharedPreferences;",
        "deviceProtectedStorageContext",
        "isStartupDataMigrated",
        "",
        "()Z",
        "encryptedPrefs",
        "Lcom/android/launcher3/Item;",
        "getEncryptedPrefs",
        "(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;",
        "addListener",
        "",
        "listener",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "items",
        "",
        "(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V",
        "chooseSharedPreferences",
        "item",
        "get",
        "T",
        "Lcom/android/launcher3/ConstantItem;",
        "(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;",
        "Lcom/android/launcher3/ContextualItem;",
        "(Lcom/android/launcher3/ContextualItem;)Ljava/lang/Object;",
        "getInner",
        "default",
        "(Lcom/android/launcher3/Item;Ljava/lang/Object;)Ljava/lang/Object;",
        "has",
        "([Lcom/android/launcher3/Item;)Z",
        "migrateStartupDataToDeviceProtectedStorage",
        "prepareToPutValues",
        "",
        "Landroid/content/SharedPreferences$Editor;",
        "updates",
        "Lkotlin/Pair;",
        "([Lkotlin/Pair;)Ljava/util/List;",
        "prepareToRemove",
        "([Lcom/android/launcher3/Item;)Ljava/util/List;",
        "put",
        "value",
        "(Lcom/android/launcher3/Item;Ljava/lang/Object;)V",
        "itemsToValues",
        "([Lkotlin/Pair;)V",
        "putSync",
        "remove",
        "([Lcom/android/launcher3/Item;)V",
        "removeListener",
        "removeSync",
        "putValue",
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
.field public static final ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ContextualItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_APPS_OVERVIEW_THRESHOLD:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOOT_AWARE_PREFS_KEY:Ljava/lang/String; = "boot_aware_prefs"

.field public static final Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

.field public static final DB_FILE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_TYPE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENABLE_TWOLINE_ALLAPPS_TOGGLE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRID_NAME:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOTSEAT_COUNT:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON_STATE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/LauncherPrefs;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_FIRST_LOAD_AFTER_RESTORE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_STARTUP_DATA_MIGRATED:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_DELAY:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_END_SCALE_PERCENT:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_ITERATIONS:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_SCALE_EXPONENT:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_START_SCALE_PERCENT:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_PRESS_NAV_HANDLE_SLOP_PERCENTAGE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_PRESS_NAV_HANDLE_TIMEOUT_MS:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final OLD_APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_SPACE_APPS:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROMISE_ICON_IDS:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECONFIGURABLE_WIDGET_EDUCATION_TIP_SEEN:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOULD_SHOW_SMARTSPACE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOULD_SHOW_SMARTSPACE_KEY:Ljava/lang/String; = "SHOULD_SHOW_SMARTSPACE_KEY"

.field private static final TAG:Ljava/lang/String; = "LauncherPrefs"

.field public static final TASKBAR_PINNING:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASKBAR_PINNING_KEY:Ljava/lang/String; = "TASKBAR_PINNING_KEY"

.field public static final THEMED_ICONS:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDGETS_EDUCATION_DIALOG_SEEN:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDGETS_EDUCATION_TIP_SEEN:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKSPACE_SIZE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORK_EDU_STEP:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final deviceProtectedStorageContext:Landroid/content/Context;

.field private final encryptedContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$87eF3dzlM5sU85wDO5c_TH_kbFA(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->INSTANCE$lambda$25(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 17

    new-instance v7, Lcom/android/launcher3/LauncherPrefs$Companion;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    .line 292
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/LauncherPrefs$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/LauncherPrefs$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 300
    sget-object v0, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    const-string v1, "pref_icon_shape_path"

    const-string v6, ""

    invoke-virtual {v7, v1, v6, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->ICON_STATE:Lcom/android/launcher3/ConstantItem;

    .line 303
    nop

    .line 304
    nop

    .line 305
    const/16 v0, 0xb4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 306
    sget-object v1, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 303
    const-string v2, "pref_all_apps_overview_threshold"

    invoke-virtual {v7, v2, v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->ALL_APPS_OVERVIEW_THRESHOLD:Lcom/android/launcher3/ConstantItem;

    .line 310
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    const-string v2, "LPNH_SLOP_PERCENTAGE"

    invoke-virtual {v7, v2, v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherPrefs;->LONG_PRESS_NAV_HANDLE_SLOP_PERCENTAGE:Lcom/android/launcher3/ConstantItem;

    .line 313
    nop

    .line 314
    nop

    .line 315
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 316
    sget-object v2, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 313
    const-string v3, "LPNH_TIMEOUT_MS"

    invoke-virtual {v7, v3, v1, v2}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherPrefs;->LONG_PRESS_NAV_HANDLE_TIMEOUT_MS:Lcom/android/launcher3/ConstantItem;

    .line 320
    nop

    .line 321
    nop

    .line 322
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 353
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 323
    sget-object v1, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 320
    const-string v2, "LPNH_HAPTIC_HINT_START_SCALE_PERCENT"

    invoke-virtual {v7, v2, v8, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherPrefs;->LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_START_SCALE_PERCENT:Lcom/android/launcher3/ConstantItem;

    .line 327
    nop

    .line 328
    nop

    .line 329
    nop

    .line 330
    sget-object v1, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 327
    const-string v2, "LPNH_HAPTIC_HINT_END_SCALE_PERCENT"

    invoke-virtual {v7, v2, v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_END_SCALE_PERCENT:Lcom/android/launcher3/ConstantItem;

    .line 334
    nop

    .line 335
    nop

    .line 336
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 337
    sget-object v1, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 334
    const-string v2, "LPNH_HAPTIC_HINT_SCALE_EXPONENT"

    invoke-virtual {v7, v2, v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_SCALE_EXPONENT:Lcom/android/launcher3/ConstantItem;

    .line 341
    nop

    .line 342
    nop

    .line 343
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 341
    const-string v2, "LPNH_HAPTIC_HINT_ITERATIONS"

    invoke-virtual {v7, v2, v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_ITERATIONS:Lcom/android/launcher3/ConstantItem;

    .line 348
    sget-object v0, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    const-string v1, "LPNH_HAPTIC_HINT_DELAY"

    invoke-virtual {v7, v1, v8, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_DELAY:Lcom/android/launcher3/ConstantItem;

    .line 351
    sget-object v0, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    const-string v1, "pref_private_space_apps"

    invoke-virtual {v7, v1, v8, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->PRIVATE_SPACE_APPS:Lcom/android/launcher3/ConstantItem;

    .line 353
    const-string v1, "pref_enable_two_line_toggle"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, v15

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->ENABLE_TWOLINE_ALLAPPS_TOGGLE:Lcom/android/launcher3/ConstantItem;

    .line 356
    sget-object v0, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    const-string v1, "themed_icons"

    invoke-virtual {v7, v1, v15, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->THEMED_ICONS:Lcom/android/launcher3/ConstantItem;

    .line 357
    const-string v1, "promise_icon_ids"

    const-string v2, ""

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->PROMISE_ICON_IDS:Lcom/android/launcher3/ConstantItem;

    .line 358
    const-string v1, "showed_work_profile_edu"

    move-object v0, v7

    move-object v2, v8

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->WORK_EDU_STEP:Lcom/android/launcher3/ConstantItem;

    .line 361
    nop

    .line 362
    nop

    .line 363
    nop

    .line 364
    sget-object v0, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 361
    const-string v1, "migration_src_workspace_size"

    invoke-virtual {v7, v1, v6, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->WORKSPACE_SIZE:Lcom/android/launcher3/ConstantItem;

    .line 368
    nop

    .line 369
    nop

    .line 370
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 371
    sget-object v1, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 368
    const-string v2, "migration_src_hotseat_count"

    invoke-virtual {v7, v2, v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->HOTSEAT_COUNT:Lcom/android/launcher3/ConstantItem;

    .line 375
    sget-object v0, Lcom/android/launcher3/EncryptionType;->DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    const-string v1, "TASKBAR_PINNING_KEY"

    invoke-virtual {v7, v1, v15, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->TASKBAR_PINNING:Lcom/android/launcher3/ConstantItem;

    .line 379
    nop

    .line 380
    nop

    .line 381
    nop

    .line 382
    sget-object v0, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 379
    const-string v1, "migration_src_device_type"

    invoke-virtual {v7, v1, v8, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->DEVICE_TYPE:Lcom/android/launcher3/ConstantItem;

    .line 386
    const-string v0, "migration_src_db_file"

    sget-object v1, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    invoke-virtual {v7, v0, v6, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->DB_FILE:Lcom/android/launcher3/ConstantItem;

    .line 389
    nop

    .line 390
    nop

    .line 391
    nop

    .line 392
    sget-object v0, Lcom/android/launcher3/EncryptionType;->DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 389
    const-string v1, "SHOULD_SHOW_SMARTSPACE_KEY"

    invoke-virtual {v7, v1, v15, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->SHOULD_SHOW_SMARTSPACE:Lcom/android/launcher3/ConstantItem;

    .line 396
    nop

    .line 397
    nop

    .line 398
    nop

    .line 399
    sget-object v0, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 396
    const-string v1, "restored_task_pending"

    invoke-virtual {v7, v1, v8, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;

    .line 403
    nop

    .line 404
    nop

    .line 405
    nop

    .line 406
    sget-object v0, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 403
    const-string v1, "first_load_after_restore"

    invoke-virtual {v7, v1, v15, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->IS_FIRST_LOAD_AFTER_RESTORE:Lcom/android/launcher3/ConstantItem;

    .line 408
    const-string v1, "appwidget_ids"

    const-string v2, ""

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    .line 409
    const-string v1, "appwidget_old_ids"

    const-string v2, ""

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->OLD_APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    .line 412
    new-instance v0, Lcom/android/launcher3/ConstantItem;

    .line 413
    const-string v2, "idp_grid_name"

    .line 414
    const/4 v3, 0x1

    .line 415
    const/4 v4, 0x0

    .line 416
    sget-object v5, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    const-class v6, Ljava/lang/String;

    .line 412
    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lcom/android/launcher3/EncryptionType;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->GRID_NAME:Lcom/android/launcher3/ConstantItem;

    .line 421
    const-string v1, "pref_allowRotation"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v0, Lcom/android/launcher3/LauncherPrefs$Companion$ALLOW_ROTATION$1;->INSTANCE:Lcom/android/launcher3/LauncherPrefs$Companion$ALLOW_ROTATION$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Class;Lcom/android/launcher3/EncryptionType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/android/launcher3/ContextualItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;

    .line 426
    new-instance v0, Lcom/android/launcher3/ConstantItem;

    .line 427
    const-string v10, "is_startup_data_boot_aware"

    .line 428
    const/4 v11, 0x0

    .line 429
    nop

    .line 430
    sget-object v13, Lcom/android/launcher3/EncryptionType;->DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    .line 426
    const/4 v14, 0x0

    const/16 v1, 0x10

    const/16 v16, 0x0

    move-object v9, v0

    move-object v12, v15

    move-object v6, v15

    move v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lcom/android/launcher3/EncryptionType;Ljava/lang/Class;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->IS_STARTUP_DATA_MIGRATED:Lcom/android/launcher3/ConstantItem;

    .line 436
    const-string v1, "launcher.reconfigurable_widget_education_tip_seen"

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->RECONFIGURABLE_WIDGET_EDUCATION_TIP_SEEN:Lcom/android/launcher3/ConstantItem;

    .line 439
    const-string v1, "launcher.widgets_education_dialog_seen"

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->WIDGETS_EDUCATION_DIALOG_SEEN:Lcom/android/launcher3/ConstantItem;

    .line 441
    const-string v1, "launcher.widgets_education_tip_seen"

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->WIDGETS_EDUCATION_TIP_SEEN:Lcom/android/launcher3/ConstantItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "encryptedContext"    # Landroid/content/Context;

    const-string v0, "encryptedContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherPrefs;->encryptedContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherPrefs;->deviceProtectedStorageContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private static final INSTANCE$lambda$25(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;
    .locals 1
    .param p0, "it"    # Landroid/content/Context;

    .line 292
    new-instance v0, Lcom/android/launcher3/LauncherPrefs;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherPrefs;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/android/launcher3/EncryptionType;",
            ")",
            "Lcom/android/launcher3/ConstantItem<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    return-object v0
.end method

.method public static final backedUpItem(Ljava/lang/String;Ljava/lang/Class;Lcom/android/launcher3/EncryptionType;Lkotlin/jvm/functions/Function1;)Lcom/android/launcher3/ContextualItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/android/launcher3/EncryptionType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+TT;>;)",
            "Lcom/android/launcher3/ContextualItem<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Class;Lcom/android/launcher3/EncryptionType;Lkotlin/jvm/functions/Function1;)Lcom/android/launcher3/ContextualItem;

    move-result-object v0

    return-object v0
.end method

.method private final chooseSharedPreferences(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/Item;

    .line 65
    nop

    .line 66
    invoke-static {}, Lcom/android/launcher3/LauncherPrefsKt;->getMoveStartupDataToDeviceProtectedStorageIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getEncryptionType()Lcom/android/launcher3/EncryptionType;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherPrefs;->isStartupDataMigrated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getEncryptionType()Lcom/android/launcher3/EncryptionType;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/EncryptionType;->DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    if-ne v0, v1, :cond_2

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/LauncherPrefs;->getBootAwarePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "<get-bootAwarePrefs>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->getEncryptedPrefs(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "<get-encryptedPrefs>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static final get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    return-object v0
.end method

.method private final getBootAwarePrefs()Landroid/content/SharedPreferences;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/LauncherPrefs;->deviceProtectedStorageContext:Landroid/content/Context;

    const-string v1, "boot_aware_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static final getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Don\'t use shared preferences directly. Use other LauncherPref methods."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private final getEncryptedPrefs(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "$this$encryptedPrefs"    # Lcom/android/launcher3/Item;

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/LauncherPrefs;->encryptedContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefFile()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private final getInner(Lcom/android/launcher3/Item;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "item"    # Lcom/android/launcher3/Item;
    .param p2, "default"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/Item;",
            "TT;)TT;"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->chooseSharedPreferences(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 90
    const-class v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    :cond_0
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 92
    :cond_1
    nop

    .line 91
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    .line 92
    :cond_2
    const-class v2, Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_4

    .line 94
    :cond_3
    nop

    .line 93
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    .line 94
    :cond_4
    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_4

    .line 96
    :cond_5
    nop

    .line 95
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_2

    .line 96
    :cond_6
    const-class v2, Ljava/lang/Float;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_4

    .line 98
    :cond_7
    nop

    .line 97
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    .line 98
    :cond_8
    const-class v2, Ljava/lang/Long;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_9

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_4

    .line 99
    :cond_9
    const-class v2, Ljava/util/Set;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p2, Ljava/util/Set;

    if-eqz v2, :cond_a

    move-object v3, p2

    check-cast v3, Ljava/util/Set;

    :cond_a
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 89
    :goto_4
    return-object v1

    .line 101
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 102
    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getType()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not compatible with sharedPref methods"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Don\'t use shared preferences directly. Use other LauncherPref methods."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static final nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/android/launcher3/EncryptionType;",
            ")",
            "Lcom/android/launcher3/ConstantItem<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    return-object v0
.end method

.method private final prepareToPutValues([Lkotlin/Pair;)Ljava/util/List;
    .locals 23
    .param p1, "updates"    # [Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "+",
            "Lcom/android/launcher3/Item;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$Editor;",
            ">;"
        }
    .end annotation

    .line 144
    move-object/from16 v0, p0

    .line 145
    move-object/from16 v1, p1

    .local v1, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 562
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 563
    .local v5, "$i$f$filterTo":I
    array-length v6, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v6, :cond_2

    aget-object v10, v4, v8

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it":Lkotlin/Pair;
    const/4 v12, 0x0

    .line 145
    .local v12, "$i$a$-filter-LauncherPrefs$prepareToPutValues$updatesPerPrefFile$1":I
    invoke-virtual {v11}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/Item;

    invoke-virtual {v13}, Lcom/android/launcher3/Item;->getEncryptionType()Lcom/android/launcher3/EncryptionType;

    move-result-object v13

    sget-object v14, Lcom/android/launcher3/EncryptionType;->DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    if-eq v13, v14, :cond_0

    goto :goto_1

    :cond_0
    move v9, v7

    .line 563
    .end local v11    # "it":Lkotlin/Pair;
    .end local v12    # "$i$a$-filter-LauncherPrefs$prepareToPutValues$updatesPerPrefFile$1":I
    :goto_1
    if-eqz v9, :cond_1

    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 564
    :cond_2
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 562
    nop

    .end local v1    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$filter":I
    check-cast v3, Ljava/lang/Iterable;

    .line 146
    move-object v1, v3

    .local v1, "$this$groupBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 565
    .local v2, "$i$f$groupBy":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v1

    .local v4, "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 566
    .local v5, "$i$f$groupByTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 567
    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v8

    check-cast v10, Lkotlin/Pair;

    .local v10, "it":Lkotlin/Pair;
    const/4 v11, 0x0

    .line 146
    .local v11, "$i$a$-groupBy-LauncherPrefs$prepareToPutValues$updatesPerPrefFile$2":I
    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/Item;

    invoke-direct {v0, v12}, Lcom/android/launcher3/LauncherPrefs;->getEncryptedPrefs(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 567
    .end local v10    # "it":Lkotlin/Pair;
    .end local v11    # "$i$a$-groupBy-LauncherPrefs$prepareToPutValues$updatesPerPrefFile$2":I
    nop

    .line 568
    .local v10, "key$iv$iv":Ljava/lang/Object;
    move-object v11, v3

    .local v11, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    const/4 v12, 0x0

    .line 569
    .local v12, "$i$f$getOrPut":I
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 570
    .local v13, "value$iv$iv$iv":Ljava/lang/Object;
    if-nez v13, :cond_3

    .line 571
    const/4 v14, 0x0

    .line 568
    .local v14, "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    check-cast v15, Ljava/util/List;

    .line 571
    .end local v14    # "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    move-object v14, v15

    .line 572
    .local v14, "answer$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v11, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    nop

    .end local v14    # "answer$iv$iv$iv":Ljava/lang/Object;
    goto :goto_3

    .line 575
    :cond_3
    move-object v14, v13

    .line 570
    :goto_3
    nop

    .line 568
    .end local v11    # "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    .end local v12    # "$i$f$getOrPut":I
    .end local v13    # "value$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v14

    check-cast v11, Ljava/util/List;

    .line 576
    .local v11, "list$iv$iv":Ljava/util/List;
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 578
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "key$iv$iv":Ljava/lang/Object;
    .end local v11    # "list$iv$iv":Ljava/util/List;
    :cond_4
    nop

    .line 565
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$groupByTo":I
    nop

    .line 147
    .end local v1    # "$this$groupBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$groupBy":I
    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 143
    nop

    .line 150
    .local v1, "updatesPerPrefFile":Ljava/util/Map;
    move-object/from16 v2, p1

    .local v2, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 579
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 580
    .local v6, "$i$f$filterTo":I
    array-length v8, v5

    move v10, v7

    :goto_4
    if-ge v10, v8, :cond_9

    aget-object v11, v5, v10

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it":Lkotlin/Pair;
    const/4 v13, 0x0

    .line 151
    .local v13, "$i$a$-filter-LauncherPrefs$prepareToPutValues$bootAwareUpdates$1":I
    invoke-virtual {v12}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/Item;

    invoke-virtual {v14}, Lcom/android/launcher3/Item;->getEncryptionType()Lcom/android/launcher3/EncryptionType;

    move-result-object v14

    sget-object v15, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    if-ne v14, v15, :cond_5

    .line 152
    invoke-static {}, Lcom/android/launcher3/LauncherPrefsKt;->getMoveStartupDataToDeviceProtectedStorageIsEnabled()Z

    move-result v14

    if-nez v14, :cond_6

    .line 153
    :cond_5
    invoke-virtual {v12}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/Item;

    invoke-virtual {v14}, Lcom/android/launcher3/Item;->getEncryptionType()Lcom/android/launcher3/EncryptionType;

    move-result-object v14

    sget-object v15, Lcom/android/launcher3/EncryptionType;->DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    if-ne v14, v15, :cond_7

    :cond_6
    move v14, v9

    goto :goto_5

    :cond_7
    move v14, v7

    .line 151
    :goto_5
    nop

    .line 580
    .end local v12    # "it":Lkotlin/Pair;
    .end local v13    # "$i$a$-filter-LauncherPrefs$prepareToPutValues$bootAwareUpdates$1":I
    if-eqz v14, :cond_8

    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 581
    :cond_9
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 579
    nop

    .line 150
    .end local v2    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$filter":I
    nop

    .line 149
    move-object v2, v4

    .line 155
    .local v2, "bootAwareUpdates":Ljava/util/List;
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v9

    if-eqz v3, :cond_a

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherPrefs;->getBootAwarePrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_a
    move-object v3, v1

    .local v3, "$this$map$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 582
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 583
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 584
    .local v9, "item$iv$iv":Ljava/util/Map$Entry;
    move-object v10, v9

    .local v10, "prefToItemValueList":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 160
    .local v11, "$i$a$-map-LauncherPrefs$prepareToPutValues$1":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    move-object v13, v12

    .local v13, "$this$prepareToPutValues_u24lambda_u247_u24lambda_u246":Landroid/content/SharedPreferences$Editor;
    const/4 v14, 0x0

    .line 161
    .local v14, "$i$a$-apply-LauncherPrefs$prepareToPutValues$1$1":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    .local v15, "$this$forEach$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 585
    .local v16, "$i$f$forEach":I
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .local v18, "element$iv":Ljava/lang/Object;
    move-object/from16 v19, v18

    check-cast v19, Lkotlin/Pair;

    .local v19, "itemToValue":Lkotlin/Pair;
    const/16 v20, 0x0

    .line 162
    .local v20, "$i$a$-forEach-LauncherPrefs$prepareToPutValues$1$1$1":I
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v1

    .end local v1    # "updatesPerPrefFile":Ljava/util/Map;
    .local v22, "updatesPerPrefFile":Ljava/util/Map;
    move-object/from16 v1, v21

    check-cast v1, Lcom/android/launcher3/Item;

    move-object/from16 v21, v2

    .end local v2    # "bootAwareUpdates":Ljava/util/List;
    .local v21, "bootAwareUpdates":Ljava/util/List;
    invoke-virtual/range {v19 .. v19}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher3/LauncherPrefs;->putValue(Landroid/content/SharedPreferences$Editor;Lcom/android/launcher3/Item;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    .line 163
    nop

    .line 585
    .end local v19    # "itemToValue":Lkotlin/Pair;
    .end local v20    # "$i$a$-forEach-LauncherPrefs$prepareToPutValues$1$1$1":I
    move-object/from16 v2, v21

    move-object/from16 v1, v22

    .end local v18    # "element$iv":Ljava/lang/Object;
    goto :goto_7

    .line 586
    .end local v21    # "bootAwareUpdates":Ljava/util/List;
    .end local v22    # "updatesPerPrefFile":Ljava/util/Map;
    .restart local v1    # "updatesPerPrefFile":Ljava/util/Map;
    .restart local v2    # "bootAwareUpdates":Ljava/util/List;
    :cond_b
    move-object/from16 v22, v1

    move-object/from16 v21, v2

    .line 164
    .end local v1    # "updatesPerPrefFile":Ljava/util/Map;
    .end local v2    # "bootAwareUpdates":Ljava/util/List;
    .end local v15    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$forEach":I
    .restart local v21    # "bootAwareUpdates":Ljava/util/List;
    .restart local v22    # "updatesPerPrefFile":Ljava/util/Map;
    nop

    .line 160
    .end local v13    # "$this$prepareToPutValues_u24lambda_u247_u24lambda_u246":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "$i$a$-apply-LauncherPrefs$prepareToPutValues$1$1":I
    nop

    .line 584
    .end local v10    # "prefToItemValueList":Ljava/util/Map$Entry;
    .end local v11    # "$i$a$-map-LauncherPrefs$prepareToPutValues$1":I
    invoke-interface {v5, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 587
    .end local v9    # "item$iv$iv":Ljava/util/Map$Entry;
    .end local v21    # "bootAwareUpdates":Ljava/util/List;
    .end local v22    # "updatesPerPrefFile":Ljava/util/Map;
    .restart local v1    # "updatesPerPrefFile":Ljava/util/Map;
    .restart local v2    # "bootAwareUpdates":Ljava/util/List;
    :cond_c
    move-object/from16 v22, v1

    .end local v1    # "updatesPerPrefFile":Ljava/util/Map;
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$mapTo":I
    .restart local v22    # "updatesPerPrefFile":Ljava/util/Map;
    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .line 582
    nop

    .line 159
    .end local v3    # "$this$map$iv":Ljava/util/Map;
    .end local v4    # "$i$f$map":I
    return-object v1
.end method

.method private final prepareToRemove([Lcom/android/launcher3/Item;)Ljava/util/List;
    .locals 23
    .param p1, "items"    # [Lcom/android/launcher3/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/Item;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$Editor;",
            ">;"
        }
    .end annotation

    .line 250
    nop

    .line 251
    move-object/from16 v0, p1

    .local v0, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 623
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 624
    .local v4, "$i$f$filterTo":I
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_2

    aget-object v9, v3, v7

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it":Lcom/android/launcher3/Item;
    const/4 v11, 0x0

    .line 251
    .local v11, "$i$a$-filter-LauncherPrefs$prepareToRemove$itemsPerFile$1":I
    invoke-virtual {v10}, Lcom/android/launcher3/Item;->getEncryptionType()Lcom/android/launcher3/EncryptionType;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/EncryptionType;->DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    if-eq v12, v13, :cond_0

    goto :goto_1

    :cond_0
    move v8, v6

    .line 624
    .end local v10    # "it":Lcom/android/launcher3/Item;
    .end local v11    # "$i$a$-filter-LauncherPrefs$prepareToRemove$itemsPerFile$1":I
    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 625
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 623
    nop

    .end local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 252
    move-object v0, v2

    .local v0, "$this$groupBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 626
    .local v1, "$i$f$groupBy":I
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .local v2, "destination$iv$iv":Ljava/util/Map;
    move-object v3, v0

    .local v3, "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 627
    .local v4, "$i$f$groupByTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 628
    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v7

    check-cast v9, Lcom/android/launcher3/Item;

    .local v9, "it":Lcom/android/launcher3/Item;
    const/4 v10, 0x0

    .line 252
    .local v10, "$i$a$-groupBy-LauncherPrefs$prepareToRemove$itemsPerFile$2":I
    move-object/from16 v11, p0

    invoke-direct {v11, v9}, Lcom/android/launcher3/LauncherPrefs;->getEncryptedPrefs(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 628
    .end local v9    # "it":Lcom/android/launcher3/Item;
    .end local v10    # "$i$a$-groupBy-LauncherPrefs$prepareToRemove$itemsPerFile$2":I
    nop

    .line 629
    .local v9, "key$iv$iv":Ljava/lang/Object;
    move-object v10, v2

    .local v10, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    const/4 v12, 0x0

    .line 630
    .local v12, "$i$f$getOrPut":I
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 631
    .local v13, "value$iv$iv$iv":Ljava/lang/Object;
    if-nez v13, :cond_3

    .line 632
    const/4 v14, 0x0

    .line 629
    .local v14, "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    check-cast v15, Ljava/util/List;

    .line 632
    .end local v14    # "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    move-object v14, v15

    .line 633
    .local v14, "answer$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    nop

    .end local v14    # "answer$iv$iv$iv":Ljava/lang/Object;
    goto :goto_3

    .line 636
    :cond_3
    move-object v14, v13

    .line 631
    :goto_3
    nop

    .line 629
    .end local v10    # "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    .end local v12    # "$i$f$getOrPut":I
    .end local v13    # "value$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v14

    check-cast v10, Ljava/util/List;

    .line 637
    .local v10, "list$iv$iv":Ljava/util/List;
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 639
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "key$iv$iv":Ljava/lang/Object;
    .end local v10    # "list$iv$iv":Ljava/util/List;
    :cond_4
    move-object/from16 v11, p0

    .line 626
    .end local v2    # "destination$iv$iv":Ljava/util/Map;
    .end local v3    # "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$groupByTo":I
    nop

    .line 253
    .end local v0    # "$this$groupBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$groupBy":I
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 249
    nop

    .line 256
    .local v0, "itemsPerFile":Ljava/util/Map;
    move-object/from16 v1, p1

    .local v1, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 640
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 641
    .local v5, "$i$f$filterTo":I
    array-length v7, v4

    move v9, v6

    :goto_4
    if-ge v9, v7, :cond_9

    aget-object v10, v4, v9

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v10

    .local v12, "it":Lcom/android/launcher3/Item;
    const/4 v13, 0x0

    .line 257
    .local v13, "$i$a$-filter-LauncherPrefs$prepareToRemove$bootAwareUpdates$1":I
    invoke-virtual {v12}, Lcom/android/launcher3/Item;->getEncryptionType()Lcom/android/launcher3/EncryptionType;

    move-result-object v14

    sget-object v15, Lcom/android/launcher3/EncryptionType;->MOVE_TO_DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    if-ne v14, v15, :cond_5

    .line 258
    invoke-static {}, Lcom/android/launcher3/LauncherPrefsKt;->getMoveStartupDataToDeviceProtectedStorageIsEnabled()Z

    move-result v14

    if-nez v14, :cond_6

    .line 259
    :cond_5
    invoke-virtual {v12}, Lcom/android/launcher3/Item;->getEncryptionType()Lcom/android/launcher3/EncryptionType;

    move-result-object v14

    sget-object v15, Lcom/android/launcher3/EncryptionType;->DEVICE_PROTECTED:Lcom/android/launcher3/EncryptionType;

    if-ne v14, v15, :cond_7

    :cond_6
    move v14, v8

    goto :goto_5

    :cond_7
    move v14, v6

    .line 257
    :goto_5
    nop

    .line 641
    .end local v12    # "it":Lcom/android/launcher3/Item;
    .end local v13    # "$i$a$-filter-LauncherPrefs$prepareToRemove$bootAwareUpdates$1":I
    if-eqz v14, :cond_8

    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 642
    :cond_9
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 640
    nop

    .line 256
    .end local v1    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$filter":I
    nop

    .line 255
    move-object v1, v3

    .line 261
    .local v1, "bootAwareUpdates":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v8

    if-eqz v2, :cond_a

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherPrefs;->getBootAwarePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_a
    move-object v2, v0

    .local v2, "$this$map$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 643
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v6, 0x0

    .line 644
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 645
    .local v8, "item$iv$iv":Ljava/util/Map$Entry;
    const/4 v9, 0x0

    .line 265
    .local v9, "$i$a$-map-LauncherPrefs$prepareToRemove$1":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/SharedPreferences;

    .local v10, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 266
    .local v12, "items":Ljava/util/List;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object v14, v13

    .local v14, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v15, 0x0

    .line 267
    .local v15, "$i$a$-also-LauncherPrefs$prepareToRemove$1$1":I
    move-object/from16 v16, v12

    check-cast v16, Ljava/lang/Iterable;

    .local v16, "$this$forEach$iv":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 646
    .local v17, "$i$f$forEach":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "element$iv":Ljava/lang/Object;
    move-object/from16 v20, v19

    check-cast v20, Lcom/android/launcher3/Item;

    .local v20, "item":Lcom/android/launcher3/Item;
    const/16 v21, 0x0

    .line 267
    .local v21, "$i$a$-forEach-LauncherPrefs$prepareToRemove$1$1$1":I
    move-object/from16 v22, v0

    .end local v0    # "itemsPerFile":Ljava/util/Map;
    .local v22, "itemsPerFile":Ljava/util/Map;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 646
    .end local v20    # "item":Lcom/android/launcher3/Item;
    .end local v21    # "$i$a$-forEach-LauncherPrefs$prepareToRemove$1$1$1":I
    move-object/from16 v0, v22

    .end local v19    # "element$iv":Ljava/lang/Object;
    goto :goto_7

    .line 647
    .end local v22    # "itemsPerFile":Ljava/util/Map;
    .restart local v0    # "itemsPerFile":Ljava/util/Map;
    :cond_b
    move-object/from16 v22, v0

    .line 268
    .end local v0    # "itemsPerFile":Ljava/util/Map;
    .end local v16    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$forEach":I
    .restart local v22    # "itemsPerFile":Ljava/util/Map;
    nop

    .line 266
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "$i$a$-also-LauncherPrefs$prepareToRemove$1$1":I
    nop

    .line 645
    .end local v9    # "$i$a$-map-LauncherPrefs$prepareToRemove$1":I
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "items":Ljava/util/List;
    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 648
    .end local v8    # "item$iv$iv":Ljava/util/Map$Entry;
    .end local v22    # "itemsPerFile":Ljava/util/Map;
    .restart local v0    # "itemsPerFile":Ljava/util/Map;
    :cond_c
    move-object/from16 v22, v0

    .end local v0    # "itemsPerFile":Ljava/util/Map;
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapTo":I
    .restart local v22    # "itemsPerFile":Ljava/util/Map;
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 643
    nop

    .line 265
    .end local v2    # "$this$map$iv":Ljava/util/Map;
    .end local v3    # "$i$f$map":I
    return-object v0
.end method

.method private final putValue(Landroid/content/SharedPreferences$Editor;Lcom/android/launcher3/Item;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "$this$putValue"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "item"    # Lcom/android/launcher3/Item;
    .param p3, "value"    # Ljava/lang/Object;

    .line 178
    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 179
    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :cond_0
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "putString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 181
    :cond_1
    nop

    .line 180
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    .line 181
    :cond_2
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "putBoolean(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 183
    :cond_3
    nop

    .line 182
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    .line 183
    :cond_4
    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "putInt(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 185
    :cond_5
    nop

    .line 184
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_2

    .line 185
    :cond_6
    const-class v1, Ljava/lang/Float;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "putFloat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 187
    :cond_7
    nop

    .line 186
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 187
    :cond_8
    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "putLong(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 188
    :cond_9
    const-class v1, Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p3, Ljava/util/Set;

    if-eqz v1, :cond_a

    move-object v2, p3

    check-cast v2, Ljava/util/Set;

    :cond_a
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "putStringSet(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    :goto_4
    return-object v0

    .line 190
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 191
    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getType()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not compatible with sharedPref methods"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final varargs addListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V
    .locals 10
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .param p2, "items"    # [Lcom/android/launcher3/Item;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    nop

    .line 202
    move-object v0, p2

    .local v0, "$this$map$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 588
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 589
    .local v4, "$i$f$mapTo":I
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    .line 590
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it":Lcom/android/launcher3/Item;
    const/4 v9, 0x0

    .line 202
    .local v9, "$i$a$-map-LauncherPrefs$addListener$1":I
    invoke-direct {p0, v8}, Lcom/android/launcher3/LauncherPrefs;->chooseSharedPreferences(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 590
    .end local v8    # "it":Lcom/android/launcher3/Item;
    .end local v9    # "$i$a$-map-LauncherPrefs$addListener$1":I
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 589
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 591
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 588
    nop

    .end local v0    # "$this$map$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 203
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 204
    nop

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 592
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/content/SharedPreferences;

    .local v4, "it":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 204
    .local v5, "$i$a$-forEach-LauncherPrefs$addListener$2":I
    invoke-interface {v4, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 592
    .end local v4    # "it":Landroid/content/SharedPreferences;
    .end local v5    # "$i$a$-forEach-LauncherPrefs$addListener$2":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 593
    :cond_1
    nop

    .line 205
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/ConstantItem<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Item;

    invoke-virtual {p1}, Lcom/android/launcher3/ConstantItem;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/LauncherPrefs;->getInner(Lcom/android/launcher3/Item;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(Lcom/android/launcher3/ContextualItem;)Ljava/lang/Object;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/ContextualItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/ContextualItem<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Item;

    iget-object v1, p0, Lcom/android/launcher3/LauncherPrefs;->encryptedContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/ContextualItem;->defaultValueFromContext(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/LauncherPrefs;->getInner(Lcom/android/launcher3/Item;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final varargs has([Lcom/android/launcher3/Item;)Z
    .locals 17
    .param p1, "items"    # [Lcom/android/launcher3/Item;

    const-string v0, "items"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    nop

    .line 225
    move-object/from16 v0, p1

    .local v0, "$this$groupBy$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 600
    .local v2, "$i$f$groupBy":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v0

    .local v4, "$this$groupByTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 601
    .local v5, "$i$f$groupByTo":I
    array-length v6, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, v4, v8

    .line 602
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it":Lcom/android/launcher3/Item;
    const/4 v11, 0x0

    .line 225
    .local v11, "$i$a$-groupBy-LauncherPrefs$has$1":I
    move-object/from16 v12, p0

    invoke-direct {v12, v10}, Lcom/android/launcher3/LauncherPrefs;->chooseSharedPreferences(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 602
    .end local v10    # "it":Lcom/android/launcher3/Item;
    .end local v11    # "$i$a$-groupBy-LauncherPrefs$has$1":I
    nop

    .line 603
    .local v10, "key$iv$iv":Ljava/lang/Object;
    move-object v11, v3

    .local v11, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    const/4 v13, 0x0

    .line 604
    .local v13, "$i$f$getOrPut":I
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 605
    .local v14, "value$iv$iv$iv":Ljava/lang/Object;
    if-nez v14, :cond_0

    .line 606
    const/4 v15, 0x0

    .line 603
    .local v15, "$i$a$-getOrPut-ArraysKt___ArraysKt$groupByTo$list$1$iv$iv":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    check-cast v16, Ljava/util/List;

    .line 606
    .end local v15    # "$i$a$-getOrPut-ArraysKt___ArraysKt$groupByTo$list$1$iv$iv":I
    move-object/from16 v15, v16

    .line 607
    .local v15, "answer$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v11, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    nop

    .end local v15    # "answer$iv$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 610
    :cond_0
    move-object v15, v14

    .line 605
    :goto_1
    nop

    .line 603
    .end local v11    # "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    .end local v13    # "$i$f$getOrPut":I
    .end local v14    # "value$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v15

    check-cast v11, Ljava/util/List;

    .line 611
    .local v11, "list$iv$iv":Ljava/util/List;
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "key$iv$iv":Ljava/lang/Object;
    .end local v11    # "list$iv$iv":Ljava/util/List;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 613
    :cond_1
    move-object/from16 v12, p0

    .line 600
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$groupByTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$groupByTo":I
    nop

    .line 226
    .end local v0    # "$this$groupBy$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$groupBy":I
    move-object v0, v3

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 614
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "element$iv":Ljava/util/Map$Entry;
    const/4 v6, 0x0

    .line 226
    .local v6, "$i$a$-forEach-LauncherPrefs$has$2":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SharedPreferences;

    .local v8, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 227
    .local v9, "itemsSublist":Ljava/util/List;
    move-object v10, v9

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 615
    .local v11, "$i$f$none":I
    instance-of v13, v10, Ljava/util/Collection;

    if-eqz v13, :cond_2

    move-object v13, v10

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_3

    .line 616
    :cond_2
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lcom/android/launcher3/Item;

    .local v15, "it":Lcom/android/launcher3/Item;
    const/16 v16, 0x0

    .line 227
    .local v16, "$i$a$-none-LauncherPrefs$has$2$1":I
    invoke-virtual {v15}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    .line 616
    .end local v15    # "it":Lcom/android/launcher3/Item;
    .end local v16    # "$i$a$-none-LauncherPrefs$has$2$1":I
    xor-int/2addr v7, v5

    if-eqz v7, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    .line 617
    .end local v14    # "element$iv":Ljava/lang/Object;
    :cond_4
    nop

    .line 227
    .end local v10    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$none":I
    :goto_3
    if-nez v5, :cond_5

    const/4 v7, 0x0

    return v7

    .line 228
    :cond_5
    const/4 v7, 0x0

    .line 614
    .end local v6    # "$i$a$-forEach-LauncherPrefs$has$2":I
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    .end local v9    # "itemsSublist":Ljava/util/List;
    nop

    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_2

    .line 618
    :cond_6
    nop

    .line 229
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v2    # "$i$f$forEach":I
    return v5
.end method

.method public final isStartupDataMigrated()Z
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/android/launcher3/LauncherPrefs;->getBootAwarePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->IS_STARTUP_DATA_MIGRATED:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v1}, Lcom/android/launcher3/ConstantItem;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v1}, Lcom/android/launcher3/ConstantItem;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 59
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    return v0
.end method

.method public final migrateStartupDataToDeviceProtectedStorage()V
    .locals 10

    .line 273
    invoke-static {}, Lcom/android/launcher3/LauncherPrefsKt;->getMoveStartupDataToDeviceProtectedStorageIsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    nop

    .line 277
    nop

    .line 275
    const-string v0, "LauncherPrefs"

    const-string v1, "Migrating data to unencrypted shared preferences to enable preloading while the user is locked the next time the device reboots."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/android/launcher3/LauncherPrefs;->getBootAwarePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "$this$migrateStartupDataToDeviceProtectedStorage_u24lambda_u2424":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 282
    .local v1, "$i$a$-with-LauncherPrefs$migrateStartupDataToDeviceProtectedStorage$1":I
    invoke-static {}, Lcom/android/launcher3/LauncherPrefsKt;->access$getITEMS_TO_MOVE_TO_DEVICE_PROTECTED_STORAGE$p()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 649
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/ConstantItem;

    .local v6, "it":Lcom/android/launcher3/ConstantItem;
    const/4 v7, 0x0

    .line 282
    .local v7, "$i$a$-forEach-LauncherPrefs$migrateStartupDataToDeviceProtectedStorage$1$1":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v6

    check-cast v8, Lcom/android/launcher3/Item;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v0, v8, v9}, Lcom/android/launcher3/LauncherPrefs;->putValue(Landroid/content/SharedPreferences$Editor;Lcom/android/launcher3/Item;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    .line 649
    .end local v6    # "it":Lcom/android/launcher3/ConstantItem;
    .end local v7    # "$i$a$-forEach-LauncherPrefs$migrateStartupDataToDeviceProtectedStorage$1$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 650
    :cond_1
    nop

    .line 283
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->IS_STARTUP_DATA_MIGRATED:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v2}, Lcom/android/launcher3/ConstantItem;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 285
    nop

    .line 281
    .end local v0    # "$this$migrateStartupDataToDeviceProtectedStorage_u24lambda_u2424":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "$i$a$-with-LauncherPrefs$migrateStartupDataToDeviceProtectedStorage$1":I
    nop

    .line 286
    return-void
.end method

.method public final put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/Item;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/Item;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Item;->to(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherPrefs;->put([Lkotlin/Pair;)V

    return-void
.end method

.method public final varargs put([Lkotlin/Pair;)V
    .locals 6
    .param p1, "itemsToValues"    # [Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "+",
            "Lcom/android/launcher3/Item;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemsToValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->prepareToPutValues([Lkotlin/Pair;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 558
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/content/SharedPreferences$Editor;

    .local v4, "it":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .line 118
    .local v5, "$i$a$-forEach-LauncherPrefs$put$1":I
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 558
    .end local v4    # "it":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "$i$a$-forEach-LauncherPrefs$put$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 559
    :cond_0
    nop

    .line 118
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final varargs putSync([Lkotlin/Pair;)V
    .locals 6
    .param p1, "itemsToValues"    # [Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "+",
            "Lcom/android/launcher3/Item;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemsToValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->prepareToPutValues([Lkotlin/Pair;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 560
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/content/SharedPreferences$Editor;

    .local v4, "it":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .line 128
    .local v5, "$i$a$-forEach-LauncherPrefs$putSync$1":I
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 560
    .end local v4    # "it":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "$i$a$-forEach-LauncherPrefs$putSync$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 561
    :cond_0
    nop

    .line 128
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final varargs remove([Lcom/android/launcher3/Item;)V
    .locals 6
    .param p1, "items"    # [Lcom/android/launcher3/Item;

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->prepareToRemove([Lcom/android/launcher3/Item;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 619
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/content/SharedPreferences$Editor;

    .local v4, "it":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .line 235
    .local v5, "$i$a$-forEach-LauncherPrefs$remove$1":I
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 619
    .end local v4    # "it":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "$i$a$-forEach-LauncherPrefs$remove$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 620
    :cond_0
    nop

    .line 235
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final varargs removeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V
    .locals 10
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .param p2, "items"    # [Lcom/android/launcher3/Item;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    nop

    .line 214
    move-object v0, p2

    .local v0, "$this$map$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 594
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 595
    .local v4, "$i$f$mapTo":I
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    .line 596
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it":Lcom/android/launcher3/Item;
    const/4 v9, 0x0

    .line 214
    .local v9, "$i$a$-map-LauncherPrefs$removeListener$1":I
    invoke-direct {p0, v8}, Lcom/android/launcher3/LauncherPrefs;->chooseSharedPreferences(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 596
    .end local v8    # "it":Lcom/android/launcher3/Item;
    .end local v9    # "$i$a$-map-LauncherPrefs$removeListener$1":I
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 597
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 594
    nop

    .end local v0    # "$this$map$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 215
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 216
    nop

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 598
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/content/SharedPreferences;

    .local v4, "it":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 216
    .local v5, "$i$a$-forEach-LauncherPrefs$removeListener$2":I
    invoke-interface {v4, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 598
    .end local v4    # "it":Landroid/content/SharedPreferences;
    .end local v5    # "$i$a$-forEach-LauncherPrefs$removeListener$2":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 599
    :cond_1
    nop

    .line 217
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final varargs removeSync([Lcom/android/launcher3/Item;)V
    .locals 6
    .param p1, "items"    # [Lcom/android/launcher3/Item;

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->prepareToRemove([Lcom/android/launcher3/Item;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 621
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/content/SharedPreferences$Editor;

    .local v4, "it":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .line 238
    .local v5, "$i$a$-forEach-LauncherPrefs$removeSync$1":I
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 621
    .end local v4    # "it":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "$i$a$-forEach-LauncherPrefs$removeSync$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 622
    :cond_0
    nop

    .line 238
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
