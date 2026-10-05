.class public final Lcom/android/launcher3/util/LockedUserState;
.super Ljava/lang/Object;
.source "LockedUserState.kt"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/LockedUserState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u000e\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0017R\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/android/launcher3/util/LockedUserState;",
        "Lcom/android/launcher3/util/SafeCloseable;",
        "mContext",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "<set-?>",
        "",
        "isUserUnlocked",
        "()Z",
        "isUserUnlockedAtLauncherStartup",
        "mUserUnlockedActions",
        "Lcom/android/launcher3/util/RunnableList;",
        "mUserUnlockedReceiver",
        "Lcom/android/launcher3/util/SimpleBroadcastReceiver;",
        "getMUserUnlockedReceiver$annotations",
        "()V",
        "getMUserUnlockedReceiver",
        "()Lcom/android/launcher3/util/SimpleBroadcastReceiver;",
        "close",
        "",
        "notifyUserUnlocked",
        "runOnUserUnlocked",
        "action",
        "Ljava/lang/Runnable;",
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
.field public static final Companion:Lcom/android/launcher3/util/LockedUserState$Companion;

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/LockedUserState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isUserUnlocked:Z

.field private final isUserUnlockedAtLauncherStartup:Z

.field private final mContext:Landroid/content/Context;

.field private final mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

.field private final mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$ZW3SFFqxLCJNGfcTR2HW3Cci0vc(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/util/LockedUserState;->INSTANCE$lambda$1(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zRhYIsSuwMsZFI56TuBOo_oewA8(Lcom/android/launcher3/util/LockedUserState;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver$lambda$0(Lcom/android/launcher3/util/LockedUserState;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/LockedUserState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LockedUserState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/util/LockedUserState;->Companion:Lcom/android/launcher3/util/LockedUserState$Companion;

    .line 78
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/LockedUserState$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/util/LockedUserState$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/LockedUserState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/LockedUserState;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

    .line 31
    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/util/LockedUserState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/LockedUserState$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/LockedUserState;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    .line 38
    nop

    .line 45
    nop

    .line 46
    const-class v1, Landroid/os/UserManager;

    .line 47
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/os/UserManager;

    .line 48
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    .line 45
    iput-boolean v1, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlocked:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlockedAtLauncherStartup:Z

    .line 50
    if-eqz v1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/launcher3/util/LockedUserState;->notifyUserUnlocked()V

    goto :goto_0

    .line 53
    :cond_0
    const-string v1, "android.intent.action.USER_UNLOCKED"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 55
    :goto_0
    nop

    .line 24
    return-void
.end method

.method private static final INSTANCE$lambda$1(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;
    .locals 1
    .param p0, "it"    # Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/android/launcher3/util/LockedUserState;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/LockedUserState;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/LockedUserState;->Companion:Lcom/android/launcher3/util/LockedUserState$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/LockedUserState$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getMUserUnlockedReceiver$annotations()V
    .locals 0

    return-void
.end method

.method private static final mUserUnlockedReceiver$lambda$0(Lcom/android/launcher3/util/LockedUserState;Landroid/content/Intent;)V
    .locals 2
    .param p0, "this$0"    # Lcom/android/launcher3/util/LockedUserState;
    .param p1, "it"    # Landroid/content/Intent;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlocked:Z

    .line 34
    invoke-direct {p0}, Lcom/android/launcher3/util/LockedUserState;->notifyUserUnlocked()V

    .line 36
    :cond_0
    return-void
.end method

.method private final notifyUserUnlocked()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/util/LockedUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->unregisterReceiverSafely(Landroid/content/Context;)V

    .line 60
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/util/LockedUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->unregisterReceiverSafely(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public final getMUserUnlockedReceiver()Lcom/android/launcher3/util/SimpleBroadcastReceiver;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    return-object v0
.end method

.method public final isUserUnlocked()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlocked:Z

    return v0
.end method

.method public final isUserUnlockedAtLauncherStartup()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlockedAtLauncherStartup:Z

    return v0
.end method

.method public final runOnUserUnlocked(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method
