.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;,
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlphabeticalAppsList"


# instance fields
.field private mAccessibilityResultsCount:I

.field private final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AllAppsStore<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

.field private final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFastScrollerSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNumAppRowsInAdapter:I

.field private mNumAppsPerRowAllApps:I

.field private final mPrivateApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivateProviderManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

.field private final mSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSortSections:Z

.field private final mWorkProviderManager:Lcom/android/launcher3/allapps/WorkProfileManager;


# direct methods
.method public static synthetic $r8$lambda$E2McIAGPWBO62AkYPcfatUmDGDA()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkProfileManager;Lcom/android/launcher3/allapps/PrivateProfileManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "workProfileManager"    # Lcom/android/launcher3/allapps/WorkProfileManager;
    .param p4, "privateProfileManager"    # Lcom/android/launcher3/allapps/PrivateProfileManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/allapps/AllAppsStore<",
            "TT;>;",
            "Lcom/android/launcher3/allapps/WorkProfileManager;",
            "Lcom/android/launcher3/allapps/PrivateProfileManager;",
            ")V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    .local p2, "appsStore":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateApps:Ljava/util/List;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAccessibilityResultsCount:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    .line 102
    iput-object p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    .line 103
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    .line 104
    new-instance v1, Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-direct {v1, p1}, Lcom/android/launcher3/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    .line 105
    iput-object p3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mWorkProviderManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    .line 106
    iput-object p4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateProviderManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    .line 107
    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    .line 108
    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p2, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$bool;->config_appsListSortSections:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSortSections:Z

    .line 112
    return-void
.end method

