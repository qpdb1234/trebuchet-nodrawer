.class public Lcom/android/launcher3/model/StringCache;
.super Ljava/lang/Object;
.source "StringCache.java"


# static fields
.field private static final ALL_APPS_PERSONAL_TAB:Ljava/lang/String; = "Launcher.ALL_APPS_PERSONAL_TAB"

.field private static final ALL_APPS_PERSONAL_TAB_ACCESSIBILITY:Ljava/lang/String; = "Launcher.ALL_APPS_PERSONAL_TAB_ACCESSIBILITY"

.field private static final ALL_APPS_WORK_TAB:Ljava/lang/String; = "Launcher.ALL_APPS_WORK_TAB"

.field private static final ALL_APPS_WORK_TAB_ACCESSIBILITY:Ljava/lang/String; = "Launcher.ALL_APPS_WORK_TAB_ACCESSIBILITY"

.field private static final DISABLED_BY_ADMIN_MESSAGE:Ljava/lang/String; = "Launcher.DISABLED_BY_ADMIN_MESSAGE"

.field private static final PREFIX:Ljava/lang/String; = "Launcher."

.field private static final WIDGETS_PERSONAL_TAB:Ljava/lang/String; = "Launcher.WIDGETS_PERSONAL_TAB"

.field private static final WIDGETS_WORK_TAB:Ljava/lang/String; = "Launcher.WIDGETS_WORK_TAB"

.field public static final WORK_FOLDER_NAME:Ljava/lang/String; = "Launcher.WORK_FOLDER_NAME"

.field private static final WORK_PROFILE_EDU:Ljava/lang/String; = "Launcher.WORK_PROFILE_EDU"

.field private static final WORK_PROFILE_EDU_ACCEPT:Ljava/lang/String; = "Launcher.WORK_PROFILE_EDU_ACCEPT"

.field private static final WORK_PROFILE_ENABLE_BUTTON:Ljava/lang/String; = "Launcher.WORK_PROFILE_ENABLE_BUTTON"

.field private static final WORK_PROFILE_PAUSED_DESCRIPTION:Ljava/lang/String; = "Launcher.WORK_PROFILE_PAUSED_DESCRIPTION"

.field private static final WORK_PROFILE_PAUSED_TITLE:Ljava/lang/String; = "Launcher.WORK_PROFILE_PAUSED_TITLE"

.field private static final WORK_PROFILE_PAUSE_BUTTON:Ljava/lang/String; = "Launcher.WORK_PROFILE_PAUSE_BUTTON"


# instance fields
.field public allAppsPersonalTab:Ljava/lang/String;

.field public allAppsPersonalTabAccessibility:Ljava/lang/String;

.field public allAppsWorkTab:Ljava/lang/String;

.field public allAppsWorkTabAccessibility:Ljava/lang/String;

.field public disabledByAdminMessage:Ljava/lang/String;

.field public widgetsPersonalTab:Ljava/lang/String;

.field public widgetsWorkTab:Ljava/lang/String;

.field public workFolderName:Ljava/lang/String;

.field public workProfileEdu:Ljava/lang/String;

.field public workProfileEduAccept:Ljava/lang/String;

.field public workProfileEnableButton:Ljava/lang/String;

.field public workProfilePauseButton:Ljava/lang/String;

.field public workProfilePausedDescription:Ljava/lang/String;

