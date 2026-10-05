.class public Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;
.super Landroid/os/AsyncTask;
.source "LoadTrustComponentsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAppFilter:Lcom/android/launcher3/AppFilter;

.field private mCallback:Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;

.field private mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;Landroid/content/pm/PackageManager;Lcom/android/launcher3/AppFilter;Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;)V
    .locals 0
    .param p1, "dbHelper"    # Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "appFilter"    # Lcom/android/launcher3/AppFilter;
    .param p4, "callback"    # Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    .line 53
    iput-object p2, p0, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    iput-object p3, p0, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 55
    iput-object p4, p0, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mCallback:Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;

    .line 56
    return-void
.end method

.method static synthetic lambda$doInBackground$0(Lcom/android/launcher3/lineage/trust/db/TrustComponent;Lcom/android/launcher3/lineage/trust/db/TrustComponent;)I
    .locals 3
    .param p0, "a"    # Lcom/android/launcher3/lineage/trust/db/TrustComponent;
    .param p1, "b"    # Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->isHidden()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->isHidden()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    sub-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 16
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
            ">;"
        }
    .end annotation

    .line 60
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 62
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/lineage/trust/db/TrustComponent;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v0

    .line 63
    .local v3, "filter":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v0, v1, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 68
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 69
    .local v6, "numPackages":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 70
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 72
    .local v8, "app":Landroid/content/pm/ResolveInfo;
    iget-object v0, v1, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mAppFilter:Lcom/android/launcher3/AppFilter;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    goto :goto_1

    .line 77
    :cond_0
    :try_start_0
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 78
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 79
    invoke-virtual {v9, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 78
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 80
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 81
    .local v12, "label":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 82
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v9, v1, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    invoke-virtual {v9, v0}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->isPackageHidden(Ljava/lang/String;)Z

    move-result v13

    .line 83
    .local v13, "isHidden":Z
    iget-object v9, v1, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    invoke-virtual {v9, v0}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->isPackageProtected(Ljava/lang/String;)Z

    move-result v14

    .line 85
    .local v14, "isProtected":Z
    new-instance v15, Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    move-object v9, v15

    move-object v10, v0

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Integer;

    int-to-float v10, v7

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v10, v15

    int-to-float v15, v6

    div-float/2addr v10, v15

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x0

    aput-object v10, v9, v15

    invoke-virtual {v1, v9}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "label":Ljava/lang/String;
    .end local v13    # "isHidden":Z
    .end local v14    # "isProtected":Z
    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 69
    .end local v8    # "app":Landroid/content/pm/ResolveInfo;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 92
    .end local v7    # "i":I
    :cond_1
    nop

    .line 93
    new-instance v0, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "trustComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/lineage/trust/db/TrustComponent;>;"
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mCallback:Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;

    invoke-interface {v0, p1}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;->onLoadCompleted(Ljava/util/List;)V

    .line 109
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .line 101
    array-length v0, p1

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->mCallback:Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;->onLoadListProgress(I)V

    .line 104
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
