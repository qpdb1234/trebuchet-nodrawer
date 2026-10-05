.class public final Lcom/android/launcher3/util/OnboardingPrefs;
.super Ljava/lang/Object;
.source "OnboardingPrefs.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/android/launcher3/util/OnboardingPrefs;",
        "",
        "()V",
        "ALL_APPS_VISITED_COUNT",
        "Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;",
        "HOME_BOUNCE_COUNT",
        "HOME_BOUNCE_SEEN",
        "Lcom/android/launcher3/ConstantItem;",
        "",
        "HOTSEAT_DISCOVERY_TIP_COUNT",
        "HOTSEAT_LONGPRESS_TIP_SEEN",
        "TASKBAR_EDU_TOOLTIP_STEP",
        "CountedItem",
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
.field public static final ALL_APPS_VISITED_COUNT:Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;

.field public static final HOME_BOUNCE_COUNT:Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;

.field public static final HOME_BOUNCE_SEEN:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOTSEAT_DISCOVERY_TIP_COUNT:Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;

.field public static final HOTSEAT_LONGPRESS_TIP_SEEN:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/android/launcher3/util/OnboardingPrefs;

.field public static final TASKBAR_EDU_TOOLTIP_STEP:Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/launcher3/util/OnboardingPrefs;

    invoke-direct {v0}, Lcom/android/launcher3/util/OnboardingPrefs;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/OnboardingPrefs;->INSTANCE:Lcom/android/launcher3/util/OnboardingPrefs;

    .line 65
    new-instance v0, Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;

    const-string v1, "launcher.taskbar_edu_tooltip_step"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/OnboardingPrefs;->TASKBAR_EDU_TOOLTIP_STEP:Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;

    .line 67
    new-instance v0, Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;

    const-string v1, "launcher.home_bounce_count"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/OnboardingPrefs;->HOME_BOUNCE_COUNT:Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;

    .line 70
    new-instance v0, Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;

    const-string v1, "launcher.hotseat_discovery_tip_count"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/OnboardingPrefs;->HOTSEAT_DISCOVERY_TIP_COUNT:Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;

    .line 72
    new-instance v0, Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;

    const-string v1, "launcher.all_apps_visited_count"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/OnboardingPrefs;->ALL_APPS_VISITED_COUNT:Lcom/android/launcher3/util/OnboardingPrefs$CountedItem;

    .line 74
    sget-object v3, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    const-string v4, "launcher.apps_view_shown"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v5, v0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/util/OnboardingPrefs;->HOME_BOUNCE_SEEN:Lcom/android/launcher3/ConstantItem;

    .line 77
    sget-object v5, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    const-string v6, "launcher.hotseat_longpress_tip_seen"

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v7, v0

    invoke-static/range {v5 .. v10}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;ILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/OnboardingPrefs;->HOTSEAT_LONGPRESS_TIP_SEEN:Lcom/android/launcher3/ConstantItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