.field public workProfilePausedTitle:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$RS6shkGEvGOF31g7ZpKrjqVHwto(Lcom/android/launcher3/model/StringCache;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/StringCache;->lambda$loadStrings$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDefaultWorkProfilePausedDescriptionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 225
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_2

    .line 226
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 227
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    nop

    .line 228
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getManagedSubscriptionsPolicy()Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/ManagedSubscriptionsPolicy;->getPolicyType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 230
    .local v1, "telephonyIsUnavailable":Z
    if-eqz v1, :cond_1

    .line 231
    sget v2, Lcom/android/launcher3/R$string;->work_apps_paused_telephony_unavailable_body:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 232
    :cond_1
    sget v2, Lcom/android/launcher3/R$string;->work_apps_paused_info_body:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    :goto_1
    return-object v2

    .line 234
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "telephonyIsUnavailable":Z
    :cond_2
    sget v0, Lcom/android/launcher3/R$string;->work_apps_paused_body:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updatableStringId"    # Ljava/lang/String;
    .param p3, "defaultStringId"    # I

    .line 240
    new-instance v0, Lcom/android/launcher3/model/StringCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3}, Lcom/android/launcher3/model/StringCache$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEnterpriseString(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateableStringId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 249
    .local p3, "defaultStringSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/StringCache;->getUpdatableEnterpriseString(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_0
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    :goto_0
    return-object v0
.end method

.method private getUpdatableEnterpriseString(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updatableStringId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 257
    .local p3, "defaultStringSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 258
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getEnterpriseString$1(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultStringId"    # I

    .line 243
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$loadStrings$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/StringCache;->getDefaultWorkProfilePausedDescriptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/android/launcher3/model/StringCache;
    .locals 2

    .line 263
    new-instance v0, Lcom/android/launcher3/model/StringCache;

    invoke-direct {v0}, Lcom/android/launcher3/model/StringCache;-><init>()V

    .line 264
    .local v0, "clone":Lcom/android/launcher3/model/StringCache;
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    .line 272
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    .line 278
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    return-object v0
.end method

.method public loadStrings(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 191
    const-string v0, "Launcher.WORK_PROFILE_EDU"

    sget v1, Lcom/android/launcher3/R$string;->work_profile_edu_work_apps:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    .line 193
    const-string v0, "Launcher.WORK_PROFILE_EDU_ACCEPT"

    sget v1, Lcom/android/launcher3/R$string;->work_profile_edu_accept:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    .line 195
    const-string v0, "Launcher.WORK_PROFILE_PAUSED_TITLE"

    sget v1, Lcom/android/launcher3/R$string;->work_apps_paused_title:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/android/launcher3/model/StringCache$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/StringCache$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/StringCache;Landroid/content/Context;)V

    const-string v1, "Launcher.WORK_PROFILE_PAUSED_DESCRIPTION"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    .line 201
    const-string v0, "Launcher.WORK_PROFILE_PAUSE_BUTTON"

    sget v1, Lcom/android/launcher3/R$string;->work_apps_pause_btn_text:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    .line 203
    const-string v0, "Launcher.WORK_PROFILE_ENABLE_BUTTON"

    sget v1, Lcom/android/launcher3/R$string;->work_apps_enable_btn_text:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    .line 205
    const-string v0, "Launcher.ALL_APPS_WORK_TAB"

    sget v1, Lcom/android/launcher3/R$string;->all_apps_work_tab:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    .line 207
    const-string v0, "Launcher.ALL_APPS_PERSONAL_TAB"

    sget v1, Lcom/android/launcher3/R$string;->all_apps_personal_tab:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    .line 209
    const-string v0, "Launcher.ALL_APPS_WORK_TAB_ACCESSIBILITY"

    sget v1, Lcom/android/launcher3/R$string;->all_apps_button_work_label:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    .line 211
    const-string v0, "Launcher.ALL_APPS_PERSONAL_TAB_ACCESSIBILITY"

    sget v1, Lcom/android/launcher3/R$string;->all_apps_button_personal_label:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    .line 214
    const-string v0, "Launcher.WORK_FOLDER_NAME"

    sget v1, Lcom/android/launcher3/R$string;->work_folder_name:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    .line 216
    const-string v0, "Launcher.WIDGETS_WORK_TAB"

    sget v1, Lcom/android/launcher3/R$string;->widgets_full_sheet_work_tab:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    .line 218
    const-string v0, "Launcher.WIDGETS_PERSONAL_TAB"

    sget v1, Lcom/android/launcher3/R$string;->widgets_full_sheet_personal_tab:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    .line 220
    const-string v0, "Launcher.DISABLED_BY_ADMIN_MESSAGE"

    sget v1, Lcom/android/launcher3/R$string;->msg_disabled_by_admin:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    .line 222
    return-void
.end method