.method private addAppsWithSections(Ljava/util/List;I)I
    .locals 9
    .param p2, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;I)I"
        }
    .end annotation

    .line 358
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    const/4 v0, 0x0

    .line 359
    .local v0, "lastSectionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 360
    .local v1, "hasPrivateApps":Z
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateProviderManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    if-eqz v2, :cond_0

    .line 361
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateProviderManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    .line 362
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getItemInfoMatcher()Ljava/util/function/Predicate;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    .line 364
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 365
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    .line 367
    .local v3, "info":Lcom/android/launcher3/model/data/AppInfo;
    if-eqz v1, :cond_1

    .line 368
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/allapps/SectionDecorationInfo;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    .line 369
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 370
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p0, v2, v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getRoundRegions(II)I

    move-result v7

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/android/launcher3/allapps/SectionDecorationInfo;-><init>(Landroid/content/Context;IZ)V

    .line 368
    invoke-static {v3, v5}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asAppWithDecorationInfo(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/allapps/SectionDecorationInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 373
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asApp(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :goto_1
    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 378
    .local v4, "sectionName":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 379
    move-object v0, v4

    .line 380
    iget-object v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    new-instance v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v6, v4, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_2
    nop

    .end local v3    # "info":Lcom/android/launcher3/model/data/AppInfo;
    .end local v4    # "sectionName":Ljava/lang/String;
    add-int/lit8 p2, p2, 0x1

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v2    # "i":I
    :cond_3
    return p2
.end method

.method private addPrivateSpaceApps(I)I
    .locals 3
    .param p1, "position"    # I

    .line 336
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    invoke-static {}, Lcom/android/launcher3/Flags;->privateSpaceAppInstallerButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateProviderManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->addPrivateSpaceInstallAppButton(Ljava/util/List;)V

    .line 338
    add-int/lit8 p1, p1, 0x1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateProviderManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    .line 344
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->splitIntoUserInstalledAndSystemApps()Ljava/util/function/Predicate;

    move-result-object v1

    .line 343
    invoke-static {v1}, Ljava/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 346
    .local v0, "split":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Boolean;Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addAppsWithSections(Ljava/util/List;I)I

    move-result p1

    .line 348
    invoke-static {}, Lcom/android/launcher3/Flags;->privateSpaceSysAppsSeparation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateProviderManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/PrivateProfileManager;->addSystemAppsDivider(Ljava/util/List;)I

    move-result p1

    .line 352
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addAppsWithSections(Ljava/util/List;I)I

    move-result p1

    .line 354
    return p1
.end method

.method static synthetic lambda$onAppsUpdated$0(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$onAppsUpdated$1()Ljava/util/TreeMap;
    .locals 2

    .line 235
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/android/launcher3/util/LabelComparator;

    invoke-direct {v1}, Lcom/android/launcher3/util/LabelComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method addPrivateSpaceItems(I)I
    .locals 2
    .param p1, "position"    # I

    .line 315
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateProviderManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->isPrivateSpaceHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateApps:Ljava/util/List;

    .line 317
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateProviderManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->addPrivateSpaceHeader(Ljava/util/ArrayList;)I

    move-result p1

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateProviderManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getCurrentState()I

    move-result v0

    .line 321
    .local v0, "privateSpaceState":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 324
    :pswitch_0
    goto :goto_0

    .line 327
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addPrivateSpaceApps(I)I

    move-result p1

    .line 331
    .end local v0    # "privateSpaceState":I
    :cond_0
    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFastScrollerSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    return-object v0
.end method

.method public getFocusedChild()Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .locals 2

    .line 149
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFocusedChildIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFocusedChildIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    return-object v0

    .line 150
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusedChildIndex()I
    .locals 3

    .line 159
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 160
    .local v1, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->isCountedForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 163
    .end local v1    # "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    :cond_0
    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getNumAppRows()I
    .locals 1

    .line 171
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    return v0
.end method

.method public getNumFilteredApps()I
    .locals 1

    .line 178
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAccessibilityResultsCount:I

    return v0
.end method

.method getRoundRegions(II)I
    .locals 5
    .param p1, "appIndex"    # I
    .param p2, "appListSize"    # I

    .line 405
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    int-to-double v0, p2

    iget v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 406
    .local v0, "numberOfAppRows":I
    const/4 v1, 0x0

    .line 408
    .local v1, "roundRegion":I
    iget v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    div-int v3, p1, v2

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_2

    .line 409
    rem-int v3, p1, v2

    if-nez v3, :cond_0

    .line 411
    const/16 v1, 0x8

    goto :goto_0

    .line 412
    :cond_0
    rem-int v3, p1, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_1

    .line 414
    const/16 v1, 0x10

    .line 417
    :cond_1
    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-ne p1, v2, :cond_2

    .line 418
    or-int/lit8 v1, v1, 0x10

    .line 421
    :cond_2
    return v1
.end method

.method public hasSearchResults()Z
    .locals 1

    .line 185
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onAppsUpdated()V
    .locals 5

    .line 208
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 216
    .local v0, "appSteam":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/android/launcher3/model/data/AppInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 218
    .local v1, "privateAppStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasSearchResults()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mItemFilter:Ljava/util/function/Predicate;

    if-eqz v2, :cond_1

    .line 219
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateProviderManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    if-eqz v2, :cond_1

    .line 221
    nop

    .line 222
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getItemInfoMatcher()Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 226
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 230
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSortSections:Z

    if-eqz v2, :cond_2

    .line 233
    new-instance v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda3;-><init>()V

    .line 236
    invoke-static {v4}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 233
    invoke-static {v2, v3, v4}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeMap;

    .line 237
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 238
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda4;-><init>()V

    .line 239
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 243
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPrivateApps:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 245
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 248
    :cond_3
    return-void
.end method

.method public setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    .local p1, "adapter":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    .line 129
    return-void
.end method

.method public setNumAppsPerRowAllApps(I)V
    .locals 0
    .param p1, "numAppsPerRow"    # I

    .line 116
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iput p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    .line 117
    return-void
.end method

.method public setSearchResults(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)Z"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    if-eqz p1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public updateAdapterItems()V
    .locals 8

    .line 255
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    .local v0, "oldItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 258
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 259
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAccessibilityResultsCount:I

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasSearchResults()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 266
    :cond_0
    const/4 v2, 0x0

    .line 267
    .local v2, "position":I
    const/4 v3, 0x1

    .line 268
    .local v3, "addApps":Z
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mWorkProviderManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    if-eqz v4, :cond_1

    .line 269
    iget-object v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/WorkProfileManager;->addWorkItems(Ljava/util/ArrayList;)I

    move-result v4

    add-int/2addr v2, v4

    .line 270
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mWorkProviderManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/WorkProfileManager;->shouldShowWorkApps()Z

    move-result v3

    .line 272
    :cond_1
    if-eqz v3, :cond_2

    .line 273
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-direct {p0, v4, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addAppsWithSections(Ljava/util/List;I)I

    move-result v2

    .line 275
    :cond_2
    invoke-static {}, Lcom/android/launcher3/Flags;->enablePrivateSpace()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 276
    .end local v2    # "position":I
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addPrivateSpaceItems(I)I

    .line 279
    .end local v3    # "addApps":Z
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda0;-><init>()V

    .line 280
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAccessibilityResultsCount:I

    .line 282
    iget v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    if-eqz v2, :cond_9

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, "numAppsInSection":I
    const/4 v3, 0x0

    .line 287
    .local v3, "numAppsInRow":I
    const/4 v4, -0x1

    .line 288
    .local v4, "rowIndex":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 289
    .local v6, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iput v1, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowIndex:I

    .line 290
    iget v7, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v7}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isDividerViewType(I)Z

    move-result v7

    if-nez v7, :cond_6

    iget v7, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    .line 291
    invoke-static {v7}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isPrivateSpaceHeaderView(I)Z

    move-result v7

    if-nez v7, :cond_6

    iget v7, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    .line 292
    invoke-static {v7}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isPrivateSpaceSysAppsDividerView(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 294
    :cond_4
    iget v7, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v7}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isIconViewType(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 295
    iget v7, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    rem-int v7, v2, v7

    if-nez v7, :cond_5

    .line 296
    const/4 v3, 0x0

    .line 297
    add-int/lit8 v4, v4, 0x1

    .line 299
    :cond_5
    iput v4, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowIndex:I

    .line 300
    iput v3, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowAppIndex:I

    .line 301
    add-int/lit8 v2, v2, 0x1

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 293
    :cond_6
    :goto_2
    const/4 v2, 0x0

    .line 304
    .end local v6    # "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    :cond_7
    :goto_3
    goto :goto_1

    .line 305
    :cond_8
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    .line 308
    .end local v2    # "numAppsInSection":I
    .end local v3    # "numAppsInRow":I
    .end local v4    # "rowIndex":I
    :cond_9
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    if-eqz v2, :cond_a

    .line 309
    new-instance v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2, v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    .line 310
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 312
    :cond_a
    return-void
.end method

.method public updateItemFilter(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    .local p1, "itemFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mItemFilter:Ljava/util/function/Predicate;

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 122
    return-void
.end method
