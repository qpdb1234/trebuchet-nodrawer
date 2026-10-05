.class public Lcom/android/launcher3/settings/GridApplyRunnable;
.super Ljava/lang/Object;
.source "GridApplyRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final fragment:Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/settings/GridApplyRunnable;->fragment:Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/settings/GridApplyRunnable;->fragment:Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->applyGridOverride()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/launcher3/settings/CrashLogger;->writeLog(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/android/launcher3/settings/GridApplyRunnable;->fragment:Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u7f51\u683c\u8bbe\u7f6e"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u4fdd\u5b58\uff0c\u91cd\u542f\u684c\u9762\u540e\u751f\u6548\u3002\u5373\u65f6\u5e94\u7528\u5931\u8d25\uff1a\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u786e\u5b9a"

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :cond_1
    :goto_0
    return-void
.end method
