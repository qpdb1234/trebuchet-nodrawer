.class public Lcom/android/launcher3/util/ScreenOnTracker;
.super Ljava/lang/Object;
.source "ScreenOnTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/ScreenOnTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsScreenOn:Z

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$7PLRkaA3ZxkFXH8wS1812WOERjw(Lcom/android/launcher3/util/ScreenOnTracker;Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ScreenOnTracker;->lambda$dispatchScreenOnChanged$0(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AZzHlocM5E_vcpvCw1plM3bdBOE(Lcom/android/launcher3/util/ScreenOnTracker;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ScreenOnTracker;->onReceive(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$adveW5iN9lIR5OqkF91br68_HgU(Landroid/content/Context;)Lcom/android/launcher3/util/ScreenOnTracker;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/ScreenOnTracker;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ScreenOnTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/ScreenOnTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/util/ScreenOnTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/util/ScreenOnTracker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/ScreenOnTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/util/ScreenOnTracker;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    .line 36
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    .line 43
    const-string v1, "android.intent.action.SCREEN_OFF"

    const-string v2, "android.intent.action.USER_PRESENT"

    const-string v3, "android.intent.action.SCREEN_ON"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private dispatchScreenOnChanged()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/launcher3/util/ScreenOnTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/ScreenOnTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/ScreenOnTracker;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 61
    return-void
.end method

.method private synthetic lambda$dispatchScreenOnChanged$0(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    .line 60
    iget-boolean v0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    invoke-interface {p1, v0}, Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;->onScreenOnChanged(Z)V

    return-void
.end method

.method private onReceive(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/util/ScreenOnTracker;->dispatchScreenOnChanged()V

    goto :goto_0

    .line 51
    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    .line 53
    invoke-direct {p0}, Lcom/android/launcher3/util/ScreenOnTracker;->dispatchScreenOnChanged()V

    goto :goto_0

    .line 54
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/android/launcher3/util/ScreenOnTracker$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/util/ScreenOnTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 57
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    return v0
.end method

.method public removeListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method
