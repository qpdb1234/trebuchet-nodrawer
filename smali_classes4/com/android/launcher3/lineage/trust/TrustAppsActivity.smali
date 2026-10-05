.class public Lcom/android/launcher3/lineage/trust/TrustAppsActivity;
.super Landroid/app/Activity;
.source "TrustAppsActivity.java"

# interfaces
.implements Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;
.implements Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;
.implements Lcom/android/launcher3/lineage/trust/UpdateItemTask$UpdateCallback;


# static fields
.field private static final KEY_TRUST_ONBOARDING:Ljava/lang/String; = "pref_trust_onboarding"


# instance fields
.field private mAdapter:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;

.field private mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

.field private mLoadingView:Landroid/widget/LinearLayout;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showOnBoarding(Z)V
    .locals 4
    .param p1, "forceShow"    # Z

    .line 145
    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, "preferenceManager":Landroid/content/SharedPreferences;
    const-string v1, "pref_trust_onboarding"

    if-nez p1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 151
    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 152
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/launcher3/R$layout;->dialog_trust_welcome:I

    .line 155
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 156
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 158
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 69
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    :cond_0
    sget v1, Lcom/android/launcher3/R$layout;->activity_hidden_apps:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->setContentView(I)V

    .line 74
    sget v1, Lcom/android/launcher3/R$id;->hidden_apps_list:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    sget v1, Lcom/android/launcher3/R$id;->hidden_apps_loading:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mLoadingView:Landroid/widget/LinearLayout;

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    sget v1, Lcom/android/launcher3/R$id;->hidden_apps_progress_bar:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 79
    invoke-static {p0}, Lcom/android/launcher3/lineage/LineageUtils;->hasSecureKeyguard(Landroid/content/Context;)Z

    move-result v1

    .line 80
    .local v1, "hasSecureKeyguard":Z
    new-instance v3, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;-><init>(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;Z)V

    iput-object v3, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mAdapter:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;

    .line 81
    invoke-static {p0}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    .line 83
    iget-object v3, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    iget-object v3, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 85
    iget-object v3, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mAdapter:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 87
    invoke-direct {p0, v2}, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->showOnBoarding(Z)V

    .line 89
    new-instance v3, Lcom/android/launcher3/AppFilter;

    invoke-direct {v3, p0}, Lcom/android/launcher3/AppFilter;-><init>(Landroid/content/Context;)V

    .line 90
    .local v3, "appFilter":Lcom/android/launcher3/AppFilter;
    new-instance v4, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;

    iget-object v5, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3, p0}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;-><init>(Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;Landroid/content/pm/PackageManager;Lcom/android/launcher3/AppFilter;Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 96
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    sget v1, Lcom/android/launcher3/R$menu;->menu_trust_apps:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onHiddenItemChanged(Lcom/android/launcher3/lineage/trust/db/TrustComponent;)V
    .locals 3
    .param p1, "component"    # Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    .line 116
    new-instance v0, Lcom/android/launcher3/lineage/trust/UpdateItemTask;

    iget-object v1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    sget-object v2, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;->HIDDEN:Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/launcher3/lineage/trust/UpdateItemTask;-><init>(Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;Lcom/android/launcher3/lineage/trust/UpdateItemTask$UpdateCallback;Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method

.method public onLoadCompleted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/lineage/trust/db/TrustComponent;>;"
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mLoadingView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mAdapter:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->update(Ljava/util/List;)V

    .line 142
    return-void
.end method

.method public onLoadListProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 103
    .local v0, "id":I
    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->finish()V

    .line 105
    return v2

    .line 106
    :cond_0
    sget v1, Lcom/android/launcher3/R$id;->menu_trust_help:I

    if-ne v0, v1, :cond_1

    .line 107
    invoke-direct {p0, v2}, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->showOnBoarding(Z)V

    .line 108
    return v2

    .line 110
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onProtectedItemChanged(Lcom/android/launcher3/lineage/trust/db/TrustComponent;)V
    .locals 3
    .param p1, "component"    # Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    .line 121
    new-instance v0, Lcom/android/launcher3/lineage/trust/UpdateItemTask;

    iget-object v1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    sget-object v2, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;->PROTECTED:Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/launcher3/lineage/trust/UpdateItemTask;-><init>(Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;Lcom/android/launcher3/lineage/trust/UpdateItemTask$UpdateCallback;Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method public onUpdated(Z)V
    .locals 6
    .param p1, "result"    # Z

    .line 126
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 127
    .local v0, "state":Lcom/android/launcher3/LauncherAppState;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    new-instance v1, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;

    iget-object v2, p0, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/AppFilter;

    invoke-direct {v4, p0}, Lcom/android/launcher3/AppFilter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;-><init>(Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;Landroid/content/pm/PackageManager;Lcom/android/launcher3/AppFilter;Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    :cond_0
    return-void
.end method
