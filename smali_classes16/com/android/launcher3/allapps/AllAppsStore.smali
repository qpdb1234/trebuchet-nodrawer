.class public Lcom/android/launcher3/allapps/AllAppsStore;
.super Ljava/lang/Object;
.source "AllAppsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFER_UPDATES_NEXT_DRAW:I = 0x1

.field public static final DEFER_UPDATES_TEST:I = 0x2


# instance fields
.field private final mAllAppsRecyclerViewPool:Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

.field private mApps:[Lcom/android/launcher3/model/data/AppInfo;

.field private final mContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mDeferUpdatesFlags:I

.field private final mIconContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mModelFlags:I

.field private mPackageUserKeytoUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempInfo:Lcom/android/launcher3/model/data/AppInfo;

.field private mTempKey:Lcom/android/launcher3/util/PackageUserKey;

.field private final mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatePending:Z


# direct methods
.method public static synthetic $r8$lambda$mQJJk4_om9xAKwES2TPwwtNkglk(Lcom/android/launcher3/allapps/AllAppsStore;Ljava/util/function/Predicate;Lcom/android/launcher3/BubbleTextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsStore;->lambda$updateNotificationDots$0(Ljava/util/function/Predicate;Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    .local p1, "context":Landroid/content/Context;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 63
    new-instance v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempInfo:Lcom/android/launcher3/model/data/AppInfo;

    .line 65
    sget-object v0, Lcom/android/launcher3/model/data/AppInfo;->EMPTY_ARRAY:[Lcom/android/launcher3/model/data/AppInfo;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mPackageUserKeytoUidMap:Ljava/util/Map;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    .line 72
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    .line 73
    new-instance v0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    invoke-direct {v0}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mAllAppsRecyclerViewPool:Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    .line 82
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method private synthetic lambda$updateNotificationDots$0(Ljava/util/function/Predicate;Lcom/android/launcher3/BubbleTextView;)V
    .locals 2
    .param p1, "updatedDots"    # Ljava/util/function/Predicate;
    .param p2, "child"    # Lcom/android/launcher3/BubbleTextView;

    .line 211
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 213
    .local v0, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/PackageUserKey;->updateFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 217
    .end local v0    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateProgressBar$1(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/BubbleTextView;)V
    .locals 1
    .param p0, "app"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p1, "child"    # Lcom/android/launcher3/BubbleTextView;

    .line 231
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 232
    iget v0, p0, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 238
    :cond_1
    :goto_0
    return-void
.end method

.method private notifyUpdate()V
    .locals 2

    .line 182
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    .line 184
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;

    .line 187
    .local v1, "listener":Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
    invoke-interface {v1}, Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;->onAppsUpdated()V

    .line 188
    .end local v1    # "listener":Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
    goto :goto_0

    .line 189
    :cond_1
    return-void
.end method

.method private updateAllIcons(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/launcher3/BubbleTextView;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 243
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 244
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 246
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 247
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 248
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Lcom/android/launcher3/BubbleTextView;

    if-eqz v5, :cond_0

    .line 249
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 246
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 242
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "childCount":I
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 253
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;

    .line 192
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public disableDeferUpdates(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 166
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    .line 167
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsStore;->notifyUpdate()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    .line 171
    :cond_0
    return-void
.end method

.method public disableDeferUpdatesSilently(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 174
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    .line 175
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 261
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tAllAppsStore Apps[] size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 264
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 263
    const-string v2, "%s\tPackage index and name: %d/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public enableDeferUpdates(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 162
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    .line 163
    return-void
.end method

.method public getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 1
    .param p1, "key"    # Lcom/android/launcher3/util/ComponentKey;

    .line 147
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    sget-object v0, Lcom/android/launcher3/model/data/AppInfo;->COMPONENT_KEY_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApp(Lcom/android/launcher3/util/ComponentKey;Ljava/util/Comparator;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getApp(Lcom/android/launcher3/util/ComponentKey;Ljava/util/Comparator;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 2
    .param p1, "key"    # Lcom/android/launcher3/util/ComponentKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/util/Comparator<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Lcom/android/launcher3/model/data/AppInfo;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/launcher3/model/data/AppInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v0, v1, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 158
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    aget-object v1, v1, v0

    :goto_0
    return-object v1
.end method

.method public getApps()[Lcom/android/launcher3/model/data/AppInfo;
    .locals 1

    .line 78
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    return-object v0
.end method

.method public getDeferUpdatesFlags()I
    .locals 1

    .line 178
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdatesFlags:I

    return v0
.end method

.method getRecyclerViewPool()Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;
    .locals 1

    .line 117
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mAllAppsRecyclerViewPool:Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    return-object v0
.end method

.method public hasModelFlag(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 136
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mModelFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lookUpForUid(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 124
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mPackageUserKeytoUidMap:Ljava/util/Map;

    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public registerIconContainer(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 200
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    return-void
.end method

.method public removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;

    .line 196
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method public setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 1
    .param p1, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Z)V

    .line 91
    return-void
.end method

.method public setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Z)V
    .locals 2
    .param p1, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "flags"    # I
    .param p4, "shouldPreinflate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/launcher3/model/data/AppInfo;->EMPTY_ARRAY:[Lcom/android/launcher3/model/data/AppInfo;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    .line 106
    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mModelFlags:I

    .line 107
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsStore;->notifyUpdate()V

    .line 108
    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mPackageUserKeytoUidMap:Ljava/util/Map;

    .line 111
    if-eqz p4, :cond_1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_RV_PREINFLATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mAllAppsRecyclerViewPool:Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->preInflateAllAppsViewHolders(Landroid/content/Context;)V

    .line 114
    :cond_1
    return-void
.end method

.method public unregisterIconContainer(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 206
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    .local p1, "updatedDots":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;"
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/AllAppsStore;Ljava/util/function/Predicate;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Ljava/util/function/Consumer;)V

    .line 218
    return-void
.end method

.method public updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p1, "app"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 230
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<TT;>;"
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Ljava/util/function/Consumer;)V

    .line 239
    return-void
.end method
