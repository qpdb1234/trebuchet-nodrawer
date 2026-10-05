.class public Lcom/android/launcher3/model/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# static fields
.field public static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a

.field private static final NO_OP_CONSUMER:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AllAppsList"


# instance fields
.field public final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppFilter:Lcom/android/launcher3/AppFilter;

.field private mDataChanged:Z

.field private mFlags:I

.field private mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

.field private mRemoveListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$nhYtzx-3NNJJe5AbH7LbAdZYR3E(Lcom/android/launcher3/model/AllAppsList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/AllAppsList;->lambda$trackRemoves$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/android/launcher3/model/AllAppsList$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/model/AllAppsList$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/AllAppsList;->NO_OP_CONSUMER:Ljava/util/function/Consumer;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;)V
    .locals 2
    .param p1, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p2, "appFilter"    # Lcom/android/launcher3/AppFilter;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 77
    sget-object v0, Lcom/android/launcher3/model/AllAppsList;->NO_OP_CONSUMER:Ljava/util/function/Consumer;

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mRemoveListener:Ljava/util/function/Consumer;

    .line 94
    iput-object p1, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 95
    iput-object p2, p0, Lcom/android/launcher3/model/AllAppsList;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 96
    new-instance v0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/os/LocaleList;)V

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    .line 97
    return-void
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .line 365
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 366
    .local v1, "info":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    const/4 v0, 0x1

    return v0

    .line 369
    .end local v1    # "info":Landroid/content/pm/LauncherActivityInfo;
    :cond_0
    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0
    .param p0, "a"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 62
    return-void
.end method

.method private synthetic lambda$trackRemoves$1()V
    .locals 1

    .line 397
    sget-object v0, Lcom/android/launcher3/model/AllAppsList;->NO_OP_CONSUMER:Ljava/util/function/Consumer;

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mRemoveListener:Ljava/util/function/Consumer;

    return-void
.end method

.method private removeApp(I)V
    .locals 2
    .param p1, "index"    # I

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    .line 232
    .local v0, "removed":Lcom/android/launcher3/model/data/AppInfo;
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 234
    iget-object v1, p0, Lcom/android/launcher3/model/AllAppsList;->mRemoveListener:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "activityInfo"    # Landroid/content/pm/LauncherActivityInfo;

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/model/AllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 143
    return-void
.end method

.method public add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;Z)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "activityInfo"    # Landroid/content/pm/LauncherActivityInfo;
    .param p3, "loadIcon"    # Z

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mAppFilter:Lcom/android/launcher3/AppFilter;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/model/AllAppsList;->findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    return-void

    .line 152
    :cond_1
    if-eqz p3, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_2
    const-string v0, ""

    iput-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 161
    return-void
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 250
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 251
    invoke-virtual {v0, p2, p3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 253
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 254
    .local v2, "info":Landroid/content/pm/LauncherActivityInfo;
    new-instance v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v3, p1, v2, p3}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/model/AllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    .line 255
    .end local v2    # "info":Landroid/content/pm/LauncherActivityInfo;
    goto :goto_0

    .line 257
    :cond_0
    return-object v0
.end method

.method public addPromiseApp(Landroid/content/Context;Lcom/android/launcher3/pm/PackageInstallInfo;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installInfo"    # Lcom/android/launcher3/pm/PackageInstallInfo;

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/model/AllAppsList;->addPromiseApp(Landroid/content/Context;Lcom/android/launcher3/pm/PackageInstallInfo;Z)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public addPromiseApp(Landroid/content/Context;Lcom/android/launcher3/pm/PackageInstallInfo;Z)Lcom/android/launcher3/model/data/AppInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installInfo"    # Lcom/android/launcher3/pm/PackageInstallInfo;
    .param p3, "loadIcon"    # Z

    .line 172
    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    new-instance v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v0, p2}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    .line 178
    .local v0, "promiseAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    if-eqz p3, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/AppInfo;->usingLowResIcon()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 180
    iget-object v1, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v2, v0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_1
    const-string v1, ""

    iput-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 188
    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 242
    new-instance v0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/os/LocaleList;)V

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    .line 243
    return-void
.end method

