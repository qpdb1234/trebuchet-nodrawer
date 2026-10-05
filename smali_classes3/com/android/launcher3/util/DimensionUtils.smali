.class public final Lcom/android/launcher3/util/DimensionUtils;
.super Ljava/lang/Object;
.source "DimensionUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/android/launcher3/util/DimensionUtils;",
        "",
        "()V",
        "getTaskbarPhoneDimensions",
        "Landroid/graphics/Point;",
        "deviceProfile",
        "Lcom/android/launcher3/DeviceProfile;",
        "res",
        "Landroid/content/res/Resources;",
        "isPhoneMode",
        "",
        "Trebuchet_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/DimensionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/DimensionUtils;

    invoke-direct {v0}, Lcom/android/launcher3/util/DimensionUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/DimensionUtils;->INSTANCE:Lcom/android/launcher3/util/DimensionUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTaskbarPhoneDimensions(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;Z)Landroid/graphics/Point;
    .locals 3
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "isPhoneMode"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "deviceProfile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 38
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, -0x1

    if-nez p2, :cond_0

    .line 39
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 40
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 41
    return-object v0

    .line 45
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-eqz v2, :cond_1

    .line 46
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 47
    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_stashed_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 48
    return-object v0

    .line 52
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v2, :cond_2

    .line 53
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 54
    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_phone_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 55
    return-object v0

    .line 59
    :cond_2
    sget v2, Lcom/android/launcher3/R$dimen;->taskbar_phone_size:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 60
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 61
    return-object v0
.end method
