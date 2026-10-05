.class public Lcom/android/launcher3/lineage/trust/HiddenAppsFilter;
.super Lcom/android/launcher3/AppFilter;
.source "HiddenAppsFilter.java"


# instance fields
.field private mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/launcher3/AppFilter;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-static {p1}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/lineage/trust/HiddenAppsFilter;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    .line 32
    return-void
.end method


# virtual methods
.method public shouldShowApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "app"    # Landroid/content/ComponentName;

    .line 36
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/HiddenAppsFilter;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->isPackageHidden(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
