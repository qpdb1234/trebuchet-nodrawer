.class public Lcom/android/launcher3/LauncherAppState;
.super Ljava/lang/Object;
.source "LauncherAppState.java"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherAppState$IconObserver;
    }
.end annotation


# static fields
.field public static final ACTION_FORCE_ROLOAD:Ljava/lang/String; = "force-reload-launcher"

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/LauncherAppState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private final mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

.field private final mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

.field private mIsSafeModeEnabled:Z

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public static synthetic $r8$lambda$3a-rBjTHmXXjz8fz7HkR5m4MTec(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$6(Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D5sERlF2COG-Kp_lbKnoOwpka2Y(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/ModelLauncherCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$2(Lcom/android/launcher3/model/ModelLauncherCallbacks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HzUbmzZkojIQo9VooMnYNXg_IXg(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$7(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K7rp11Hhf4ML2t6b8iPxprLojuI(Lcom/android/launcher3/LauncherAppState;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$4(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O9SBQ-lfxrDu-F9C_P2QYMcBWKk(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$3(Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q342VYUkWxmj3AIx5A7zVREL_l8(Lcom/android/launcher3/LauncherAppState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->onNotificationSettingsChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fc32c6tckQWfKDmxJf5LTelPgYM(Lcom/android/launcher3/LauncherAppState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->onPrivateSpaceHideWhenLockChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$x0Uzu7WHs7dGrSvcXbC5P1uZ18w(Lcom/android/launcher3/LauncherAppState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$1(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconProvider(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/icons/LauncherIconProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModel(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshAndReloadLauncher(Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppState;->refreshAndReloadLauncher()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    const-string v0, "app_icons.db"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherAppState;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    const-string v0, "Launcher"

    const-string v1, "LauncherAppState initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 100
    new-instance v0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda17;-><init>(Landroid/content/Context;)V

    const-string v1, "isSafeMode"

    invoke-static {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppState;->mIsSafeModeEnabled:Z

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v1, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda19;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->newModelCallbacks()Lcom/android/launcher3/model/ModelLauncherCallbacks;

    move-result-object v0

    .line 109
    .local v0, "callbacks":Lcom/android/launcher3/model/ModelLauncherCallbacks;
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 110
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-virtual {v1, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 111
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v3, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda20;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/ModelLauncherCallbacks;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 114
    invoke-static {}, Lcom/android/launcher3/Utilities;->enableSupportForArchiving()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    new-instance v2, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;

    invoke-direct {v2}, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;-><init>()V

    .line 116
    .local v2, "params":Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->setEnableUnarchivalConfirmation(Z)V

    .line 117
    invoke-virtual {v1, v2}, Landroid/content/pm/LauncherApps;->setArchiveCompatibility(Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;)V

    .line 120
    .end local v2    # "params":Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;
    :cond_0
    new-instance v2, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 121
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-direct {v2, v4}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 122
    .local v2, "modelChangeReceiver":Lcom/android/launcher3/util/SimpleBroadcastReceiver;
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    const-string v5, "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v4, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 130
    sget-object v3, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/pm/UserCache;

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 131
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda3;

    invoke-direct {v5, v4}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v3, v5}, Lcom/android/launcher3/pm/UserCache;->addUserEventListener(Ljava/util/function/BiConsumer;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v3

    .line 132
    .local v3, "userChangeListener":Lcom/android/launcher3/util/SafeCloseable;
    iget-object v4, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda13;

    invoke-direct {v5, v3}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/util/SafeCloseable;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 134
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SMARTSPACE_REMOVAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    new-instance v4, Lcom/android/launcher3/LauncherAppState$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/LauncherAppState$1;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    .line 145
    .local v4, "firstPagePinnedItemListener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-object v5, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 147
    iget-object v5, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v6, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/LauncherAppState;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 151
    .end local v4    # "firstPagePinnedItemListener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/util/LockedUserState;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/LockedUserState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    .line 171
    sget-object v4, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/SettingsCache;

    .line 172
    .local v4, "settingsCache":Lcom/android/launcher3/util/SettingsCache;
    new-instance v5, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    .line 173
    .local v5, "notificationLister":Lcom/android/launcher3/util/SettingsCache$OnChangeListener;
    sget-object v6, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v5}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 174
    sget-object v6, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/LauncherAppState;->onNotificationSettingsChanged(Z)V

    .line 175
    iget-object v6, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v7, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda18;

    invoke-direct {v7, v4, v5}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda18;-><init>(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 178
    invoke-direct {p0, v4}, Lcom/android/launcher3/LauncherAppState;->registerPrivateSpaceHideWhenLockListener(Lcom/android/launcher3/util/SettingsCache;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconCacheFileName"    # Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    .line 182
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 184
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 185
    new-instance v2, Lcom/android/launcher3/icons/LauncherIconProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher3/icons/LauncherIconProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    .line 186
    new-instance v9, Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v9, p1, v1, p2, v2}, Lcom/android/launcher3/icons/IconCache;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/lang/String;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v9, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 188
    new-instance v1, Lcom/android/launcher3/LauncherModel;

    new-instance v7, Lcom/android/launcher3/lineage/trust/HiddenAppsFilter;

    invoke-direct {v7, p1}, Lcom/android/launcher3/lineage/trust/HiddenAppsFilter;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v8, v2

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/LauncherModel;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;Z)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 190
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda10;

    invoke-direct {v2, v9}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 191
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public static getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 252
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    return-object v0
.end method

.method public static getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    return-object v0
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$1(Z)V
    .locals 0
    .param p1, "modelPropertiesChanged"    # Z

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppState;->refreshAndReloadLauncher()V

    .line 106
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Lcom/android/launcher3/model/ModelLauncherCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/launcher3/model/ModelLauncherCallbacks;

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$3(Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V
    .locals 1
    .param p1, "modelChangeReceiver"    # Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "firstPagePinnedItemListener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 147
    return-void
.end method

.method static synthetic lambda$new$5(Lcom/android/launcher3/widget/custom/CustomWidgetManager;)V
    .locals 1
    .param p0, "cwm"    # Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->setWidgetRefreshCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$new$6(Lcom/android/launcher3/LauncherAppState$IconObserver;)V
    .locals 4
    .param p1, "observer"    # Lcom/android/launcher3/LauncherAppState$IconObserver;

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/Item;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/LauncherPrefs;->THEMED_ICONS:Lcom/android/launcher3/ConstantItem;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/LauncherPrefs;->removeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 152
    sget-object v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    .line 153
    .local v0, "cwm":Lcom/android/launcher3/widget/custom/CustomWidgetManager;
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->setWidgetRefreshCallback(Ljava/util/function/Consumer;)V

    .line 154
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v2, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/widget/custom/CustomWidgetManager;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 156
    new-instance v1, Lcom/android/launcher3/LauncherAppState$IconObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/LauncherAppState$IconObserver;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver-IA;)V

    .line 157
    .local v1, "observer":Lcom/android/launcher3/LauncherAppState$IconObserver;
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    sget-object v3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 158
    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 157
    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/icons/LauncherIconProvider;->registerIconChangeListener(Lcom/android/launcher3/icons/IconProvider$IconChangeListener;Landroid/os/Handler;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v2

    .line 159
    .local v2, "iconChangeTracker":Lcom/android/launcher3/util/SafeCloseable;
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda13;

    invoke-direct {v4, v2}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/util/SafeCloseable;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 160
    sget-object v3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda14;-><init>(Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 161
    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/launcher3/Item;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/launcher3/LauncherPrefs;->THEMED_ICONS:Lcom/android/launcher3/ConstantItem;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/LauncherPrefs;->addListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    .line 162
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v4, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda15;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 165
    sget-object v3, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 166
    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/pm/InstallSessionHelper;

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/pm/InstallSessionHelper;->registerInstallTracker(Lcom/android/launcher3/pm/InstallSessionTracker$Callback;)Lcom/android/launcher3/pm/InstallSessionTracker;

    move-result-object v3

    .line 167
    .local v3, "installSessionTracker":Lcom/android/launcher3/pm/InstallSessionTracker;
    iget-object v4, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda16;

    invoke-direct {v5, v3}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda16;-><init>(Lcom/android/launcher3/pm/InstallSessionTracker;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method static synthetic lambda$new$8(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 1
    .param p0, "settingsCache"    # Lcom/android/launcher3/util/SettingsCache;
    .param p1, "notificationLister"    # Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 176
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method static synthetic lambda$registerPrivateSpaceHideWhenLockListener$9(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 1
    .param p0, "settingsCache"    # Lcom/android/launcher3/util/SettingsCache;
    .param p1, "psHideWhenLockChangedListener"    # Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 205
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->PRIVATE_SPACE_HIDE_WHEN_LOCKED_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method private onNotificationSettingsChanged(Z)V
    .locals 3
    .param p1, "areNotificationDotsEnabled"    # Z

    .line 195
    if-eqz p1, :cond_0

    .line 196
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->requestRebind(Landroid/content/ComponentName;)V

    .line 199
    :cond_0
    return-void
.end method

.method private onPrivateSpaceHideWhenLockChanged(Z)V
    .locals 1
    .param p1, "isPrivateSpaceHideOnLockEnabled"    # Z

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 211
    return-void
.end method

.method private refreshAndReloadLauncher()V
    .locals 3

    .line 214
    invoke-static {}, Lcom/android/launcher3/icons/LauncherIcons;->clearPool()V

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/IconCache;->updateIconParams(II)V

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 218
    return-void
.end method

.method private registerPrivateSpaceHideWhenLockListener(Lcom/android/launcher3/util/SettingsCache;)V
    .locals 3
    .param p1, "settingsCache"    # Lcom/android/launcher3/util/SettingsCache;

    .line 202
    new-instance v0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    .line 204
    .local v0, "psHideWhenLockChangedListener":Lcom/android/launcher3/util/SettingsCache$OnChangeListener;
    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->PRIVATE_SPACE_HIDE_WHEN_LOCKED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 205
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v2, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda9;

    invoke-direct {v2, p1, v0}, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 226
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIconCache()Lcom/android/launcher3/icons/IconCache;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    return-object v0
.end method

.method public getIconProvider()Lcom/android/launcher3/icons/IconProvider;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    return-object v0
.end method

.method public getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public isSafeModeEnabled()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppState;->mIsSafeModeEnabled:Z

    return v0
.end method
