.class public Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LauncherSettingsFragment"
.end annotation


# instance fields
.field protected mDeveloperOptionsEnabled:Z

.field private mHighLightKey:Ljava/lang/String;

.field private mPreferenceHighlighted:Z

.field private mRestartOnResume:Z


# direct methods
.method public static synthetic $r8$lambda$JAUwobgy6yre0SKbVzqpeKh34E0(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->lambda$attachGridOverrideListeners$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PVA4cAoS2sahZEz4sRcxNkehxxo(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->lambda$initPreference$2(Landroidx/preference/PreferenceCategory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T5-WVVM9J8KWMCSDajaljhmXs1A(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->lambda$initPreference$4(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nebIMUsdQ2M5JYQccDZ-OzYTOn4(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->lambda$initPreference$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$zy70Yo1za-TCsDl5TksFvXGCTcU(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->applyGridOverride()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mDeveloperOptionsEnabled:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mRestartOnResume:Z

    .line 187
    iput-boolean v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    return-void
.end method

.method private attachGridOverrideListeners()V
    .locals 6

    .line 231
    sget-object v0, Lcom/android/launcher3/config/GridSizeOverrides;->PREF_KEYS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 232
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 233
    .local v4, "pref":Landroidx/preference/Preference;
    if-nez v4, :cond_0

    .line 234
    goto :goto_1

    .line 236
    :cond_0
    new-instance v5, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "pref":Landroidx/preference/Preference;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_1
    return-void
.end method

.method private createHighlighter()Lcom/android/launcher3/settings/PreferenceHighlighter;
    .locals 6

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mHighLightKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 387
    return-object v1

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 391
    .local v0, "screen":Landroidx/preference/PreferenceScreen;
    if-nez v0, :cond_1

    .line 392
    return-object v1

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    .line 396
    .local v2, "list":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 397
    .local v3, "callback":Landroidx/preference/PreferenceGroup$PreferencePositionCallback;
    iget-object v4, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mHighLightKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v4

    .line 398
    .local v4, "position":I
    if-ltz v4, :cond_2

    new-instance v1, Lcom/android/launcher3/settings/PreferenceHighlighter;

    iget-object v5, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mHighLightKey:Ljava/lang/String;

    .line 399
    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lcom/android/launcher3/settings/PreferenceHighlighter;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/preference/Preference;)V

    goto :goto_0

    .line 400
    :cond_2
    nop

    .line 398
    :goto_0
    return-object v1
.end method

.method private static findIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private synthetic lambda$attachGridOverrideListeners$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "p"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$initPreference$2(Landroidx/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "pc"    # Landroidx/preference/PreferenceCategory;

    .line 309
    new-instance v0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsUI;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsUI;-><init>(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/PreferenceCategory;)V

    return-void
.end method

.method private synthetic lambda$initPreference$3()V
    .locals 3

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/launcher3/lineage/trust/TrustAppsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method private synthetic lambda$initPreference$4(Landroidx/preference/Preference;)Z
    .locals 3
    .param p1, "p"    # Landroidx/preference/Preference;

    .line 319
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->trust_apps_manager_name:I

    .line 320
    invoke-virtual {p0, v1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;)V

    .line 319
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/lineage/LineageUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onViewCreated$1(ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p0, "bottomPadding"    # I
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 264
    nop

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 268
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    add-int/2addr v3, p0

    .line 264
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 269
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method private readGridValue(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "com.android.launcher3.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private recreateActivityNow()V
    .locals 1

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 380
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 383
    :cond_0
    return-void
.end method

.method private showGridPicker(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "pref"    # Landroidx/preference/Preference;
    .param p2, "key"    # Ljava/lang/String;

    const-string v6, "pref_grid_rows"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v3, 0x7f12009a

    const v4, 0x7f030008

    const v5, 0x7f030009

    goto :goto_0

    :cond_0
    const-string v6, "pref_grid_columns"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v3, 0x7f120096

    const v4, 0x7f030004

    const v5, 0x7f030005

    goto :goto_0

    :cond_1
    const-string v6, "pref_grid_hotseat_icons"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v3, 0x7f120098

    const v4, 0x7f030006

    const v5, 0x7f030007

    goto :goto_0

    :cond_2
    const v3, 0x7f12019f

    const v4, 0x7f03000d

    const v5, 0x7f03000e

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->readGridValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v4, Lcom/android/launcher3/settings/GridPickerClickListener;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/android/launcher3/settings/GridPickerClickListener;-><init>(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1200f3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/launcher3/settings/CrashLogger;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateGridSummaries()V
    .locals 3

    const-string v0, "pref_grid_rows"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->updateGridSummary(Landroidx/preference/Preference;Ljava/lang/String;)V

    :cond_0
    const-string v0, "pref_grid_columns"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->updateGridSummary(Landroidx/preference/Preference;Ljava/lang/String;)V

    :cond_1
    const-string v0, "pref_grid_hotseat_icons"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->updateGridSummary(Landroidx/preference/Preference;Ljava/lang/String;)V

    :cond_2
    const-string v0, "pref_icon_size"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->updateGridSummary(Landroidx/preference/Preference;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateGridSummary(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroidx/preference/Preference;
    .param p2, "key"    # Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->readGridValue(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const v1, 0x7f120097

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_icon_size"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public applyGridOverride()V
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 249
    .local v0, "app":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 250
    .local v1, "appState":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 252
    sget-object v2, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v2}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v2

    .line 253
    .local v2, "launcher":Lcom/android/launcher3/Launcher;
    instance-of v3, v2, Lcom/android/launcher3/Launcher;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/android/launcher3/Launcher;

    .line 254
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->recreate()V

    .line 256
    :cond_1
    return-void
.end method

.method protected initPreference(Landroidx/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 287
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "pref_enable_minus_one"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "pref_suggestions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "pref_developer_flags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "pref_trust_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "pref_allowRotation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_5
    const-string v1, "pref_developer_options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "pref_icon_badging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 332
    return v3

    .line 329
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.google.android.as"

    invoke-static {v0, v1}, Lcom/android/launcher3/lineage/LineageUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 318
    :pswitch_1
    new-instance v0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 326
    return v3

    .line 315
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-static {v0, v1}, Lcom/android/launcher3/lineage/LineageUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 308
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mDeveloperOptionsEnabled:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 309
    .local v0, "pc":Landroidx/preference/PreferenceCategory;
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;Landroidx/preference/PreferenceCategory;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 310
    return v3

    .line 312
    .end local v0    # "pc":Landroidx/preference/PreferenceCategory;
    :cond_1
    return v2

    .line 306
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mDeveloperOptionsEnabled:Z

    return v0

    .line 292
    :pswitch_5
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    .line 294
    .local v0, "info":Lcom/android/launcher3/util/DisplayController$Info;
    iget-object v1, v0, Lcom/android/launcher3/util/DisplayController$Info;->realBounds:Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    return v2

    .line 299
    :cond_2
    invoke-static {v0}, Lcom/android/launcher3/states/RotationHelper;->getAllowRotationDefaultValue(Lcom/android/launcher3/util/DisplayController$Info;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 300
    return v3

    .line 289
    .end local v0    # "info":Lcom/android/launcher3/util/DisplayController$Info;
    :pswitch_6
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x78b3b18a -> :sswitch_6
        -0x7711ebf3 -> :sswitch_5
        -0x2f13c735 -> :sswitch_4
        0x108b8b95 -> :sswitch_3
        0x4f4a0bb6 -> :sswitch_2
        0x583d5ad3 -> :sswitch_1
        0x7666d0f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 197
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/android/launcher3/settings/CrashLogger;->install(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mHighLightKey:Ljava/lang/String;

    .line 205
    if-eqz p1, :cond_1

    .line 206
    const-string v1, "android:preference_highlighted"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "com.android.launcher3.prefs"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 210
    sget v1, Lcom/android/launcher3/R$xml;->launcher_preferences:I

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 213
    .local v1, "screen":Landroidx/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 214
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 215
    .local v3, "preference":Landroidx/preference/Preference;
    invoke-virtual {p0, v3}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->initPreference(Landroidx/preference/Preference;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 216
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 213
    .end local v3    # "preference":Landroidx/preference/Preference;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 220
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->attachGridOverrideListeners()V

    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->updateGridSummaries()V

    .line 225
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 360
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroy()V

    .line 365
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_grid_rows"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_grid_columns"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_grid_hotseat_icons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_icon_size"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->showGridPicker(Landroidx/preference/Preference;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 4

    .line 337
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 339
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    if-nez v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->createHighlighter()Lcom/android/launcher3/settings/PreferenceHighlighter;

    move-result-object v0

    .line 341
    .local v0, "highlighter":Lcom/android/launcher3/settings/PreferenceHighlighter;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 343
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    .line 347
    .end local v0    # "highlighter":Lcom/android/launcher3/settings/PreferenceHighlighter;
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mRestartOnResume:Z

    if-eqz v0, :cond_1

    .line 348
    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->recreateActivityNow()V

    .line 350
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 278
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 279
    const-string v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    return-void
.end method

.method public onSettingsChanged(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->tryRecreateActivity()V

    .line 356
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 260
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 262
    .local v0, "listView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 263
    .local v1, "bottomPadding":I
    new-instance v2, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 273
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 274
    return-void
.end method

.method protected tryRecreateActivity()V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->recreateActivityNow()V

    goto :goto_0

    .line 374
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mRestartOnResume:Z

    .line 376
    :goto_0
    return-void
.end method
