.class public Lcom/android/launcher3/popup/PopupDataProvider;
.super Ljava/lang/Object;
.source "PopupDataProvider.java"

# interfaces
.implements Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "PopupDataProvider"


# instance fields
.field private mAllWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

.field private mDeepShortcutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationDotsChangeListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageUserToDotInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/dot/DotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendedWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PCBBgCzFPJejNVwCGTbivZdj96c(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mukw2rAzWP0ewIRycnNAlAHM-Rg(Ljava/util/HashMap;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;>;)V"
        }
    .end annotation

    .line 72
    .local p1, "notificationDotsChangeListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mRecommendedWidgets:Ljava/util/List;

    .line 70
    sget-object v0, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->INSTANCE:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    .line 73
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mNotificationDotsChangeListener:Ljava/util/function/Consumer;

    .line 74
    return-void
.end method

.method static synthetic lambda$getCategorizedRecommendedWidgets$10(Ljava/util/Map;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/WidgetItem;
    .locals 3
    .param p0, "allWidgetItems"    # Ljava/util/Map;
    .param p1, "it"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 243
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    .line 244
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 243
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/WidgetItem;

    return-object v0
.end method

.method static synthetic lambda$getCategorizedRecommendedWidgets$11(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "allWidgetItems"    # Ljava/util/Map;
    .param p1, "list"    # Ljava/util/List;

    .line 247
    nop

    .line 242
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    .line 243
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda10;-><init>()V

    .line 246
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 247
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic lambda$getCategorizedRecommendedWidgets$5(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 228
    instance-of v0, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    return v0
.end method

.method static synthetic lambda$getCategorizedRecommendedWidgets$6(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getCategorizedRecommendedWidgets$7(Lcom/android/launcher3/model/WidgetItem;)Lcom/android/launcher3/util/ComponentKey;
    .locals 3
    .param p0, "widget"    # Lcom/android/launcher3/model/WidgetItem;

    .line 232
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p0, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method static synthetic lambda$getCategorizedRecommendedWidgets$8(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 236
    instance-of v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->recommendationCategory:Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getCategorizedRecommendedWidgets$9(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;
    .locals 1
    .param p0, "it"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 239
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->recommendationCategory:Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;

    return-object v0
.end method

.method static synthetic lambda$getDotInfoForItem$0(Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/notification/NotificationKeyData;)Z
    .locals 1
    .param p0, "shortcutId"    # Ljava/lang/String;
    .param p1, "personKeys"    # [Ljava/lang/String;
    .param p2, "notification"    # Lcom/android/launcher3/notification/NotificationKeyData;

    .line 176
    iget-object v0, p2, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p2, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 179
    :cond_0
    iget-object v0, p2, Lcom/android/launcher3/notification/NotificationKeyData;->personKeysFromNotification:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p2, Lcom/android/launcher3/notification/NotificationKeyData;->personKeysFromNotification:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 182
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getRecommendedWidgets$1(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 212
    instance-of v0, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    return v0
.end method

.method static synthetic lambda$getRecommendedWidgets$2(Ljava/util/HashMap;Lcom/android/launcher3/model/WidgetItem;)V
    .locals 3
    .param p0, "allWidgetItems"    # Ljava/util/HashMap;
    .param p1, "widget"    # Lcom/android/launcher3/model/WidgetItem;

    .line 214
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$getRecommendedWidgets$3(Ljava/util/HashMap;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)V
    .locals 2
    .param p0, "allWidgetItems"    # Ljava/util/HashMap;
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 213
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mWidgets:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda9;-><init>(Ljava/util/HashMap;)V

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 213
    return-void
.end method

.method static synthetic lambda$getRecommendedWidgets$4(Ljava/util/HashMap;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/WidgetItem;
    .locals 3
    .param p0, "allWidgetItems"    # Ljava/util/HashMap;
    .param p1, "recommendedWidget"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 217
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    .line 218
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 217
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/WidgetItem;

    return-object v0
.end method

.method static synthetic lambda$getSelectedAppWidgets$15(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1
    .param p0, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p1, "row"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 264
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 265
    invoke-static {v0}, Lcom/android/launcher3/util/PackageUserKey;->fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0
.end method

.method static synthetic lambda$getWidgetsForPackageUser$12(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 2
    .param p0, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p1, "row"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 254
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0
.end method

.method static synthetic lambda$getWidgetsForPackageUser$13(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "row"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 256
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getWidgetsForPackageUser$14(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 2
    .param p0, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p1, "widget"    # Lcom/android/launcher3/model/WidgetItem;

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "updatedDots":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mNotificationDotsChangeListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 78
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PopupDataProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmPackageUserToDotInfos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    return-object v0
.end method

.method public getCategorizedRecommendedWidgets()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda15;-><init>()V

    .line 228
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda16;-><init>()V

    .line 229
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda17;-><init>()V

    .line 233
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    .line 231
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 235
    .local v0, "allWidgetItems":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/model/WidgetItem;>;"
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mRecommendedWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda18;-><init>()V

    .line 236
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 241
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    .line 240
    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 238
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 235
    return-object v1
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 160
    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 161
    return-object v1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dot/DotInfo;

    .line 164
    .local v0, "dotInfo":Lcom/android/launcher3/dot/DotInfo;
    if-nez v0, :cond_1

    .line 165
    return-object v1

    .line 170
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->getShortcutIdIfPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "shortcutId":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 172
    return-object v0

    .line 174
    :cond_2
    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->getPersonKeysIfPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)[Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "personKeys":[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda11;

    invoke-direct {v5, v2, v3}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    move-object v1, v0

    goto :goto_0

    :cond_3
    nop

    .line 175
    :goto_0
    return-object v1
.end method

.method public getRecommendedWidgets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v0, "allWidgetItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/model/WidgetItem;>;"
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda12;-><init>()V

    .line 212
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda13;-><init>(Ljava/util/HashMap;)V

    .line 213
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 216
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mRecommendedWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda14;-><init>(Ljava/util/HashMap;)V

    .line 217
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda10;-><init>()V

    .line 220
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 221
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 216
    return-object v1
.end method

.method public getSelectedAppWidgets(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    .locals 2
    .param p1, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 264
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 267
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    .line 263
    return-object v0
.end method

.method public getShortcutCountForItem(Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 147
    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsDeepShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    return v1

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 151
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 152
    return v1

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v0, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 156
    .local v2, "count":Ljava/lang/Integer;
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 2
    .param p1, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 254
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda5;-><init>()V

    .line 256
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 257
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 258
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 253
    return-object v0
.end method

.method public onNotificationFullRefresh(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "activeNotifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 110
    .local v0, "updatedDots":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/DotInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 112
    .local v2, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-static {v2}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v3

    .line 113
    .local v3, "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/dot/DotInfo;

    .line 114
    .local v4, "dotInfo":Lcom/android/launcher3/dot/DotInfo;
    if-nez v4, :cond_1

    .line 115
    new-instance v5, Lcom/android/launcher3/dot/DotInfo;

    invoke-direct {v5}, Lcom/android/launcher3/dot/DotInfo;-><init>()V

    move-object v4, v5

    .line 116
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1
    invoke-static {v2}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/dot/DotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    .line 119
    .end local v2    # "notification":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v4    # "dotInfo":Lcom/android/launcher3/dot/DotInfo;
    goto :goto_0

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/PackageUserKey;

    .line 123
    .local v2, "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/dot/DotInfo;

    .line 124
    .local v3, "prevDot":Lcom/android/launcher3/dot/DotInfo;
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/dot/DotInfo;

    .line 125
    .local v4, "newDot":Lcom/android/launcher3/dot/DotInfo;
    if-eqz v3, :cond_4

    .line 126
    invoke-virtual {v3}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_2

    .line 132
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 127
    :cond_4
    :goto_2
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v2    # "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v3    # "prevDot":Lcom/android/launcher3/dot/DotInfo;
    .end local v4    # "newDot":Lcom/android/launcher3/dot/DotInfo;
    :goto_3
    goto :goto_1

    .line 136
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 137
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda8;-><init>(Ljava/util/HashMap;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->updateNotificationDots(Ljava/util/function/Predicate;)V

    .line 139
    :cond_6
    return-void
.end method

.method public onNotificationPosted(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .locals 2
    .param p1, "postedPackageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p2, "notificationKey"    # Lcom/android/launcher3/notification/NotificationKeyData;

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dot/DotInfo;

    .line 84
    .local v0, "dotInfo":Lcom/android/launcher3/dot/DotInfo;
    if-nez v0, :cond_0

    .line 85
    new-instance v1, Lcom/android/launcher3/dot/DotInfo;

    invoke-direct {v1}, Lcom/android/launcher3/dot/DotInfo;-><init>()V

    move-object v0, v1

    .line 86
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/launcher3/dot/DotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->updateNotificationDots(Ljava/util/function/Predicate;)V

    .line 91
    :cond_1
    return-void
.end method

.method public onNotificationRemoved(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .locals 2
    .param p1, "removedPackageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p2, "notificationKey"    # Lcom/android/launcher3/notification/NotificationKeyData;

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dot/DotInfo;

    .line 97
    .local v0, "oldDotInfo":Lcom/android/launcher3/dot/DotInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/launcher3/dot/DotInfo;->removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->updateNotificationDots(Ljava/util/function/Predicate;)V

    .line 103
    :cond_1
    return-void
.end method

.method public setAllWidgets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p1, "allWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onWidgetsBound()V

    .line 198
    return-void
.end method

.method public setChangeListener(Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    .line 201
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->INSTANCE:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    .line 202
    return-void
.end method

.method public setDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "deepShortcutMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Ljava/util/HashMap;

    .line 144
    return-void
.end method

.method public setRecommendedWidgets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "recommendedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mRecommendedWidgets:Ljava/util/List;

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onRecommendedWidgetsBound()V

    .line 193
    return-void
.end method
