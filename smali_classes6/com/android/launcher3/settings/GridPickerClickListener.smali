.class public Lcom/android/launcher3/settings/GridPickerClickListener;
.super Ljava/lang/Object;
.source "GridPickerClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final fragment:Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;

.field private final key:Ljava/lang/String;

.field private final pref:Landroidx/preference/Preference;

.field private final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;
    .param p2, "pref"    # Landroidx/preference/Preference;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/settings/GridPickerClickListener;->fragment:Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;

    iput-object p2, p0, Lcom/android/launcher3/settings/GridPickerClickListener;->pref:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/android/launcher3/settings/GridPickerClickListener;->key:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/settings/GridPickerClickListener;->values:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    iget-object v0, p0, Lcom/android/launcher3/settings/GridPickerClickListener;->values:[Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, v0, p2

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/settings/GridPickerClickListener;->fragment:Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "com.android.launcher3.prefs"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/settings/GridPickerClickListener;->key:Ljava/lang/String;

    :try_start_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    :try_start_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_2
    const/4 v2, -0x1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    :goto_3
    if-gtz v2, :cond_2

    const v2, 0x7f120097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/settings/GridPickerClickListener;->key:Ljava/lang/String;

    const-string v4, "pref_icon_size"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/android/launcher3/settings/GridPickerClickListener;->pref:Landroidx/preference/Preference;

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v2, "\u5df2\u4fdd\u5b58\uff0c\u6b63\u5728\u91cd\u542f\u684c\u9762"

    invoke-static {v1, v2}, Lcom/android/launcher3/settings/CrashLogger;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/launcher3/settings/DesktopRestarter;

    invoke-direct {v2, v1}, Lcom/android/launcher3/settings/DesktopRestarter;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
