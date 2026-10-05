.class public final Lcom/android/launcher3/LauncherPrefs$Companion;
.super Ljava/lang/Object;
.source "LauncherPrefs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J3\u0010/\u001a\u0008\u0012\u0004\u0012\u0002H00\u0007\"\u0004\u0008\u0000\u001002\u0006\u00101\u001a\u00020\n2\u0006\u00102\u001a\u0002H02\u0008\u0008\u0002\u00103\u001a\u000204H\u0007\u00a2\u0006\u0002\u00105JY\u0010/\u001a\u0008\u0012\u0004\u0012\u0002H00\u0004\"\u0004\u0008\u0000\u001002\u0006\u00101\u001a\u00020\n2\u000e\u00106\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H0072\u0008\u0008\u0002\u00103\u001a\u0002042!\u00108\u001a\u001d\u0012\u0013\u0012\u00110:\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(=\u0012\u0004\u0012\u0002H009H\u0007J\u0010\u0010>\u001a\u00020\u00152\u0006\u0010?\u001a\u00020:H\u0007J\u0010\u0010@\u001a\u00020A2\u0006\u0010?\u001a\u00020:H\u0007J\u0010\u0010B\u001a\u00020A2\u0006\u0010?\u001a\u00020:H\u0007J3\u0010C\u001a\u0008\u0012\u0004\u0012\u0002H00\u0007\"\u0004\u0008\u0000\u001002\u0006\u00101\u001a\u00020\n2\u0006\u00102\u001a\u0002H02\u0008\u0008\u0002\u00103\u001a\u000204H\u0007\u00a2\u0006\u0002\u00105R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002R\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0013\u001a\u0010\u0012\u000c\u0012\n \u0016*\u0004\u0018\u00010\u00150\u00150\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\n0\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/android/launcher3/LauncherPrefs$Companion;",
        "",
        "()V",
        "ALLOW_ROTATION",
        "Lcom/android/launcher3/ContextualItem;",
        "",
        "ALL_APPS_OVERVIEW_THRESHOLD",
        "Lcom/android/launcher3/ConstantItem;",
        "",
        "APP_WIDGET_IDS",
        "",
        "BOOT_AWARE_PREFS_KEY",
        "getBOOT_AWARE_PREFS_KEY$annotations",
        "DB_FILE",
        "DEVICE_TYPE",
        "ENABLE_TWOLINE_ALLAPPS_TOGGLE",
        "GRID_NAME",
        "HOTSEAT_COUNT",
        "ICON_STATE",
        "INSTANCE",
        "Lcom/android/launcher3/util/MainThreadInitializedObject;",
        "Lcom/android/launcher3/LauncherPrefs;",
        "kotlin.jvm.PlatformType",
        "IS_FIRST_LOAD_AFTER_RESTORE",
        "IS_STARTUP_DATA_MIGRATED",
        "LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_DELAY",
        "LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_END_SCALE_PERCENT",
        "LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_ITERATIONS",
        "LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_SCALE_EXPONENT",
        "LONG_PRESS_NAV_HANDLE_HAPTIC_HINT_START_SCALE_PERCENT",
        "LONG_PRESS_NAV_HANDLE_SLOP_PERCENTAGE",
        "LONG_PRESS_NAV_HANDLE_TIMEOUT_MS",
        "OLD_APP_WIDGET_IDS",
        "PRIVATE_SPACE_APPS",
        "PROMISE_ICON_IDS",
        "RECONFIGURABLE_WIDGET_EDUCATION_TIP_SEEN",
        "RESTORE_DEVICE",
        "SHOULD_SHOW_SMARTSPACE",
        "SHOULD_SHOW_SMARTSPACE_KEY",
        "TAG",
        "TASKBAR_PINNING",
        "TASKBAR_PINNING_KEY",
        "THEMED_ICONS",
        "WIDGETS_EDUCATION_DIALOG_SEEN",
        "WIDGETS_EDUCATION_TIP_SEEN",
        "WORKSPACE_SIZE",
        "WORK_EDU_STEP",
        "backedUpItem",
        "T",
        "sharedPrefKey",
        "defaultValue",
        "encryptionType",
        "Lcom/android/launcher3/EncryptionType;",
        "(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;",
        "type",
        "Ljava/lang/Class;",
        "defaultValueFromContext",
        "Lkotlin/Function1;",
        "Landroid/content/Context;",
        "Lkotlin/ParameterName;",
        "name",
        "c",
        "get",
        "context",
        "getDevicePrefs",
        "Landroid/content/SharedPreferences;",
        "getPrefs",
        "nonRestorableItem",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherPrefs$Companion;-><init>()V

    return-void
.end method

.method public static synthetic backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;
    .locals 0

    .line 444
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 447
    sget-object p3, Lcom/android/launcher3/EncryptionType;->ENCRYPTED:Lcom/android/launcher3/EncryptionType;

    .line 444
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Class;Lcom/android/launcher3/EncryptionType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/android/launcher3/ContextualItem;
    .locals 0

    .line 452
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 455
    sget-object p3, Lcom/android/launcher3/EncryptionType;->ENCRYPTED:Lcom/android/launcher3/EncryptionType;

    .line 452
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Class;Lcom/android/launcher3/EncryptionType;Lkotlin/jvm/functions/Function1;)Lcom/android/launcher3/ContextualItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getBOOT_AWARE_PREFS_KEY$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic nonRestorableItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;
    .locals 0

    .line 467
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 470
    sget-object p3, Lcom/android/launcher3/EncryptionType;->ENCRYPTED:Lcom/android/launcher3/EncryptionType;

    .line 467
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;
    .locals 9
    .param p1, "sharedPrefKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .param p3, "encryptionType"    # Lcom/android/launcher3/EncryptionType;
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

    const-string v0, "sharedPrefKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    new-instance v0, Lcom/android/launcher3/ConstantItem;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lcom/android/launcher3/EncryptionType;Ljava/lang/Class;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final backedUpItem(Ljava/lang/String;Ljava/lang/Class;Lcom/android/launcher3/EncryptionType;Lkotlin/jvm/functions/Function1;)Lcom/android/launcher3/ContextualItem;
    .locals 7
    .param p1, "sharedPrefKey"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "encryptionType"    # Lcom/android/launcher3/EncryptionType;
    .param p4, "defaultValueFromContext"    # Lkotlin/jvm/functions/Function1;
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

    const-string v0, "sharedPrefKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValueFromContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    new-instance v0, Lcom/android/launcher3/ContextualItem;

    .line 459
    nop

    .line 460
    const/4 v3, 0x1

    .line 461
    nop

    .line 462
    nop

    .line 463
    nop

    .line 458
    move-object v1, v0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/ContextualItem;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lcom/android/launcher3/EncryptionType;Ljava/lang/Class;)V

    .line 464
    return-object v0
.end method

.method public final get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/LauncherPrefs;

    return-object v0
.end method

.method public final getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/Deprecated;
        message = "Don\'t use shared preferences directly. Use other LauncherPref methods."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 489
    nop

    .line 490
    nop

    .line 488
    const-string v1, "com.android.launcher3.device.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/Deprecated;
        message = "Don\'t use shared preferences directly. Use other LauncherPref methods."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 479
    nop

    .line 480
    nop

    .line 478
    const-string v1, "com.android.launcher3.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;
    .locals 9
    .param p1, "sharedPrefKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .param p3, "encryptionType"    # Lcom/android/launcher3/EncryptionType;
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

    const-string v0, "sharedPrefKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    new-instance v0, Lcom/android/launcher3/ConstantItem;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lcom/android/launcher3/EncryptionType;Ljava/lang/Class;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
