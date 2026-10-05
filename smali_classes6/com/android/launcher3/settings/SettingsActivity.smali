.class public Lcom/android/launcher3/settings/SettingsActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;
    }
.end annotation


# static fields
.field private static final DELAY_HIGHLIGHT_DURATION_MILLIS:I = 0x258

.field static final DEVELOPER_OPTIONS_KEY:Ljava/lang/String; = "pref_developer_options"

.field public static final EXTRA_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:fragment_args"

.field public static final EXTRA_FRAGMENT_HIGHLIGHT_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final EXTRA_FRAGMENT_ROOT_KEY:Ljava/lang/String; = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final KEY_SUGGESTIONS:Ljava/lang/String; = "pref_suggestions"

.field public static final KEY_TRUST_APPS:Ljava/lang/String; = "pref_trust_apps"

.field private static final NOTIFICATION_DOTS_PREFERENCE_KEY:Ljava/lang/String; = "pref_icon_badging"

.field public static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "android:preference_highlighted"

.field private static final SEARCH_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final SUGGESTIONS_PACKAGE:Ljava/lang/String; = "com.google.android.as"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private startPreference(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 4
    .param p1, "fragment"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 143
    .local v0, "fm":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 144
    .local v1, "f":Landroidx/fragment/app/Fragment;
    instance-of v2, v1, Landroidx/fragment/app/DialogFragment;

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 146
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/launcher3/settings/SettingsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const-string v3, ":settings:fragment_args"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 148
    invoke-virtual {p0, v2}, Lcom/android/launcher3/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    :goto_0
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 100
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    sget v0, Lcom/android/launcher3/R$layout;->settings_activity:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/SettingsActivity;->setContentView(I)V

    .line 103
    sget v0, Lcom/android/launcher3/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/SettingsActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":settings:fragment_args"

    const-string v4, ":settings:fragment_args_key"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    :cond_1
    if-nez p1, :cond_5

    .line 113
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 114
    .local v2, "args":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 115
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 118
    :cond_2
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "highlight":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 120
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "root":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 124
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 128
    .local v1, "fm":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    sget v7, Lcom/android/launcher3/R$string;->settings_fragment_name:I

    .line 129
    invoke-virtual {p0, v7}, Lcom/android/launcher3/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 130
    .local v5, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {v5, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    sget v7, Lcom/android/launcher3/R$id;->content_frame:I

    invoke-virtual {v6, v7, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 134
    .end local v1    # "fm":Landroidx/fragment/app/FragmentManager;
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "highlight":Ljava/lang/String;
    .end local v4    # "root":Ljava/lang/String;
    .end local v5    # "f":Landroidx/fragment/app/Fragment;
    :cond_5
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity;->onBackPressed()V

    .line 171
    const/4 v0, 0x1

    return v0

    .line 173
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceFragment"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "pref"    # Landroidx/preference/Preference;

    .line 157
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/settings/SettingsActivity;->startPreference(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceStartScreen(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/PreferenceScreen;)Z
    .locals 3
    .param p1, "caller"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "pref"    # Landroidx/preference/PreferenceScreen;

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {p2}, Landroidx/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget v1, Lcom/android/launcher3/R$string;->settings_fragment_name:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/settings/SettingsActivity;->startPreference(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