.method public copyData()[Lcom/android/launcher3/model/data/AppInfo;
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/model/data/AppInfo;->EMPTY_ARRAY:[Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/model/data/AppInfo;

    .line 390
    .local v0, "result":[Lcom/android/launcher3/model/data/AppInfo;
    sget-object v1, Lcom/android/launcher3/model/data/AppInfo;->COMPONENT_KEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 391
    return-object v0
.end method

.method public findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 380
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    .line 381
    .local v1, "info":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    return-object v1

    .line 384
    .end local v1    # "info":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    goto :goto_0

    .line 385
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAndResetChangeFlag()Z
    .locals 2

    .line 103
    iget-boolean v0, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 104
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 105
    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    return v0
.end method

.method public hasShortcutHostPermission()Z
    .locals 2

    .line 112
    iget v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    .line 265
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 266
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    .line 267
    .local v2, "info":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/AllAppsList;->removeApp(I)V

    .line 265
    .end local v2    # "info":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 271
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setFlags(IZ)V
    .locals 2
    .param p1, "flagMask"    # I
    .param p2, "enabled"    # Z

    .line 119
    if-eqz p2, :cond_0

    .line 120
    iget v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    goto :goto_0

    .line 122
    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/model/AllAppsList;->mFlags:I

    .line 124
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 125
    return-void
.end method

.method public trackRemoves(Ljava/util/function/Consumer;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Lcom/android/launcher3/util/SafeCloseable;"
        }
    .end annotation

    .line 395
    .local p1, "removeListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/launcher3/model/data/AppInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/model/AllAppsList;->mRemoveListener:Ljava/util/function/Consumer;

    .line 397
    new-instance v0, Lcom/android/launcher3/model/AllAppsList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/AllAppsList$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/AllAppsList;)V

    return-object v0
.end method

.method public updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V
    .locals 5
    .param p2, "op"    # Lcom/android/launcher3/util/FlagOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/FlagOp;",
            ")V"
        }
    .end annotation

    .line 277
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    .line 278
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 279
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    .line 280
    .local v3, "info":Lcom/android/launcher3/model/data/AppInfo;
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    iget v4, v3, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    invoke-interface {p2, v4}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    .line 282
    iput-boolean v2, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 278
    .end local v3    # "info":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 285
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public updateIconsAndLabels(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 4
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 288
    .local p1, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    .line 289
    .local v1, "info":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/icons/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 291
    iget-object v2, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 292
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 294
    .end local v1    # "info":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    goto :goto_0

    .line 295
    :cond_1
    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 302
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 303
    invoke-virtual {v0, p2, p3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 304
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_6

    .line 307
    iget-object v1, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 308
    iget-object v3, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    .line 309
    .local v3, "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 310
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v4}, Lcom/android/launcher3/model/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 312
    const-string v4, "AllAppsList"

    const-string v5, "Changing shortcut target due to app component name change."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/AllAppsList;->removeApp(I)V

    .line 307
    .end local v3    # "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 320
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 321
    .local v3, "info":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lcom/android/launcher3/model/AllAppsList;->findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v4

    .line 322
    .local v4, "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    if-nez v4, :cond_2

    .line 323
    new-instance v5, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v5, p1, v3, p3}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/model/AllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    goto :goto_3

    .line 325
    :cond_2
    invoke-static {v3}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v5

    .line 327
    .local v5, "launchIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v3, v7}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 328
    iget-object v6, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v7, v4, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 329
    nop

    .line 330
    invoke-static {v3}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v6

    .line 329
    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/model/data/AppInfo;->setProgressLevel(II)V

    .line 332
    iput-object v5, v4, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 333
    invoke-static {}, Lcom/android/launcher3/Utilities;->enableSupportForArchiving()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 336
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-boolean v6, v6, Landroid/content/pm/ActivityInfo;->isArchived:Z

    if-eqz v6, :cond_3

    .line 337
    iget v6, v4, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, v4, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    goto :goto_2

    .line 339
    :cond_3
    iget v6, v4, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, v4, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    .line 342
    :cond_4
    :goto_2
    iput-boolean v2, p0, Lcom/android/launcher3/model/AllAppsList;->mDataChanged:Z

    .line 344
    .end local v3    # "info":Landroid/content/pm/LauncherActivityInfo;
    .end local v4    # "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v5    # "launchIntent":Landroid/content/Intent;
    :goto_3
    goto :goto_1

    :cond_5
    goto :goto_5

    .line 347
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_4
    if-ltz v1, :cond_8

    .line 348
    iget-object v2, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    .line 349
    .local v2, "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 350
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 351
    iget-object v3, p0, Lcom/android/launcher3/model/AllAppsList;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v4, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, p3}, Lcom/android/launcher3/icons/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 352
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/AllAppsList;->removeApp(I)V

    .line 347
    .end local v2    # "applicationInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 357
    .end local v1    # "i":I
    :cond_8
    :goto_5
    return-object v0
.end method

.method public updatePromiseInstallInfo(Lcom/android/launcher3/pm/PackageInstallInfo;)Ljava/util/List;
    .locals 8
    .param p1, "installInfo"    # Lcom/android/launcher3/pm/PackageInstallInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/pm/PackageInstallInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "updatedAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    iget-object v1, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    .line 200
    .local v1, "user":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 201
    iget-object v4, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    .line 202
    .local v4, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 203
    .local v5, "tgtComp":Landroid/content/ComponentName;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 204
    invoke-virtual {v6, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 205
    iget v6, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    iget v6, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    if-eq v6, v3, :cond_1

    iget v6, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 212
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->isArchived()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    iget v6, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    if-ne v6, v7, :cond_3

    .line 222
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->isAppStartable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 223
    invoke-direct {p0, v2}, Lcom/android/launcher3/model/AllAppsList;->removeApp(I)V

    goto :goto_2

    .line 213
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->isAppStartable()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    if-ne v6, v3, :cond_2

    .line 215
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->isArchived()Z

    move-result v6

    if-nez v6, :cond_2

    .line 216
    goto :goto_2

    .line 218
    :cond_2
    invoke-virtual {v4, p1}, Lcom/android/launcher3/model/data/AppInfo;->setProgressLevel(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    .line 220
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v4    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v5    # "tgtComp":Landroid/content/ComponentName;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 227
    .end local v2    # "i":I
    :cond_4
    return-object v0
.end method

.method public updateSectionName(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList;->mIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 194
    return-void
.end method
