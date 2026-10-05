.class public abstract Lcom/android/launcher3/icons/cache/BaseIconCache;
.super Ljava/lang/Object;
.source "BaseIconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;,
        Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EMPTY_CLASS_NAME:Ljava/lang/String; = "."

.field private static final IDENTITY_FORMAT_STRING:Ljava/lang/String; = "%1$s"

.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "BaseIconCache"


# instance fields
.field private final mBgLooper:Landroid/os/Looper;

.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private final mDbFileName:Ljava/lang/String;

.field private mDefaultIcon:Lcom/android/launcher3/icons/BitmapInfo;

.field protected mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

.field protected mIconDpi:I

.field protected mLocaleList:Landroid/os/LocaleList;

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field protected mSystemState:Ljava/lang/String;

.field private final mUserFlagOpMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/util/FlagOp;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserFormatString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$3qnH7f3xd6rCwZUpVp4QrKm65Yo(Lcom/android/launcher3/icons/cache/BaseIconCache;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->lambda$updateIconParams$0(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbFileName"    # Ljava/lang/String;
    .param p3, "bgLooper"    # Landroid/os/Looper;
    .param p4, "iconDpi"    # I
    .param p5, "iconPixelSize"    # I
    .param p6, "inMemoryCache"    # Z

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    nop

    .line 118
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mSystemState:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFlagOpMap:Landroid/util/SparseArray;

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFormatString:Landroid/util/SparseArray;

    .line 140
    iput-object p1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDbFileName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 143
    iput-object p3, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mBgLooper:Landroid/os/Looper;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    .line 146
    if-eqz p6, :cond_0

    .line 147
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lcom/android/launcher3/icons/cache/BaseIconCache$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/cache/BaseIconCache$1;-><init>(Lcom/android/launcher3/icons/cache/BaseIconCache;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    .line 163
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateSystemState()V

    .line 164
    iput p4, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    .line 165
    new-instance v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-direct {v0, p1, p2, p5}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    .line 166
    return-void
.end method

.method private addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JJ)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Landroid/content/ComponentName;
    .param p3, "info"    # Landroid/content/pm/PackageInfo;
    .param p4, "userSerial"    # J
    .param p6, "lastUpdateTime"    # J

    .line 356
    const-string v0, "componentName"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "profileId"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 358
    const-string v0, "lastUpdated"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 359
    iget v0, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->insertOrReplace(Landroid/content/ContentValues;)V

    .line 361
    return-void
.end method

.method private assertWorkerThread()V
    .locals 3

    .line 793
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mBgLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 796
    return-void

    .line 794
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache accessed on wrong thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .line 201
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 203
    :try_start_0
    iget v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 206
    :cond_0
    iget v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-static {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 547
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v1
.end method

.method private synthetic lambda$updateIconParams$0(II)V
    .locals 0
    .param p1, "iconDpi"    # I
    .param p2, "iconPixelSize"    # I

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateIconParamsBg(II)V

    return-void
.end method

.method private newContentValues(Lcom/android/launcher3/icons/BitmapInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "bitmapInfo"    # Lcom/android/launcher3/icons/BitmapInfo;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "keywords"    # Ljava/lang/String;

    .line 764
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 765
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/android/launcher3/icons/BitmapInfo;->canPersist()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "icon"

    const-string v4, "mono_icon"

    if-eqz v1, :cond_1

    .line 766
    iget-object v1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/launcher3/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 769
    invoke-virtual {p1}, Lcom/android/launcher3/icons/BitmapInfo;->getMono()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 770
    .local v1, "mono":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v5, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 771
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 772
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v3, v5, :cond_0

    .line 773
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 774
    .local v2, "pixels":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 775
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 776
    .end local v2    # "pixels":[B
    goto :goto_0

    .line 777
    :cond_0
    move-object v3, v2

    check-cast v3, [B

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 779
    .end local v1    # "mono":Landroid/graphics/Bitmap;
    :goto_0
    goto :goto_1

    .line 780
    :cond_1
    move-object v1, v2

    check-cast v1, [B

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 781
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 783
    :goto_1
    iget v1, p1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "icon_color"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 784
    iget v1, p1, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    const-string v1, "label"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v1, "system_state"

    invoke-virtual {p0, p3}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v1, "keywords"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    return-object v0
.end method

.method private removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 240
    .local v0, "forDeletion":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    .line 241
    .local v2, "key":Lcom/android/launcher3/util/ComponentKey;
    iget-object v3, v2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 242
    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v2    # "key":Lcom/android/launcher3/util/ComponentKey;
    :cond_0
    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    .line 247
    .local v2, "condemned":Lcom/android/launcher3/util/ComponentKey;
    iget-object v3, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .end local v2    # "condemned":Lcom/android/launcher3/util/ComponentKey;
    goto :goto_1

    .line 249
    :cond_2
    return-void
.end method

.method private declared-synchronized updateIconParamsBg(II)V
    .locals 3
    .param p1, "iconDpi"    # I
    .param p2, "iconPixelSize"    # I

    monitor-enter p0

    .line 190
    :try_start_0
    iput p1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDefaultIcon:Lcom/android/launcher3/icons/BitmapInfo;

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFlagOpMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->clear()V

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->close()V

    .line 195
    new-instance v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDbFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 189
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    .end local p1    # "iconDpi":I
    .end local p2    # "iconPixelSize":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateSystemState()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mSystemState:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFormatString:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 278
    return-void
.end method

.method private updateTitleAndIconLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Landroid/database/Cursor;Z)Z
    .locals 7
    .param p1, "cacheKey"    # Lcom/android/launcher3/util/ComponentKey;
    .param p2, "entry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "lowRes"    # Z

    .line 644
    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->-$$Nest$sfgetINDEX_COLOR()I

    move-result v1

    .line 645
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v1

    .line 644
    invoke-static {v0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 646
    invoke-static {}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->-$$Nest$sfgetINDEX_TITLE()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 647
    iget-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 648
    const-string v0, ""

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 649
    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    .line 651
    :cond_0
    iget-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 654
    :goto_0
    const/4 v0, 0x0

    if-nez p4, :cond_4

    .line 655
    invoke-static {}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->-$$Nest$sfgetINDEX_ICON()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 656
    .local v1, "data":[B
    if-nez v1, :cond_1

    .line 657
    return v0

    .line 660
    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 661
    .local v2, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 662
    array-length v3, v1

    .line 663
    invoke-static {v1, v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v4, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v4, v4, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    .line 662
    invoke-static {v3, v4}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    iput-object v3, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .end local v2    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    nop

    .line 670
    invoke-static {}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->-$$Nest$sfgetINDEX_MONO_ICON()I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 671
    iget-object v2, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, v2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 672
    .local v2, "icon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    array-length v3, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    if-ne v3, v4, :cond_4

    .line 673
    nop

    .line 674
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 673
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 675
    .local v3, "monoBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 676
    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 677
    .local v4, "hwMonoBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 678
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 679
    move-object v3, v4

    .line 681
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v5

    .line 682
    .local v5, "factory":Lcom/android/launcher3/icons/BaseIconFactory;
    :try_start_1
    iget-object v6, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v6, v3, v5}, Lcom/android/launcher3/icons/BitmapInfo;->setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    goto :goto_2

    .line 681
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0

    .line 665
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "monoBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "hwMonoBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "factory":Lcom/android/launcher3/icons/BaseIconFactory;
    :catch_0
    move-exception v2

    .line 666
    .local v2, "e":Ljava/lang/Exception;
    return v0

    .line 686
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    iget-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->-$$Nest$sfgetINDEX_FLAGS()I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    .line 687
    iget-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserFlagOpLocked(Landroid/os/UserHandle;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 688
    iget-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method


# virtual methods
.method public declared-synchronized addIconToDBAndMemCache(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/content/pm/PackageInfo;JZ)V
    .locals 18
    .param p3, "info"    # Landroid/content/pm/PackageInfo;
    .param p4, "userSerial"    # J
    .param p6, "replaceExisting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Landroid/content/pm/PackageInfo;",
            "JZ)V"
        }
    .end annotation

    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    monitor-enter p0

    .line 311
    :try_start_0
    invoke-interface {v10, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->getUser(Ljava/lang/Object;)Landroid/os/UserHandle;

    move-result-object v1

    move-object v11, v1

    .line 312
    .local v11, "user":Landroid/os/UserHandle;
    invoke-interface {v10, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v1

    move-object v12, v1

    .line 314
    .local v12, "componentName":Landroid/content/ComponentName;
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, v12, v11}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    move-object v13, v1

    .line 315
    .local v13, "key":Lcom/android/launcher3/util/ComponentKey;
    const/4 v1, 0x0

    .line 316
    .local v1, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    if-nez p6, :cond_1

    .line 317
    iget-object v2, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-object v1, v2

    .line 319
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    :cond_0
    const/4 v1, 0x0

    .line 323
    :cond_1
    if-nez v1, :cond_2

    .line 324
    new-instance v2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v2}, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    move-object v1, v2

    .line 325
    iget-object v2, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-interface {v10, v2, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    move-object v14, v1

    goto :goto_0

    .line 323
    :cond_2
    move-object v14, v1

    .line 330
    .end local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v14, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :goto_0
    iget-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    monitor-exit p0

    return-void

    .line 332
    :cond_3
    :try_start_1
    invoke-interface {v10, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 333
    .local v1, "entryTitle":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 334
    if-nez v1, :cond_4

    .line 335
    const-string v2, "BaseIconCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No label returned from caching logic instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_4
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v15, v1

    goto :goto_1

    .line 333
    :cond_5
    move-object v15, v1

    .line 339
    .end local v1    # "entryTitle":Ljava/lang/CharSequence;
    .local v15, "entryTitle":Ljava/lang/CharSequence;
    :goto_1
    iput-object v15, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 341
    iget-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v1, v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 342
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher3/icons/cache/CachingLogic;->addToMemCache()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_6
    iget-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    invoke-interface {v10, v0, v4}, Lcom/android/launcher3/icons/cache/CachingLogic;->getKeywords(Ljava/lang/Object;Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-direct {v9, v1, v2, v3, v4}, Lcom/android/launcher3/icons/cache/BaseIconCache;->newContentValues(Lcom/android/launcher3/icons/BitmapInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 346
    .local v2, "values":Landroid/content/ContentValues;
    nop

    .line 347
    move-object/from16 v7, p3

    invoke-interface {v10, v0, v7}, Lcom/android/launcher3/icons/cache/CachingLogic;->getLastUpdatedTime(Ljava/lang/Object;Landroid/content/pm/PackageInfo;)J

    move-result-wide v16

    .line 346
    move-object/from16 v1, p0

    move-object v3, v12

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/icons/cache/BaseIconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 310
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v11    # "user":Landroid/os/UserHandle;
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "key":Lcom/android/launcher3/util/ComponentKey;
    .end local v14    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v15    # "entryTitle":Ljava/lang/CharSequence;
    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    .end local p2    # "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    .end local p3    # "info":Landroid/content/pm/PackageInfo;
    .end local p4    # "userSerial":J
    .end local p6    # "replaceExisting":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/database/Cursor;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .locals 18
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p5, "cursor"    # Landroid/database/Cursor;
    .param p6, "usePackageIcon"    # Z
    .param p7, "useLowResIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Landroid/database/Cursor;",
            "ZZ)",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;"
        }
    .end annotation

    .line 417
    .local p3, "infoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p4, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move/from16 v11, p7

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->assertWorkerThread()V

    .line 418
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v12, p1

    invoke-direct {v0, v12, v9}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    move-object v13, v0

    .line 419
    .local v13, "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    iget-object v0, v8, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    .line 420
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BitmapInfo;->isLowRes()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v11, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    move-object/from16 v2, p4

    goto :goto_3

    .line 421
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v1}, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    move-object v14, v1

    .line 422
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v14, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    invoke-interface/range {p4 .. p4}, Lcom/android/launcher3/icons/cache/CachingLogic;->addToMemCache()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, v8, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_2
    const/4 v0, 0x0

    .line 428
    .local v0, "object":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 429
    .local v1, "providerFetchedOnce":Z
    if-nez v10, :cond_3

    .line 430
    invoke-virtual {v8, v13, v14, v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getEntryFromDBLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Z)Z

    move-result v2

    goto :goto_1

    .line 431
    :cond_3
    invoke-direct {v8, v13, v14, v10, v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateTitleAndIconLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Landroid/database/Cursor;Z)Z

    move-result v2

    :goto_1
    move v15, v2

    .line 432
    .local v15, "cacheEntryUpdated":Z
    if-nez v15, :cond_4

    .line 433
    invoke-interface/range {p3 .. p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v16

    .line 434
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    .local v16, "object":Ljava/lang/Object;, "TT;"
    const/16 v17, 0x1

    .line 436
    .end local v1    # "providerFetchedOnce":Z
    .local v17, "providerFetchedOnce":Z
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/icons/cache/BaseIconCache;->loadFallbackIcon(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;ZZLandroid/content/ComponentName;Landroid/os/UserHandle;)V

    move-object/from16 v0, v16

    move/from16 v1, v17

    .line 446
    .end local v16    # "object":Ljava/lang/Object;, "TT;"
    .end local v17    # "providerFetchedOnce":Z
    .restart local v0    # "object":Ljava/lang/Object;, "TT;"
    .restart local v1    # "providerFetchedOnce":Z
    :cond_4
    iget-object v2, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 447
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 448
    invoke-interface/range {p3 .. p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 449
    const/4 v1, 0x1

    .line 451
    :cond_5
    if-eqz v0, :cond_6

    .line 452
    move-object/from16 v2, p4

    invoke-virtual {v8, v0, v14, v2, v9}, Lcom/android/launcher3/icons/cache/BaseIconCache;->loadFallbackTitle(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 451
    :cond_6
    move-object/from16 v2, p4

    goto :goto_2

    .line 446
    :cond_7
    move-object/from16 v2, p4

    .line 456
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    .end local v1    # "providerFetchedOnce":Z
    .end local v15    # "cacheEntryUpdated":Z
    :goto_2
    move-object v0, v14

    .end local v14    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :goto_3
    return-object v0
.end method

.method protected cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p5, "usePackageIcon"    # Z
    .param p6, "useLowResIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;ZZ)",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;"
        }
    .end annotation

    .line 401
    .local p3, "infoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p4, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/database/Cursor;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized cachePackageInstallInfo(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "title"    # Ljava/lang/CharSequence;

    monitor-enter p0

    .line 522
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 524
    invoke-static {p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    .line 525
    .local v0, "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    .line 528
    .local v1, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    if-nez v1, :cond_0

    .line 529
    new-instance v2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v2}, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    move-object v1, v2

    .line 531
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 532
    iput-object p4, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 534
    :cond_1
    if-eqz p3, :cond_2

    .line 535
    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v2

    .line 536
    .local v2, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    new-instance v3, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    invoke-virtual {v3, p2}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createShapedIconBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 537
    invoke-virtual {v2}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    .line 539
    .end local v2    # "li":Lcom/android/launcher3/icons/BaseIconFactory;
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, v2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 540
    iget-object v2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :cond_3
    monitor-exit p0

    return-void

    .line 521
    .end local v0    # "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "icon":Landroid/graphics/Bitmap;
    .end local p4    # "title":Ljava/lang/CharSequence;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearMemoryCache()V
    .locals 1

    monitor-enter p0

    .line 504
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->assertWorkerThread()V

    .line 505
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    .line 503
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDefaultIcon:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 367
    .local v0, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->makeDefaultIcon()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDefaultIcon:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 366
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 370
    .end local v0    # "li":Lcom/android/launcher3/icons/BaseIconFactory;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDefaultIcon:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserFlagOpLocked(Landroid/os/UserHandle;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-object v0

    .line 364
    .end local p1    # "user":Landroid/os/UserHandle;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .locals 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "useLowResIcon"    # Z

    .line 560
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->assertWorkerThread()V

    .line 561
    invoke-static/range {p1 .. p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v13

    .line 562
    .local v13, "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    iget-object v0, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    .line 564
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BitmapInfo;->isLowRes()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v12, :cond_6

    .line 565
    :cond_0
    new-instance v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v1}, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    move-object v14, v1

    .line 566
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v14, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    const/4 v15, 0x1

    .line 569
    .local v15, "entryUpdated":Z
    invoke-virtual {v9, v13, v14, v12}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getEntryFromDBLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 571
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 572
    :cond_1
    const-wide/16 v0, 0x2000

    :goto_0
    nop

    .line 573
    .local v0, "flags":J
    const-wide v2, 0x100000000L

    or-long v16, v0, v2

    .line 574
    .end local v0    # "flags":J
    .local v16, "flags":J
    iget-object v0, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 575
    invoke-static/range {v16 .. v17}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 574
    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 576
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v1

    .line 577
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_3

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v1

    move-object v8, v1

    .line 584
    .local v8, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    iget-object v1, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 585
    invoke-virtual {v7, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v2}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    .line 586
    invoke-virtual {v2, v11}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v2

    invoke-virtual {v9, v7}, Lcom/android/launcher3/icons/cache/BaseIconCache;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setInstantApp(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v2

    .line 584
    invoke-virtual {v8, v1, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    move-object v5, v1

    .line 587
    .local v5, "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    invoke-virtual {v8}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    .line 589
    iget-object v1, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 590
    iget-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v1, v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 591
    nop

    .line 592
    if-eqz v12, :cond_2

    sget-object v1, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    iget-object v1, v5, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_1
    iget v2, v5, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    .line 591
    invoke-static {v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 596
    iget-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 597
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    const/4 v2, 0x0

    invoke-direct {v9, v5, v1, v10, v2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->newContentValues(Lcom/android/launcher3/icons/BitmapInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 598
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, v13, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v18

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "li":Lcom/android/launcher3/icons/BaseIconFactory;
    .local v20, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v21, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-object/from16 v1, p0

    move-object v4, v0

    move-object/from16 v22, v5

    .end local v5    # "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    .local v22, "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    move-wide/from16 v5, v18

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    .end local v20    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "li":Lcom/android/launcher3/icons/BaseIconFactory;
    .local v18, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v19, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/icons/cache/BaseIconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JJ)V

    .line 604
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v16    # "flags":J
    .end local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "li":Lcom/android/launcher3/icons/BaseIconFactory;
    .end local v22    # "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    goto :goto_2

    .line 578
    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    .restart local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "flags":J
    :cond_3
    move-object/from16 v18, v7

    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v2, "ApplicationInfo is null"

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v13    # "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v14    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v15    # "entryUpdated":Z
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "useLowResIcon":Z
    throw v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v16    # "flags":J
    .end local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    .restart local v14    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v15    # "entryUpdated":Z
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "user":Landroid/os/UserHandle;
    .restart local p3    # "useLowResIcon":Z
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v15, 0x0

    .line 608
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    :goto_2
    if-eqz v15, :cond_5

    .line 609
    iget-object v0, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .end local v15    # "entryUpdated":Z
    :cond_5
    move-object v0, v14

    .end local v14    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :cond_6
    return-object v0
.end method

.method protected getEntryFromDBLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Z)Z
    .locals 8
    .param p1, "cacheKey"    # Lcom/android/launcher3/util/ComponentKey;
    .param p2, "entry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .param p3, "lowRes"    # Z

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "c":Landroid/database/Cursor;
    const-string v1, "loadIconIndividually"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 620
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    .line 621
    if-eqz p3, :cond_0

    sget-object v3, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_LOW_RES:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_HIGH_RES:[Ljava/lang/String;

    :goto_0
    const-string v4, "componentName = ? AND profileId = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 624
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 625
    invoke-virtual {p0, v6}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 620
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 626
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 627
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateTitleAndIconLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Landroid/database/Cursor;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    if-eqz v0, :cond_1

    .line 633
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 627
    return v1

    .line 632
    :cond_2
    if-eqz v0, :cond_3

    .line 633
    goto :goto_1

    .line 632
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 629
    :catch_0
    move-exception v2

    .line 630
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "BaseIconCache"

    const-string v4, "Error reading icon cache"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    nop

    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v0, :cond_3

    .line 633
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 636
    nop

    .line 637
    return v1

    .line 632
    :goto_2
    if-eqz v0, :cond_4

    .line 633
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 636
    throw v1
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 220
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    iget v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-static {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    iget v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-static {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;
.end method

.method protected getIconSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mSystemState:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getSerialNumberForUser(Landroid/os/UserHandle;)J
.end method

.method public getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
    .locals 1

    .line 265
    invoke-direct {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateSystemState()V

    .line 266
    new-instance v0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;-><init>(Lcom/android/launcher3/icons/cache/BaseIconCache;)V

    return-object v0
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 286
    invoke-virtual {p2}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    .line 287
    .local v0, "key":I
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFormatString:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 289
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 290
    iget-object v2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "%1$s"

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "format":Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const/4 v2, 0x0

    .line 294
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFormatString:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 296
    .end local v2    # "format":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFormatString:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    .restart local v2    # "format":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_2

    move-object v3, p1

    goto :goto_1

    :cond_2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3
.end method

.method protected getUserFlagOpLocked(Landroid/os/UserHandle;)Lcom/android/launcher3/util/FlagOp;
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 375
    invoke-virtual {p1}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    .line 377
    .local v0, "key":I
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFlagOpMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    move v2, v1

    .local v2, "index":I
    if-ltz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFlagOpMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/FlagOp;

    return-object v1

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v1

    .line 381
    .local v1, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    :try_start_0
    new-instance v3, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    invoke-virtual {v3, p1}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v3

    .line 382
    .local v3, "op":Lcom/android/launcher3/util/FlagOp;
    iget-object v4, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFlagOpMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    nop

    .line 384
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    .line 383
    :cond_1
    return-object v3

    .line 380
    .end local v3    # "op":Lcom/android/launcher3/util/FlagOp;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3
.end method

.method public isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "icon"    # Lcom/android/launcher3/icons/BitmapInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 389
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIconUpdateInProgress()Z
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method protected loadFallbackIcon(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;ZZLandroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2
    .param p2, "entry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .param p4, "usePackageIcon"    # Z
    .param p5, "usePackageTitle"    # Z
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;ZZ",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 466
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p3, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    if-eqz p1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-interface {p3, v0, p1}, Lcom/android/launcher3/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_0

    .line 469
    :cond_0
    if-eqz p4, :cond_1

    .line 470
    nop

    .line 471
    invoke-virtual {p6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 470
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p7, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    .line 474
    .local v0, "packageEntry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 475
    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 477
    if-eqz p5, :cond_1

    .line 478
    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 481
    .end local v0    # "packageEntry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :cond_1
    iget-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v0, :cond_2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using default icon for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseIconCache"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0, p7}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 487
    :cond_2
    :goto_0
    return-void
.end method

.method protected loadFallbackTitle(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/os/UserHandle;)V
    .locals 1
    .param p2, "entry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 495
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p3, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    invoke-interface {p3, p1}, Lcom/android/launcher3/icons/cache/CachingLogic;->getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 496
    iget-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-interface {p3, p1}, Lcom/android/launcher3/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 499
    :cond_0
    iget-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 500
    invoke-interface {p3, p1, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->getDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 499
    invoke-virtual {p0, v0, p4}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 501
    return-void
.end method

.method public declared-synchronized queryCacheDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    monitor-enter p0

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 696
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    .end local p1    # "columns":[Ljava/lang/String;
    .end local p2    # "selection":Ljava/lang/String;
    .end local p3    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 230
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .end local p2    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 256
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 257
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 258
    .local v0, "userSerial":J
    iget-object v2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    const-string v3, "componentName LIKE ? AND profileId = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 260
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 258
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->delete(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 255
    .end local v0    # "userSerial":J
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateIconParams(II)V
    .locals 2
    .param p1, "iconDpi"    # I
    .param p2, "iconPixelSize"    # I

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/icons/cache/BaseIconCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/icons/cache/BaseIconCache;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method
