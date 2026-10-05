.class public Landroidx/slice/compat/SliceProviderCompat;
.super Ljava/lang/Object;
.source "SliceProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    }
.end annotation


# static fields
.field private static final ALL_FILES:Ljava/lang/String; = "slice_data_all_slice_files"

.field public static final ARG_SUPPORTS_VERSIONED_PARCELABLE:Ljava/lang/String; = "supports_versioned_parcelable"

.field private static final DATA_PREFIX:Ljava/lang/String; = "slice_data_"

.field public static final EXTRA_BIND_URI:Ljava/lang/String; = "slice_uri"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "slice_intent"

.field public static final EXTRA_PID:Ljava/lang/String; = "pid"

.field public static final EXTRA_PKG:Ljava/lang/String; = "pkg"

.field public static final EXTRA_PROVIDER_PKG:Ljava/lang/String; = "provider_pkg"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_SLICE:Ljava/lang/String; = "slice"

.field public static final EXTRA_SLICE_DESCENDANTS:Ljava/lang/String; = "slice_descendants"

.field public static final EXTRA_SUPPORTED_SPECS:Ljava/lang/String; = "specs"

.field public static final EXTRA_SUPPORTED_SPECS_REVS:Ljava/lang/String; = "revs"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final METHOD_CHECK_PERMISSION:Ljava/lang/String; = "check_perms"

.field public static final METHOD_GET_DESCENDANTS:Ljava/lang/String; = "get_descendants"

.field public static final METHOD_GET_PINNED_SPECS:Ljava/lang/String; = "get_specs"

.field public static final METHOD_GRANT_PERMISSION:Ljava/lang/String; = "grant_perms"

.field public static final METHOD_MAP_INTENT:Ljava/lang/String; = "map_slice"

.field public static final METHOD_MAP_ONLY_INTENT:Ljava/lang/String; = "map_only"

.field public static final METHOD_PIN:Ljava/lang/String; = "pin_slice"

.field public static final METHOD_REVOKE_PERMISSION:Ljava/lang/String; = "revoke_perms"

.field public static final METHOD_SLICE:Ljava/lang/String; = "bind_slice"

.field public static final METHOD_UNPIN:Ljava/lang/String; = "unpin_slice"

.field public static final PERMS_PREFIX:Ljava/lang/String; = "slice_perms_"

.field private static final SLICE_BIND_ANR:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "SliceProviderCompat"


# instance fields
.field private final mAnr:Ljava/lang/Runnable;

.field mCallback:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

.field private mPinnedList:Landroidx/slice/compat/CompatPinnedList;

