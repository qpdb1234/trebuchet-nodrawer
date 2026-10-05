.class public Lcom/android/launcher3/notification/NotificationKeyData;
.super Ljava/lang/Object;
.source "NotificationKeyData.java"


# instance fields
.field public count:I

.field public final notificationKey:Ljava/lang/String;

.field public final personKeysFromNotification:[Ljava/lang/String;

.field public final shortcutId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$NLQcSJEFKBLqD04iK_mFvrZ6-l0(Landroid/app/Person;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .param p1, "notificationKey"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "personKeysFromNotification"    # [Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    .line 46
    iput-object p4, p0, Lcom/android/launcher3/notification/NotificationKeyData;->personKeysFromNotification:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method private static extractPersonKeyOnly(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/Person;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 57
    .local p0, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/notification/NotificationKeyData$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/notification/NotificationKeyData$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/notification/NotificationKeyData$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/notification/NotificationKeyData$$ExternalSyntheticLambda1;-><init>()V

    .line 61
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/notification/NotificationKeyData$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/notification/NotificationKeyData$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 60
    return-object v0

    .line 58
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method public static fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;
    .locals 7
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 50
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 51
    .local v0, "notif":Landroid/app/Notification;
    new-instance v1, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/app/Notification;->number:I

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 52
    const-string v6, "android.people.list"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/notification/NotificationKeyData;->extractPersonKeyOnly(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/launcher3/notification/NotificationKeyData;-><init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 51
    return-object v1
.end method

.method static synthetic lambda$extractPersonKeyOnly$0(Landroid/app/Person;)Z
    .locals 1
    .param p0, "person"    # Landroid/app/Person;

    .line 60
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$extractPersonKeyOnly$1(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 61
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 66
    instance-of v0, p1, Lcom/android/launcher3/notification/NotificationKeyData;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/notification/NotificationKeyData;

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
