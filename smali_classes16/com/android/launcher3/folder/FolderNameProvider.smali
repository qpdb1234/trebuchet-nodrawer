.class public Lcom/android/launcher3/folder/FolderNameProvider;
.super Ljava/lang/Object;
.source "FolderNameProvider.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final SUGGEST_MAX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FolderNameProvider"


# instance fields
.field protected mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolderInfos:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$HIlrlc_k0A5lsH1JHDjcYuK2vqA(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qykg-uMtrd-Avt37qk-5jJ34Yd4(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$c6XLANwqqYl3Zgc_WbgztTxqsqI(Lcom/android/launcher3/folder/FolderNameProvider;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/FolderNameProvider;->lambda$getSuggestedFolderName$1(Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAppInfoByPackageName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameProvider;->mAppInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameProvider;->mAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda5;-><init>()V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 155
    return-object v0

    .line 153
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getWorkFolderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-nez v0, :cond_0

    .line 144
    sget v0, Lcom/android/launcher3/R$string;->work_folder_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;)V

    .line 147
    const-string v2, "Launcher.WORK_FOLDER_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    .line 146
    return-object v0
.end method

.method static synthetic lambda$getAppInfoByPackageName$3(Lcom/android/launcher3/model/data/AppInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getAppInfoByPackageName$4(Ljava/lang/String;Lcom/android/launcher3/model/data/AppInfo;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "info"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 157
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getSuggestedFolderName$0(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "w"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method private synthetic lambda$getSuggestedFolderName$1(Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p1, "nameInfos"    # Lcom/android/launcher3/folder/FolderNameInfos;
    .param p2, "i"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 132
    nop

    .line 133
    iget-object v0, p2, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/FolderNameProvider;->setAsFirstSuggestion(Lcom/android/launcher3/folder/FolderNameInfos;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$getWorkFolderName$2(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 148
    sget v0, Lcom/android/launcher3/R$string;->work_folder_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private load(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;-><init>(Lcom/android/launcher3/folder/FolderNameProvider;Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker-IA;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 94
    return-void
.end method

.method private load(Ljava/util/List;Lcom/android/launcher3/util/IntSparseArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    .local p2, "folderInfos":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<Lcom/android/launcher3/model/data/FolderInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderNameProvider;->mAppInfos:Ljava/util/List;

    .line 98
    iput-object p2, p0, Lcom/android/launcher3/folder/FolderNameProvider;->mFolderInfos:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 99
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/folder/FolderNameProvider;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    nop

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->folder_name_provider_class:I

    .line 73
    const-class v2, Lcom/android/launcher3/folder/FolderNameProvider;

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderNameProvider;

    .line 75
    .local v0, "fnp":Lcom/android/launcher3/folder/FolderNameProvider;
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 76
    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderNameProvider;->load(Landroid/content/Context;)V

    .line 78
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/List;Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/folder/FolderNameProvider;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;)",
            "Lcom/android/launcher3/folder/FolderNameProvider;"
        }
    .end annotation

    .line 83
    .local p1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    .local p2, "folderInfos":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<Lcom/android/launcher3/model/data/FolderInfo;>;"
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 84
    nop

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->folder_name_provider_class:I

    .line 84
    const-class v2, Lcom/android/launcher3/folder/FolderNameProvider;

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderNameProvider;

    .line 86
    .local v0, "fnp":Lcom/android/launcher3/folder/FolderNameProvider;
    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/folder/FolderNameProvider;->load(Ljava/util/List;Lcom/android/launcher3/util/IntSparseArrayMap;)V

    .line 88
    return-object v0
.end method

.method private setAsFirstSuggestion(Lcom/android/launcher3/folder/FolderNameInfos;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "nameInfos"    # Lcom/android/launcher3/folder/FolderNameInfos;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 162
    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/FolderNameInfos;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderNameInfos;->setStatus(I)V

    .line 166
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderNameInfos;->setStatus(I)V

    .line 167
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    .local v0, "labels":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->getScores()[Ljava/lang/Float;

    move-result-object v1

    .line 169
    .local v1, "scores":[Ljava/lang/Float;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_2

    .line 170
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/launcher3/folder/FolderNameInfos;->setLabel(ILjava/lang/CharSequence;Ljava/lang/Float;)V

    .line 169
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, p2, v2}, Lcom/android/launcher3/folder/FolderNameInfos;->setLabel(ILjava/lang/CharSequence;Ljava/lang/Float;)V

    .line 175
    return-void

    .line 163
    .end local v0    # "labels":[Ljava/lang/CharSequence;
    .end local v1    # "scores":[Ljava/lang/Float;
    :cond_3
    :goto_1
    return-void
.end method

.method private setAsLastSuggestion(Lcom/android/launcher3/folder/FolderNameInfos;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "nameInfos"    # Lcom/android/launcher3/folder/FolderNameInfos;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 178
    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/FolderNameInfos;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 181
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderNameInfos;->setStatus(I)V

    .line 182
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderNameInfos;->setStatus(I)V

    .line 183
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 184
    .local v0, "labels":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_3

    .line 185
    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 184
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/android/launcher3/folder/FolderNameInfos;->setLabel(ILjava/lang/CharSequence;Ljava/lang/Float;)V

    .line 187
    return-void

    .line 191
    .end local v1    # "i":I
    :cond_3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/android/launcher3/folder/FolderNameInfos;->setLabel(ILjava/lang/CharSequence;Ljava/lang/Float;)V

    .line 192
    return-void

    .line 179
    .end local v0    # "labels":[Ljava/lang/CharSequence;
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "nameInfos"    # Lcom/android/launcher3/folder/FolderNameInfos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Lcom/android/launcher3/folder/FolderNameInfos;",
            ")V"
        }
    .end annotation

    .line 108
    .local p2, "workspaceItemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 115
    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 116
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 117
    .local v0, "users":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderNameProvider;->getWorkFolderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/android/launcher3/folder/FolderNameProvider;->setAsLastSuggestion(Lcom/android/launcher3/folder/FolderNameInfos;Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 124
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda2;-><init>()V

    .line 125
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda3;-><init>()V

    .line 126
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 127
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 129
    .local v1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 130
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/FolderNameProvider;->getAppInfoByPackageName(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v2

    .line 132
    .local v2, "info":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/launcher3/model/data/AppInfo;>;"
    new-instance v3, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p3}, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/folder/FolderNameProvider;Lcom/android/launcher3/folder/FolderNameInfos;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 138
    .end local v2    # "info":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/launcher3/model/data/AppInfo;>;"
    :cond_1
    return-void
.end method