.field private final mProvider:Landroidx/slice/SliceProvider;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceProvider;Landroidx/slice/compat/CompatPermissionManager;Landroid/content/Context;)V
    .locals 5
    .param p1, "provider"    # Landroidx/slice/SliceProvider;
    .param p2, "permissionManager"    # Landroidx/slice/compat/CompatPermissionManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    .line 293
    new-instance v0, Landroidx/slice/compat/SliceProviderCompat$1;

    invoke-direct {v0, p0}, Landroidx/slice/compat/SliceProviderCompat$1;-><init>(Landroidx/slice/compat/SliceProviderCompat;)V

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    .line 110
    iput-object p1, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    .line 111
    iput-object p3, p0, Landroidx/slice/compat/SliceProviderCompat;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "slice_data_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "prefsFile":Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "slice_data_all_slice_files"

    invoke-virtual {p3, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    .local v1, "allFiles":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 115
    .local v3, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    new-instance v4, Landroidx/collection/ArraySet;

    invoke-direct {v4, v3}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    .line 118
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 120
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 121
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    :cond_0
    new-instance v2, Landroidx/slice/compat/CompatPinnedList;

    invoke-direct {v2, p3, v0}, Landroidx/slice/compat/CompatPinnedList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    .line 124
    iput-object p2, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    .line 125
    return-void
.end method

.method private static acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 644
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 645
    .local v0, "provider":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 648
    new-instance v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    invoke-direct {v1, v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;-><init>(Landroid/content/ContentProviderClient;)V

    return-object v1

    .line 646
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No provider found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V
    .locals 5
    .param p0, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 339
    .local p1, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v0, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v1, "revs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceSpec;

    .line 342
    .local v3, "spec":Landroidx/slice/SliceSpec;
    invoke-virtual {v3}, Landroidx/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v3}, Landroidx/slice/SliceSpec;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v3    # "spec":Landroidx/slice/SliceSpec;
    goto :goto_0

    .line 345
    :cond_0
    const-string/jumbo v2, "specs"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 346
    const-string v2, "revs"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 347
    return-void
.end method

.method public static bindSlice(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Set;)Landroidx/slice/Slice;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 369
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    const-string v0, "intent"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 371
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 372
    const-string v3, "Slice intent must be explicit %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 377
    .local v2, "intentData":Landroid/net/Uri;
    if-eqz v2, :cond_2

    const-string/jumbo v3, "vnd.android.slice"

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    invoke-static {p0, v2, p2}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

    .line 381
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 382
    .local v3, "queryIntent":Landroid/content/Intent;
    const-string v4, "android.app.slice.category.SLICE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 383
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    :cond_3
    nop

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 387
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 400
    :cond_4
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 401
    .local v1, "authority":Ljava/lang/String;
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "content"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 402
    invoke-virtual {v6, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 403
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {v0, v6}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v7

    .line 404
    .local v7, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    iget-object v8, v7, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v8, :cond_8

    .line 408
    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v8, "extras":Landroid/os/Bundle;
    const-string/jumbo v9, "slice_intent"

    invoke-virtual {v8, v9, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 410
    invoke-static {v8, p2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 411
    iget-object v9, v7, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v10, "map_slice"

    const-string/jumbo v11, "supports_versioned_parcelable"

    invoke-virtual {v9, v10, v11, v8}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 413
    .local v9, "res":Landroid/os/Bundle;
    if-nez v9, :cond_5

    .line 414
    return-object v5

    .line 416
    :cond_5
    const-class v10, Landroidx/slice/compat/SliceProviderCompat;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 417
    const-string/jumbo v10, "slice"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .line 418
    .local v10, "parcel":Landroid/os/Parcelable;
    if-nez v10, :cond_6

    .line 419
    return-object v5

    .line 421
    :cond_6
    instance-of v11, v10, Landroid/os/Bundle;

    if-eqz v11, :cond_7

    .line 422
    new-instance v11, Landroidx/slice/Slice;

    move-object v12, v10

    check-cast v12, Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroidx/slice/Slice;-><init>(Landroid/os/Bundle;)V

    return-object v11

    .line 424
    :cond_7
    invoke-static {v10}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v11

    check-cast v11, Landroidx/slice/Slice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    .line 425
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "res":Landroid/os/Bundle;
    .end local v10    # "parcel":Landroid/os/Parcelable;
    :catch_0
    move-exception v8

    .line 426
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "SliceProviderCompat"

    const-string v10, "Unable to bind slice"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    return-object v5

    .line 405
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 389
    .end local v1    # "authority":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v6, 0x80

    invoke-virtual {v1, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 391
    .local v1, "resolve":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_a

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_a

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_a

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 393
    const-string v7, "android.metadata.SLICE_URI"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 394
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 395
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 394
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5, p2}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v5

    return-object v5

    .line 398
    :cond_a
    return-object v5
.end method

.method public static bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 306
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v0

    .line 307
    .local v0, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    iget-object v1, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_3

    .line 311
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "slice_uri"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 313
    invoke-static {v2, p2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 314
    iget-object v3, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v4, "bind_slice"

    const-string/jumbo v5, "supports_versioned_parcelable"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 316
    .local v3, "res":Landroid/os/Bundle;
    if-nez v3, :cond_0

    .line 317
    return-object v1

    .line 319
    :cond_0
    const-class v4, Landroidx/slice/compat/SliceProviderCompat;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 320
    const-string/jumbo v4, "slice"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 321
    .local v4, "parcel":Landroid/os/Parcelable;
    if-nez v4, :cond_1

    .line 322
    return-object v1

    .line 324
    :cond_1
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 325
    new-instance v5, Landroidx/slice/Slice;

    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {v5, v6}, Landroidx/slice/Slice;-><init>(Landroid/os/Bundle;)V

    return-object v5

    .line 327
    :cond_2
    invoke-static {v4}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v5

    check-cast v5, Landroidx/slice/Slice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    .line 331
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "res":Landroid/os/Bundle;
    .end local v4    # "parcel":Landroid/os/Parcelable;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 328
    :catch_0
    move-exception v2

    .line 329
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "SliceProviderCompat"

    const-string v4, "Unable to bind slice"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    return-object v1

    .line 331
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    throw v1

    .line 308
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkSlicePermission(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;II)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 574
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v0, p2}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .local v1, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 576
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "slice_uri"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 577
    const-string v3, "pkg"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v3, "pid"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 581
    iget-object v3, v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v4, "check_perms"

    const-string/jumbo v5, "supports_versioned_parcelable"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 583
    .local v3, "res":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 584
    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    :cond_0
    return v4

    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "res":Landroid/os/Bundle;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 588
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_2
    goto :goto_1

    .line 574
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :catchall_0
    move-exception v2

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "pid":I
    .end local p4    # "uid":I
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 586
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "pid":I
    .restart local p4    # "uid":I
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "pid":I
    .end local p4    # "uid":I
    :cond_3
    :goto_0
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "pid":I
    .restart local p4    # "uid":I
    :catch_0
    move-exception v1

    .line 587
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to check slice permission"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    return v1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 128
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPinnedSlices(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v0, "pinnedSlices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v1, 0x0

    const-string/jumbo v2, "slice_data_all_slice_files"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 636
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 637
    .local v2, "prefSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 638
    .local v4, "pref":Ljava/lang/String;
    new-instance v5, Landroidx/slice/compat/CompatPinnedList;

    invoke-direct {v5, p0, v4}, Landroidx/slice/compat/CompatPinnedList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/slice/compat/CompatPinnedList;->getPinnedSlices()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 639
    .end local v4    # "pref":Ljava/lang/String;
    goto :goto_0

    .line 640
    :cond_0
    return-object v0
.end method

.method public static getPinnedSpecs(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Set;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v0

    .line 478
    .local v0, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    iget-object v1, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_1

    .line 482
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 483
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "slice_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 484
    iget-object v2, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v3, "get_specs"

    const-string/jumbo v4, "supports_versioned_parcelable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 486
    .local v2, "res":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 487
    invoke-static {v2}, Landroidx/slice/compat/SliceProviderCompat;->getSpecs(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 491
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "res":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to get pinned specs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 479
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSliceDescendants(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Collection;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 554
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .local v1, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 556
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "slice_uri"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 557
    iget-object v3, v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v4, "get_descendants"

    const-string/jumbo v5, "supports_versioned_parcelable"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 559
    .local v3, "res":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 560
    const-string/jumbo v4, "slice_descendants"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    :cond_0
    return-object v4

    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "res":Landroid/os/Bundle;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 564
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_2
    goto :goto_1

    .line 554
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :catchall_0
    move-exception v2

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 562
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to get slice descendants"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getSpecs(Landroid/os/Bundle;)Ljava/util/Set;
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 354
    .local v0, "specs":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/slice/SliceSpec;>;"
    const-string/jumbo v1, "specs"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 355
    .local v1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "revs"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 356
    .local v2, "revs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 357
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 358
    new-instance v4, Landroidx/slice/SliceSpec;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    .end local v3    # "i":I
    :cond_0
    return-object v0
.end method

.method public static grantSlicePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "toPackage"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 598
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v0, p3}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .local v1, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 600
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "slice_uri"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 601
    const-string v3, "provider_pkg"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v3, "pkg"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v3, v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v4, "grant_perms"

    const-string/jumbo v5, "supports_versioned_parcelable"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    nop

    .end local v2    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 608
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_0
    goto :goto_1

    .line 598
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :catchall_0
    move-exception v2

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "toPackage":Ljava/lang/String;
    .end local p3    # "uri":Landroid/net/Uri;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 606
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "toPackage":Ljava/lang/String;
    .restart local p3    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "toPackage":Ljava/lang/String;
    .end local p3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "toPackage":Ljava/lang/String;
    .restart local p3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to get slice descendants"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private handleBindSlice(Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)Landroidx/slice/Slice;
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 260
    .local p2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0}, Landroidx/slice/compat/SliceProviderCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 262
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 262
    invoke-virtual {v1, p1, v2, v3}, Landroidx/slice/compat/CompatPermissionManager;->checkSlicePermission(Landroid/net/Uri;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    invoke-direct {p0}, Landroidx/slice/compat/SliceProviderCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroidx/slice/SliceProvider;->createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

    .line 266
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/slice/compat/SliceProviderCompat;->onBindSliceStrict(Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1
.end method

.method private handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 230
    const-string v0, "onGetSliceDescendants"

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private handleSlicePinned(Landroid/net/Uri;)V
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 235
    const-string v0, "onSlicePinned"

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    :try_start_0
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onSlicePinned(Landroid/net/Uri;)V

    .line 239
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->handleSlicePinned(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    nop

    .line 243
    return-void

    .line 241
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v0
.end method

.method private handleSliceUnpinned(Landroid/net/Uri;)V
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 246
    const-string v0, "onSliceUnpinned"

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    :try_start_0
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onSliceUnpinned(Landroid/net/Uri;)V

    .line 250
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->handleSliceUnpinned(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    nop

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v0
.end method

.method public static mapIntentToUri(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 499
    const-string v0, "intent"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 501
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 502
    const-string v3, "Slice intent must be explicit %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 506
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 507
    .local v2, "intentData":Landroid/net/Uri;
    if-eqz v2, :cond_2

    const-string/jumbo v3, "vnd.android.slice"

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 508
    return-object v2

    .line 511
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 512
    .local v3, "queryIntent":Landroid/content/Intent;
    const-string v4, "android.app.slice.category.SLICE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 513
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    :cond_3
    nop

    .line 516
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 517
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_4

    .line 529
    :cond_4
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 530
    .local v1, "authority":Ljava/lang/String;
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "content"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 531
    invoke-virtual {v6, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 532
    .local v6, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {v0, v6}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .local v7, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :try_start_1
    iget-object v8, v7, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v8, :cond_8

    .line 536
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v8, "extras":Landroid/os/Bundle;
    const-string/jumbo v9, "slice_intent"

    invoke-virtual {v8, v9, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 538
    iget-object v9, v7, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v10, "map_only"

    const-string/jumbo v11, "supports_versioned_parcelable"

    invoke-virtual {v9, v10, v11, v8}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 540
    .local v9, "res":Landroid/os/Bundle;
    if-eqz v9, :cond_6

    .line 541
    const-string/jumbo v10, "slice"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    :cond_5
    return-object v10

    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "res":Landroid/os/Bundle;
    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 545
    .end local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_7
    goto :goto_3

    .line 534
    .restart local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_8
    :try_start_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URI "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "intentData":Landroid/net/Uri;
    .end local v3    # "queryIntent":Landroid/content/Intent;
    .end local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "intent":Landroid/content/Intent;
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v2    # "intentData":Landroid/net/Uri;
    .restart local v3    # "queryIntent":Landroid/content/Intent;
    .restart local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v8

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "intentData":Landroid/net/Uri;
    .end local v3    # "queryIntent":Landroid/content/Intent;
    .end local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "intent":Landroid/content/Intent;
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 543
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v2    # "intentData":Landroid/net/Uri;
    .restart local v3    # "queryIntent":Landroid/content/Intent;
    .restart local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v9

    if-eqz v7, :cond_9

    :try_start_5
    invoke-virtual {v7}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v10

    :try_start_6
    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "intentData":Landroid/net/Uri;
    .end local v3    # "queryIntent":Landroid/content/Intent;
    .end local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "uri":Landroid/net/Uri;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_9
    :goto_2
    throw v9
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .end local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v2    # "intentData":Landroid/net/Uri;
    .restart local v3    # "queryIntent":Landroid/content/Intent;
    .restart local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 544
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "SliceProviderCompat"

    const-string v9, "Unable to map slice"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_3
    return-object v5

    .line 519
    .end local v1    # "authority":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_a
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v6, 0x80

    invoke-virtual {v1, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 521
    .local v1, "resolve":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_b

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_b

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_b

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 523
    const-string v7, "android.metadata.SLICE_URI"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 524
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 525
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 524
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 527
    :cond_b
    return-object v5
.end method

.method private onBindSliceStrict(Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;
    .locals 6
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 270
    .local p2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 271
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-string v1, "onBindSlice"

    iput-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 272
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    :try_start_0
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 275
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 274
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 278
    invoke-static {p2}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v2, p1}, Landroidx/slice/SliceProvider;->onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :try_start_2
    invoke-static {v1}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 286
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 289
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v2

    .line 285
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 281
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "SliceProviderCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slice with URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is invalid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    nop

    .line 285
    :try_start_4
    invoke-static {v1}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 286
    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 289
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    .line 285
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_5
    invoke-static {v1}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 286
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p1    # "sliceUri":Landroid/net/Uri;
    .end local p2    # "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 289
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p1    # "sliceUri":Landroid/net/Uri;
    .restart local p2    # "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    :catchall_1
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static pinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 436
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v0

    .line 437
    .local v0, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    iget-object v1, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_0

    .line 441
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "slice_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 443
    const-string v2, "pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {v1, p2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 445
    iget-object v2, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v3, "pin_slice"

    const-string/jumbo v4, "supports_versioned_parcelable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    nop

    .end local v1    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to pin slice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 438
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static revokeSlicePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "toPackage"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 616
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 617
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v0, p3}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .local v1, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 619
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "slice_uri"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 620
    const-string v3, "provider_pkg"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v3, "pkg"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v3, v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v4, "revoke_perms"

    const-string/jumbo v5, "supports_versioned_parcelable"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    nop

    .end local v2    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 627
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_0
    goto :goto_1

    .line 617
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :catchall_0
    move-exception v2

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "toPackage":Ljava/lang/String;
    .end local p3    # "uri":Landroid/net/Uri;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 625
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "toPackage":Ljava/lang/String;
    .restart local p3    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "toPackage":Ljava/lang/String;
    .end local p3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "toPackage":Ljava/lang/String;
    .restart local p3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to get slice descendants"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public static unpinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 456
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-static {p0}, Landroidx/slice/compat/SliceProviderCompat;->getPinnedSlices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v0

    .line 458
    .local v0, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    iget-object v1, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_0

    .line 462
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "slice_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 464
    const-string v2, "pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {v1, p2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 466
    iget-object v2, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v3, "unpin_slice"

    const-string/jumbo v4, "supports_versioned_parcelable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    nop

    .end local v1    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to unpin slice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 459
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    .end local v0    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 139
    const-string v0, "bind_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "supports_versioned_parcelable"

    const-string/jumbo v2, "slice"

    const/4 v3, 0x0

    const-string/jumbo v4, "slice_uri"

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 141
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p3}, Landroidx/slice/compat/SliceProviderCompat;->getSpecs(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v4

    .line 143
    .local v4, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroidx/slice/compat/SliceProviderCompat;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Landroidx/slice/compat/SliceProviderCompat;->handleBindSlice(Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)Landroidx/slice/Slice;

    move-result-object v5

    .line 144
    .local v5, "s":Landroidx/slice/Slice;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v6, "b":Landroid/os/Bundle;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    if-eqz v5, :cond_0

    invoke-static {v5}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v3

    :cond_0
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 148
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    :cond_2
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    :goto_0
    return-object v6

    .line 151
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v4    # "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    .end local v5    # "s":Landroidx/slice/Slice;
    .end local v6    # "b":Landroid/os/Bundle;
    :cond_3
    const-string v0, "map_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v5, "slice_intent"

    if-eqz v0, :cond_8

    .line 152
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v4, v0}, Landroidx/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v4

    .line 154
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v5, "b":Landroid/os/Bundle;
    if-eqz v4, :cond_7

    .line 156
    invoke-static {p3}, Landroidx/slice/compat/SliceProviderCompat;->getSpecs(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v6

    .line 157
    .local v6, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroidx/slice/compat/SliceProviderCompat;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Landroidx/slice/compat/SliceProviderCompat;->handleBindSlice(Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)Landroidx/slice/Slice;

    move-result-object v7

    .line 158
    .local v7, "s":Landroidx/slice/Slice;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    if-eqz v7, :cond_4

    invoke-static {v7}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v3

    :cond_4
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 161
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    :cond_6
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 163
    .end local v6    # "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    .end local v7    # "s":Landroidx/slice/Slice;
    :goto_1
    goto :goto_2

    .line 164
    :cond_7
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    :goto_2
    return-object v5

    .line 167
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "b":Landroid/os/Bundle;
    :cond_8
    const-string v0, "map_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 168
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 169
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v1, v0}, Landroidx/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 170
    .local v1, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v3, "b":Landroid/os/Bundle;
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    return-object v3

    .line 173
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "b":Landroid/os/Bundle;
    :cond_9
    const-string v0, "pin_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pkg"

    if-eqz v0, :cond_b

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 175
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p3}, Landroidx/slice/compat/SliceProviderCompat;->getSpecs(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v2

    .line 176
    .local v2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    invoke-virtual {v4, v0, v1, v2}, Landroidx/slice/compat/CompatPinnedList;->addPin(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 178
    invoke-direct {p0, v0}, Landroidx/slice/compat/SliceProviderCompat;->handleSlicePinned(Landroid/net/Uri;)V

    .line 180
    :cond_a
    return-object v3

    .line 181
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    :cond_b
    const-string/jumbo v0, "unpin_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 182
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 183
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .restart local v1    # "pkg":Ljava/lang/String;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    invoke-virtual {v2, v0, v1}, Landroidx/slice/compat/CompatPinnedList;->removePin(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 185
    invoke-direct {p0, v0}, Landroidx/slice/compat/SliceProviderCompat;->handleSliceUnpinned(Landroid/net/Uri;)V

    .line 187
    :cond_c
    return-object v3

    .line 188
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_d
    const-string v0, "get_specs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 189
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 190
    .restart local v0    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v1, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    invoke-virtual {v2, v0}, Landroidx/slice/compat/CompatPinnedList;->getSpecs(Landroid/net/Uri;)Landroidx/collection/ArraySet;

    move-result-object v2

    .line 192
    .local v2, "specs":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {v2}, Landroidx/collection/ArraySet;->size()I

    move-result v3

    if-eqz v3, :cond_e

    .line 195
    invoke-static {v1, v2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 196
    return-object v1

    .line 193
    :cond_e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not pinned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "specs":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/slice/SliceSpec;>;"
    :cond_f
    const-string v0, "get_descendants"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 198
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 199
    .restart local v0    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 200
    .restart local v1    # "b":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    .line 201
    invoke-direct {p0, v0}, Landroidx/slice/compat/SliceProviderCompat;->handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    const-string/jumbo v3, "slice_descendants"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 202
    return-object v1

    .line 203
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_10
    const-string v0, "check_perms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 204
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 205
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "pid"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 207
    .local v2, "pid":I
    const-string/jumbo v3, "uid"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "uid":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v4, "b":Landroid/os/Bundle;
    iget-object v5, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-virtual {v5, v0, v2, v3}, Landroidx/slice/compat/CompatPermissionManager;->checkSlicePermission(Landroid/net/Uri;II)I

    move-result v5

    const-string v6, "result"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    return-object v4

    .line 211
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "pid":I
    .end local v3    # "uid":I
    .end local v4    # "b":Landroid/os/Bundle;
    :cond_11
    const-string v0, "grant_perms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Only the owning process can manage slice permissions"

    if-eqz v0, :cond_13

    .line 212
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 213
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "toPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-ne v4, v5, :cond_12

    .line 217
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-virtual {v2, v0, v1}, Landroidx/slice/compat/CompatPermissionManager;->grantSlicePermission(Landroid/net/Uri;Ljava/lang/String;)V

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "toPkg":Ljava/lang/String;
    goto :goto_3

    .line 215
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v1    # "toPkg":Ljava/lang/String;
    :cond_12
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 218
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "toPkg":Ljava/lang/String;
    :cond_13
    const-string v0, "revoke_perms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 219
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 220
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .restart local v1    # "toPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-ne v4, v5, :cond_14

    .line 224
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-virtual {v2, v0, v1}, Landroidx/slice/compat/CompatPermissionManager;->revokeSlicePermission(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_4

    .line 222
    :cond_14
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 218
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "toPkg":Ljava/lang/String;
    :cond_15
    :goto_3
    nop

    .line 226
    :goto_4
    return-object v3
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0}, Landroidx/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
