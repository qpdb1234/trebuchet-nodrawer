.class public final Lcom/android/launcher3/LauncherPrefsKt;
.super Ljava/lang/Object;
.source "LauncherPrefs.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\"\u0018\u0010\u0000\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "ITEMS_TO_MOVE_TO_DEVICE_PROTECTED_STORAGE",
        "",
        "Lcom/android/launcher3/ConstantItem;",
        "moveStartupDataToDeviceProtectedStorageIsEnabled",
        "",
        "getMoveStartupDataToDeviceProtectedStorageIsEnabled",
        "()Z",
        "setMoveStartupDataToDeviceProtectedStorageIsEnabled",
        "(Z)V",
        "Trebuchet_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ITEMS_TO_MOVE_TO_DEVICE_PROTECTED_STORAGE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/ConstantItem<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static moveStartupDataToDeviceProtectedStorageIsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 498
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->MOVE_STARTUP_DATA_TO_DEVICE_PROTECTED_STORAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherPrefsKt;->moveStartupDataToDeviceProtectedStorageIsEnabled:Z

    .line 500
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/android/launcher3/LauncherPrefsKt;->ITEMS_TO_MOVE_TO_DEVICE_PROTECTED_STORAGE:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getITEMS_TO_MOVE_TO_DEVICE_PROTECTED_STORAGE$p()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherPrefsKt;->ITEMS_TO_MOVE_TO_DEVICE_PROTECTED_STORAGE:Ljava/util/Set;

    return-object v0
.end method

.method public static final getMoveStartupDataToDeviceProtectedStorageIsEnabled()Z
    .locals 1

    .line 497
    sget-boolean v0, Lcom/android/launcher3/LauncherPrefsKt;->moveStartupDataToDeviceProtectedStorageIsEnabled:Z

    return v0
.end method

.method public static final setMoveStartupDataToDeviceProtectedStorageIsEnabled(Z)V
    .locals 0
    .param p0, "<set-?>"    # Z

    .line 497
    sput-boolean p0, Lcom/android/launcher3/LauncherPrefsKt;->moveStartupDataToDeviceProtectedStorageIsEnabled:Z

    .line 498
    return-void
.end method
