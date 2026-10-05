.class public Lcom/android/launcher3/uioverrides/ApiWrapper;
.super Ljava/lang/Object;
.source "ApiWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/uioverrides/ApiWrapper$NoopDrawable;
    }
.end annotation


# static fields
.field public static final TASKBAR_DRAWN_IN_PROCESS:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFadeOutAnimOptions(Landroid/content/Context;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    const v1, 0x10a0001

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityOverrides(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getAppMarketActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 102
    const-string v2, "market"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 103
    const-string v2, "details"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 104
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 106
    const-string v2, "android-app"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 106
    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method public static getPersons(Landroid/content/pm/ShortcutInfo;)[Landroid/app/Person;
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 47
    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_PERSON_ARRAY:[Landroid/app/Person;

    return-object v0
.end method

.method public static getPreInstalledSystemPackages(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static isNonResizeableActivity(Landroid/content/pm/LauncherActivityInfo;)Z
    .locals 1
    .param p0, "lai"    # Landroid/content/pm/LauncherActivityInfo;

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public static queryAllUsers(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Lcom/android/launcher3/util/UserIconInfo;",
            ">;"
        }
    .end annotation

    .line 65
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 66
    .local v0, "um":Landroid/os/UserManager;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 67
    .local v1, "users":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/UserHandle;Lcom/android/launcher3/util/UserIconInfo;>;"
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, "usersActual":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    if-eqz v2, :cond_2

    .line 69
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 70
    .local v4, "user":Landroid/os/UserHandle;
    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v5

    .line 74
    .local v5, "serial":J
    new-instance v7, Lcom/android/launcher3/uioverrides/ApiWrapper$NoopDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/launcher3/uioverrides/ApiWrapper$NoopDrawable;-><init>(Lcom/android/launcher3/uioverrides/ApiWrapper$NoopDrawable-IA;)V

    .line 75
    .local v7, "d":Lcom/android/launcher3/uioverrides/ApiWrapper$NoopDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v7, v8, :cond_0

    move v8, v9

    goto :goto_1

    :cond_0
    move v8, v10

    .line 76
    .local v8, "isWork":Z
    :goto_1
    new-instance v11, Lcom/android/launcher3/util/UserIconInfo;

    .line 78
    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    move v9, v10

    :goto_2
    invoke-direct {v11, v4, v9, v5, v6}, Lcom/android/launcher3/util/UserIconInfo;-><init>(Landroid/os/UserHandle;IJ)V

    move-object v9, v11

    .line 80
    .local v9, "info":Lcom/android/launcher3/util/UserIconInfo;
    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v5    # "serial":J
    .end local v7    # "d":Lcom/android/launcher3/uioverrides/ApiWrapper$NoopDrawable;
    .end local v8    # "isWork":Z
    .end local v9    # "info":Lcom/android/launcher3/util/UserIconInfo;
    goto :goto_0

    .line 83
    :cond_2
    return-object v1
.end method
