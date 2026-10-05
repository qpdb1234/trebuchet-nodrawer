.class public Lcom/android/launcher3/model/ModelDbController;
.super Ljava/lang/Object;
.source "ModelDbController.java"


# static fields
.field private static final EMPTY_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_DATABASE_CREATED"

.field public static final EXTRA_DB_NAME:Ljava/lang/String; = "db_name"

.field private static final TAG:Ljava/lang/String; = "LauncherProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;


# direct methods
.method public static synthetic $r8$lambda$4O83GUO14K_nqabIp9o7kIx4h4k(Lcom/android/launcher3/model/ModelDbController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelDbController;->lambda$createDatabaseHelper$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method private static addModifiedTime(Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "modified"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 392
    return-void
.end method

.method private clearFlagEmptyDbCreated()V
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/Item;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey()Lcom/android/launcher3/ConstantItem;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->removeSync([Lcom/android/launcher3/Item;)V

    .line 396
    return-void
.end method

.method private declared-synchronized createDbIfNotExists()V
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->createDatabaseHelper(Z)Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/provider/RestoreDbTask;->restoreIfNeeded(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local p0    # "this":Lcom/android/launcher3/model/ModelDbController;
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createWorkspaceLoaderFromAppRestriction(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 11
    .param p1, "widgetHolder"    # Lcom/android/launcher3/widget/LauncherWidgetHolder;

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 460
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "launcher3.layout.provider.blob"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "blobHandlerDigest":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "LauncherProvider"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/blob/BlobStoreManager;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/blob/BlobStoreManager;

    .line 463
    .local v2, "blobManager":Landroid/app/blob/BlobStoreManager;
    :try_start_0
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 465
    const/4 v6, 0x3

    invoke-static {v1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v7, "launcher-layout"

    const-string v8, "ignore"

    .line 464
    const-wide/16 v9, 0x0

    invoke-static {v6, v7, v9, v10, v8}, Landroid/app/blob/BlobHandle;->createWithSha256([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/blob/BlobStoreManager;->openBlob(Landroid/app/blob/BlobHandle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Lcom/android/launcher3/model/ModelDbController$1;

    invoke-direct {v6, p0}, Lcom/android/launcher3/model/ModelDbController$1;-><init>(Lcom/android/launcher3/model/ModelDbController;)V

    invoke-direct {p0, v5, p1, v6}, Lcom/android/launcher3/model/ModelDbController;->getAutoInstallsLayoutFromIS(Ljava/io/InputStream;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 467
    return-object v6

    .line 463
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "blobHandlerDigest":Ljava/lang/String;
    .end local v2    # "blobManager":Landroid/app/blob/BlobStoreManager;
    .end local p1    # "widgetHolder":Lcom/android/launcher3/widget/LauncherWidgetHolder;
    :goto_0
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 468
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "blobHandlerDigest":Ljava/lang/String;
    .restart local v2    # "blobManager":Landroid/app/blob/BlobStoreManager;
    .restart local p1    # "widgetHolder":Lcom/android/launcher3/widget/LauncherWidgetHolder;
    :catch_0
    move-exception v5

    .line 469
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Error getting layout from blob handle"

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    return-object v4

    .line 474
    .end local v2    # "blobManager":Landroid/app/blob/BlobStoreManager;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "launcher3.layout.provider"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "authority":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 476
    return-object v4

    .line 479
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 480
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    .line 481
    .local v6, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v6, :cond_2

    .line 482
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No provider found for authority "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-object v4

    .line 485
    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/android/launcher3/model/ModelDbController;->getLayoutUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    .line 486
    .local v7, "uri":Landroid/net/Uri;
    :try_start_5
    invoke-virtual {v0, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 487
    .local v8, "in":Ljava/io/InputStream;
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading layout from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v9, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 490
    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {v9}, Lcom/android/launcher3/AutoInstallsLayout$SourceResources;->wrap(Landroid/content/res/Resources;)Lcom/android/launcher3/AutoInstallsLayout$SourceResources;

    move-result-object v10

    invoke-direct {p0, v8, p1, v10}, Lcom/android/launcher3/model/ModelDbController;->getAutoInstallsLayoutFromIS(Ljava/io/InputStream;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 491
    if-eqz v8, :cond_3

    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 490
    :cond_3
    return-object v10

    .line 486
    .end local v9    # "res":Landroid/content/res/Resources;
    :catchall_2
    move-exception v9

    if-eqz v8, :cond_4

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v10

    :try_start_9
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "blobHandlerDigest":Ljava/lang/String;
    .end local v2    # "authority":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local p1    # "widgetHolder":Lcom/android/launcher3/widget/LauncherWidgetHolder;
    :cond_4
    :goto_1
    throw v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 491
    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "blobHandlerDigest":Ljava/lang/String;
    .restart local v2    # "authority":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local p1    # "widgetHolder":Lcom/android/launcher3/widget/LauncherWidgetHolder;
    :catch_1
    move-exception v8

    .line 492
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error getting layout stream from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    return-object v4
.end method

.method private getAutoInstallsLayoutFromIS(Ljava/io/InputStream;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "widgetHolder"    # Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .param p3, "res"    # Lcom/android/launcher3/AutoInstallsLayout$SourceResources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 501
    .local v0, "layout":Ljava/lang/String;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 502
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 504
    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v4, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    new-instance v8, Lcom/android/launcher3/model/ModelDbController$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/android/launcher3/model/ModelDbController$$ExternalSyntheticLambda0;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v9, "workspace"

    move-object v3, v2

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;Ljava/util/function/Supplier;Ljava/lang/String;)V

    return-object v2
.end method

.method private getDefaultLayoutParser(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/DefaultLayoutParser;
    .locals 8
    .param p1, "widgetHolder"    # Lcom/android/launcher3/widget/LauncherWidgetHolder;

    .line 519
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 521
    .local v0, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    :goto_0
    move v7, v1

    .line 524
    .local v7, "defaultLayout":I
    new-instance v1, Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    .line 525
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 524
    return-object v1
.end method

.method private getEmptyDbCreatedKey()Lcom/android/launcher3/ConstantItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    return-object v0
.end method

.method private getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;
    .locals 3
    .param p1, "dbName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    const/4 v1, 0x0

    .line 541
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 539
    const-string v2, "EMPTY_DATABASE_CREATED"

    if-eqz v0, :cond_0

    .line 540
    nop

    .line 541
    sget-object v0, Lcom/android/launcher3/EncryptionType;->ENCRYPTED:Lcom/android/launcher3/EncryptionType;

    .line 540
    invoke-static {v2, v1, v0}, Lcom/android/launcher3/LauncherPrefs;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    return-object v0

    .line 543
    :cond_0
    const-string v0, "launcher.db"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EMPTY_DATABASE_CREATED@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 545
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/EncryptionType;->ENCRYPTED:Lcom/android/launcher3/EncryptionType;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/LauncherPrefs;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Lcom/android/launcher3/EncryptionType;)Lcom/android/launcher3/ConstantItem;

    move-result-object v1

    return-object v1
.end method

.method public static getLayoutUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;

    .line 509
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 510
    .local v0, "grid":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "launcher_layout"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 511
    const-string v2, "version"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 512
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gridWidth"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 513
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gridHeight"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    .line 514
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hotseatSize"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 515
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 510
    return-object v1
.end method

.method static synthetic lambda$createDatabaseHelper$0()V
    .locals 0

    .line 115
    return-void
.end method

.method private synthetic lambda$createDatabaseHelper$1(Ljava/lang/String;)V
    .locals 4
    .param p1, "dbName"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lkotlin/Pair;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/launcher3/ConstantItem;->to(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherPrefs;->putSync([Lkotlin/Pair;)V

    return-void
.end method

.method static synthetic lambda$getAutoInstallsLayoutFromIS$2(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 0
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 505
    return-object p0
.end method

.method private migrateGridIfNeeded()Z
    .locals 8

    .line 291
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey()Lcom/android/launcher3/ConstantItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "LauncherProvider"

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "migrateGridIfNeeded: new DB already created, skipping migration"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 298
    .local v0, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->needsToMigrate(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 299
    const-string v1, "migrateGridIfNeeded: no grid migration needed"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v4

    .line 302
    :cond_1
    new-instance v3, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v3, v0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v3}, Lcom/android/launcher3/model/DeviceGridState;->getDbFile()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "targetDbName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/launcher3/model/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrateGridIfNeeded: target db is same as current: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return v1

    .line 307
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    .line 308
    .local v5, "oldHelper":Lcom/android/launcher3/model/DatabaseHelper;
    iget-object v6, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    instance-of v6, v6, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    if-eqz v6, :cond_3

    move-object v4, v5

    goto :goto_0

    .line 309
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher3/model/ModelDbController;->createDatabaseHelper(Z)Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    .line 311
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual {v5}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 311
    invoke-static {v6, v0, v4, v7}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->migrateGridIfNeeded(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    if-eq v2, v5, :cond_4

    .line 318
    invoke-virtual {v5}, Lcom/android/launcher3/model/DatabaseHelper;->close()V

    .line 311
    :cond_4
    return v1

    .line 317
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 313
    :catch_0
    move-exception v4

    .line 314
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "Failed to migrate grid"

    invoke-static {v2, v6, v4}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    nop

    .line 317
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    if-eq v2, v5, :cond_5

    .line 318
    invoke-virtual {v5}, Lcom/android/launcher3/model/DatabaseHelper;->close()V

    .line 315
    :cond_5
    return v1

    .line 317
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    if-eq v2, v5, :cond_6

    .line 318
    invoke-virtual {v5}, Lcom/android/launcher3/model/DatabaseHelper;->close()V

    .line 320
    :cond_6
    throw v1
.end method

.method private onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 356
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/DatabaseHelper;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 357
    return-void
.end method

.method private sendMetricsForFailedMigration(Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "restoreEventLogger"    # Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 329
    :try_start_0
    const-string v0, "SELECT itemType, COUNT(*) AS count FROM favorites GROUP BY itemType"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    :cond_0
    const-string v1, "itemType"

    .line 336
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "count"

    .line 337
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "grid_migration_failed"

    .line 335
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;->logFavoritesItemsRestoreFailed(IILjava/lang/String;)V

    .line 340
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 342
    :cond_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 344
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_1

    .line 329
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    .end local p2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 342
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    .restart local p2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LauncherProvider"

    const-string v2, "sendMetricsForFailedDb: Error reading from database"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public clearEmptyDbFlag()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 205
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->clearFlagEmptyDbCreated()V

    .line 206
    return-void
.end method

.method protected createDatabaseHelper(Z)Lcom/android/launcher3/model/DatabaseHelper;
    .locals 8
    .param p1, "forMigration"    # Z

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    .line 112
    .local v0, "isSandbox":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    .line 115
    .local v1, "dbName":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    new-instance v2, Lcom/android/launcher3/model/ModelDbController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/model/ModelDbController$$ExternalSyntheticLambda1;-><init>()V

    goto :goto_1

    .line 116
    :cond_1
    new-instance v2, Lcom/android/launcher3/model/ModelDbController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/model/ModelDbController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/model/ModelDbController;Ljava/lang/String;)V

    :goto_1
    nop

    .line 118
    .local v2, "onEmptyDbCreateCallback":Ljava/lang/Runnable;
    new-instance v3, Lcom/android/launcher3/model/DatabaseHelper;

    iget-object v4, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/launcher3/model/ModelDbController$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/android/launcher3/model/ModelDbController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/model/ModelDbController;)V

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/android/launcher3/model/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/ToLongFunction;Ljava/lang/Runnable;)V

    .line 123
    .local v3, "databaseHelper":Lcom/android/launcher3/model/DatabaseHelper;
    invoke-virtual {v3}, Lcom/android/launcher3/model/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "favorites"

    invoke-static {v4, v5}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 124
    const-string v4, "LauncherProvider"

    const-string v5, "Tables are missing after onCreate has been called. Trying to recreate"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v3}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 127
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/model/ModelDbController;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v5

    .line 126
    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 130
    :cond_2
    nop

    .line 131
    invoke-virtual {v3}, Lcom/android/launcher3/model/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 130
    const-string v5, "hotseat_restore_backup"

    invoke-static {v4, v5}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    .line 133
    invoke-virtual {v3}, Lcom/android/launcher3/model/DatabaseHelper;->initIds()V

    .line 134
    return-object v3
.end method

.method public createEmptyDB()V
    .locals 4

    .line 231
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lkotlin/Pair;

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey()Lcom/android/launcher3/ConstantItem;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/launcher3/ConstantItem;->to(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherPrefs;->putSync([Lkotlin/Pair;)V

    .line 234
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 178
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 180
    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 182
    :cond_0
    return v1
.end method

.method public deleteEmptyFolders()Lcom/android/launcher3/util/IntArray;
    .locals 9

    .line 365
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 367
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 368
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    .line 370
    .local v8, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    const-string v5, "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)"

    .line 376
    .local v5, "selection":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v3, "favorites"

    const-string v4, "_id"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    .line 378
    .local v1, "folderIds":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    const-string v2, "favorites"

    const-string v3, "_id"

    invoke-static {v3, v1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 382
    :cond_0
    invoke-virtual {v8}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    nop

    .line 384
    :try_start_2
    invoke-virtual {v8}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 383
    return-object v1

    .line 368
    .end local v1    # "folderIds":Lcom/android/launcher3/util/IntArray;
    .end local v5    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v8}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    throw v1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 384
    .end local v8    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 385
    .local v1, "ex":Landroid/database/SQLException;
    const-string v2, "LauncherProvider"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    return-object v2
.end method

.method public generateNewItemId()I
    .locals 1

    .line 213
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->generateNewItemId()I

    move-result v0

    return v0
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 351
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getNewScreenId()I
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->getNewScreenId()I

    move-result v0

    return v0
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 552
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .line 159
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2}, Lcom/android/launcher3/model/ModelDbController;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 163
    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/launcher3/model/DatabaseHelper;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 164
    .local v1, "rowId":I
    if-ltz v1, :cond_0

    .line 165
    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 167
    :cond_0
    return v1
.end method

.method public declared-synchronized loadDefaultFavoritesIfNecessary()V
    .locals 11

    monitor-enter p0

    .line 407
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 409
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey()Lcom/android/launcher3/ConstantItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 410
    const-string v0, "LauncherProvider"

    const-string v1, "loading default workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->newLauncherWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 414
    .local v0, "widgetHolder":Lcom/android/launcher3/widget/LauncherWidgetHolder;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->createWorkspaceLoaderFromAppRestriction(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    .local v1, "loader":Lcom/android/launcher3/AutoInstallsLayout;
    if-nez v1, :cond_0

    .line 416
    :try_start_2
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-static {v2, v0, v3}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v2

    move-object v1, v2

    move-object v7, v1

    goto :goto_0

    .line 447
    .end local v1    # "loader":Lcom/android/launcher3/AutoInstallsLayout;
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 415
    .restart local v1    # "loader":Lcom/android/launcher3/AutoInstallsLayout;
    :cond_0
    move-object v7, v1

    .line 418
    .end local v1    # "loader":Lcom/android/launcher3/AutoInstallsLayout;
    .local v7, "loader":Lcom/android/launcher3/AutoInstallsLayout;
    :goto_0
    if-nez v7, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/util/Partner;

    move-result-object v1

    move-object v8, v1

    .line 420
    .local v8, "partner":Lcom/android/launcher3/util/Partner;
    if-eqz v8, :cond_1

    .line 421
    const-string v1, "partner_default_layout"

    invoke-virtual {v8, v1}, Lcom/android/launcher3/util/Partner;->getXmlResId(Ljava/lang/String;)I

    move-result v1

    move v9, v1

    .line 422
    .local v9, "workspaceResId":I
    if-eqz v9, :cond_1

    .line 423
    new-instance v10, Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    .line 424
    invoke-virtual {v8}, Lcom/android/launcher3/util/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v1, v10

    move-object v3, v0

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    move-object v7, v10

    .line 429
    .end local v8    # "partner":Lcom/android/launcher3/util/Partner;
    .end local v9    # "workspaceResId":I
    :cond_1
    if-eqz v7, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 430
    .local v1, "usingExternallyProvidedLayout":Z
    :goto_1
    if-nez v7, :cond_3

    .line 431
    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->getDefaultLayoutParser(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v2

    .line 436
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 438
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/android/launcher3/model/DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-gtz v2, :cond_4

    if-eqz v1, :cond_4

    .line 441
    :try_start_4
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 442
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 443
    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->getDefaultLayoutParser(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v4

    .line 442
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/model/DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 445
    :cond_4
    :try_start_5
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->clearFlagEmptyDbCreated()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 447
    .end local v1    # "usingExternallyProvidedLayout":Z
    .end local v7    # "loader":Lcom/android/launcher3/AutoInstallsLayout;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    .line 448
    goto :goto_3

    .line 447
    .end local p0    # "this":Lcom/android/launcher3/model/ModelDbController;
    :catchall_1
    move-exception v1

    :goto_2
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    .line 448
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 450
    .end local v0    # "widgetHolder":Lcom/android/launcher3/widget/LauncherWidgetHolder;
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    .line 406
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newTransaction()Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 251
    new-instance v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 145
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 148
    .local v1, "result":Landroid/database/Cursor;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v2, "extra":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/model/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "db_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {v1, v2}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    .line 151
    return-object v1
.end method

.method public refreshHotseatRestoreTable()V
    .locals 3

    .line 259
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    .line 261
    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 260
    const-string v2, "hotseat_restore_backup"

    invoke-static {v1, v2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    .line 262
    return-void
.end method

.method public removeGhostWidgets()V
    .locals 2

    .line 241
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 243
    return-void
.end method

.method public tryMigrateDB(Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V
    .locals 4
    .param p1, "restoreEventLogger"    # Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;

    .line 270
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->migrateGridIfNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/model/ModelDbController;->sendMetricsForFailedMigration(Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 274
    :cond_0
    const-string v0, "LauncherProvider"

    const-string v1, "Migration failed: resetting launcher database"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createEmptyDB()V

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lkotlin/Pair;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    .line 277
    invoke-virtual {v3}, Lcom/android/launcher3/model/DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/launcher3/ConstantItem;->to(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 276
    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherPrefs;->putSync([Lkotlin/Pair;)V

    .line 280
    new-instance v0, Lcom/android/launcher3/model/DeviceGridState;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    .line 282
    :cond_1
    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    .line 193
    invoke-static {p2}, Lcom/android/launcher3/model/ModelDbController;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 195
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 196
    .local v1, "count":I
    return v1
.end method
