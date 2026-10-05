.class public Lcom/android/launcher3/pm/UserCache;
.super Ljava/lang/Object;
.source "UserCache.java"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final ACTION_PROFILE_ADDED:Ljava/lang/String;

.field public static final ACTION_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.PROFILE_AVAILABLE"

.field public static final ACTION_PROFILE_LOCKED:Ljava/lang/String;

.field public static final ACTION_PROFILE_REMOVED:Ljava/lang/String;

.field public static final ACTION_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.PROFILE_UNAVAILABLE"

.field public static final ACTION_PROFILE_UNLOCKED:Ljava/lang/String;

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/pm/UserCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private final mUserEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/BiConsumer<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserToSerialMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Lcom/android/launcher3/util/UserIconInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4sFEzg6SLsuyWjZbVZoxIZ0Ihlw(Lcom/android/launcher3/pm/UserCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pm/UserCache;->updateCache()V

    return-void
.end method

.method public static synthetic $r8$lambda$LFoSmSVUc1tmShJQnAhGBD9snPQ(Lcom/android/launcher3/pm/UserCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pm/UserCache;->lambda$close$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$UIrX6UKbSZYvgA7wUshqWkIKZkY(Landroid/content/Context;)Lcom/android/launcher3/pm/UserCache;
    .locals 1

    new-instance v0, Lcom/android/launcher3/pm/UserCache;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pm/UserCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$bynocmsCsSKOy85S9ym3Uu50TB0(Lcom/android/launcher3/pm/UserCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pm/UserCache;->initAsync()V

    return-void
.end method

.method public static synthetic $r8$lambda$cUfmdbDV4V7saeN4cnzmQTd1u44(Lcom/android/launcher3/pm/UserCache;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pm/UserCache;->lambda$addUserEventListener$2(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wRBk-Qev4hCHNYa2GkC_jHFn7OU(Lcom/android/launcher3/pm/UserCache;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pm/UserCache;->onUsersChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 54
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "android.intent.action.PROFILE_ADDED"

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    :goto_0
    sput-object v0, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_ADDED:Ljava/lang/String;

    .line 56
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_1

    .line 57
    const-string v0, "android.intent.action.PROFILE_REMOVED"

    goto :goto_1

    :cond_1
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    :goto_1
    sput-object v0, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_REMOVED:Ljava/lang/String;

    .line 59
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_2

    .line 60
    const-string v0, "android.intent.action.PROFILE_ACCESSIBLE"

    goto :goto_2

    :cond_2
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    :goto_2
    sput-object v0, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_UNLOCKED:Ljava/lang/String;

    .line 61
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_3

    .line 62
    const-string v0, "android.intent.action.PROFILE_INACCESSIBLE"

    goto :goto_3

    :cond_3
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    :goto_3
    sput-object v0, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_LOCKED:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserEventListeners:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/pm/UserCache;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/pm/UserCache;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Ljava/util/Map;

    .line 87
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/pm/UserCache;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public static getBadgeDrawable(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/UserBadgeDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 179
    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {p0}, Lcom/android/launcher3/pm/UserCache;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/pm/UserCache;

    move-result-object v1

    .line 180
    invoke-virtual {v1, p1}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/UserIconInfo;->applyBitmapInfoFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->getBadgeDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    .line 179
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/pm/UserCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    return-object v0
.end method

.method private initAsync()V
    .locals 10

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/pm/UserCache;->mContext:Landroid/content/Context;

    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    sget-object v4, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_ADDED:Ljava/lang/String;

    sget-object v5, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_REMOVED:Ljava/lang/String;

    sget-object v6, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_UNLOCKED:Ljava/lang/String;

    sget-object v7, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_LOCKED:Ljava/lang/String;

    const-string v8, "android.intent.action.PROFILE_AVAILABLE"

    const-string v9, "android.intent.action.PROFILE_UNAVAILABLE"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/android/launcher3/pm/UserCache;->updateCache()V

    .line 107
    return-void
.end method

.method private synthetic lambda$addUserEventListener$2(Ljava/util/function/BiConsumer;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/function/BiConsumer;

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$close$0()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/pm/UserCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->unregisterReceiverSafely(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$getUserForSerialNumber$3(JLjava/util/Map$Entry;)Z
    .locals 2
    .param p0, "serialNumber"    # J
    .param p2, "entry"    # Ljava/util/Map$Entry;

    .line 156
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/UserIconInfo;

    iget-wide v0, v0, Lcom/android/launcher3/util/UserIconInfo;->userSerial:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onUsersChanged$1(Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .locals 0
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "l"    # Ljava/util/function/BiConsumer;

    .line 117
    invoke-interface {p2, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private onUsersChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 111
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/pm/UserCache;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 112
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 113
    .local v0, "user":Landroid/os/UserHandle;
    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/pm/UserCache;->mUserEventListeners:Ljava/util/List;

    new-instance v3, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda6;-><init>(Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 118
    return-void
.end method

.method private updateCache()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/ApiWrapper;->queryAllUsers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Ljava/util/Map;

    .line 123
    return-void
.end method


# virtual methods
.method public addUserEventListener(Ljava/util/function/BiConsumer;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/launcher3/util/SafeCloseable;"
        }
    .end annotation

    .line 129
    .local p1, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/os/UserHandle;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/pm/UserCache;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 92
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/pm/UserCache;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/launcher3/util/UserIconInfo;->userSerial:J

    return-wide v0
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 2
    .param p1, "serialNumber"    # J

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Ljava/util/Map;

    .line 154
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda7;-><init>(J)V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda8;-><init>()V

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 159
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 153
    return-object v0
.end method

.method public getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/UserIconInfo;

    .line 146
    .local v0, "info":Lcom/android/launcher3/util/UserIconInfo;
    if-nez v0, :cond_0

    new-instance v1, Lcom/android/launcher3/util/UserIconInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/util/UserIconInfo;-><init>(Landroid/os/UserHandle;I)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public putToCache(Landroid/os/UserHandle;Lcom/android/launcher3/util/UserIconInfo;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "info"    # Lcom/android/launcher3/util/UserIconInfo;

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method
