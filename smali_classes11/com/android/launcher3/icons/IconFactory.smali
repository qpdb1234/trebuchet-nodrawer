.class public Lcom/android/launcher3/icons/IconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "IconFactory.java"


# static fields
.field private static sPool:Lcom/android/launcher3/icons/IconFactory;

.field private static sPoolId:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field private final mPoolId:I

.field private next:Lcom/android/launcher3/icons/IconFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/icons/IconFactory;->sPoolId:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;III)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fillResIconDpi"    # I
    .param p3, "iconBitmapSize"    # I
    .param p4, "poolId"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    .line 67
    iput p4, p0, Lcom/android/launcher3/icons/IconFactory;->mPoolId:I

    .line 68
    return-void
.end method

.method public static clearPool()V
    .locals 2

    .line 55
    sget-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    .line 57
    sget v1, Lcom/android/launcher3/icons/IconFactory;->sPoolId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/launcher3/icons/IconFactory;->sPoolId:I

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    sget-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    if-eqz v1, :cond_0

    .line 40
    nop

    .line 41
    .local v1, "m":Lcom/android/launcher3/icons/IconFactory;
    iget-object v2, v1, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    sput-object v2, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    .line 42
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    .line 43
    monitor-exit v0

    return-object v1

    .line 45
    .end local v1    # "m":Lcom/android/launcher3/icons/IconFactory;
    :cond_0
    sget v1, Lcom/android/launcher3/icons/IconFactory;->sPoolId:I

    .line 46
    .local v1, "poolId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    new-instance v0, Lcom/android/launcher3/icons/IconFactory;

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->default_icon_bitmap_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/launcher3/icons/IconFactory;-><init>(Landroid/content/Context;III)V

    .line 48
    return-object v0

    .line 46
    .end local v1    # "poolId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/icons/IconFactory;->recycle()V

    .line 89
    return-void
.end method

.method public recycle()V
    .locals 3

    .line 74
    sget-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    sget v1, Lcom/android/launcher3/icons/IconFactory;->sPoolId:I

    iget v2, p0, Lcom/android/launcher3/icons/IconFactory;->mPoolId:I

    if-eq v1, v2, :cond_0

    .line 76
    monitor-exit v0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/IconFactory;->clear()V

    .line 81
    sget-object v1, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    iput-object v1, p0, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    .line 82
    sput-object p0, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
