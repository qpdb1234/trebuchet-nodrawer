.class public Lcom/android/launcher3/widget/PendingAddShortcutInfo;
.super Lcom/android/launcher3/PendingAddItemInfo;
.source "PendingAddShortcutInfo.java"


# instance fields
.field protected mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;)V
    .locals 1
    .param p1, "activityInfo"    # Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 35
    invoke-direct {p0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 37
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    .line 38
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->user:Landroid/os/UserHandle;

    .line 39
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getItemType()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->itemType:I

    .line 40
    const/16 v0, -0x69

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->container:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/launcher3/PendingAddItemInfo;-><init>(Lcom/android/launcher3/PendingAddItemInfo;)V

    .line 45
    iget-object v0, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 46
    return-void
.end method


# virtual methods
.method public getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    return-object v0
.end method
