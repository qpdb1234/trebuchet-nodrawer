.class public final Lcom/android/launcher3/util/WallpaperColorHints;
.super Ljava/lang/Object;
.source "WallpaperColorHints.kt"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/WallpaperColorHints$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWallpaperColorHints.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WallpaperColorHints.kt\ncom/android/launcher3/util/WallpaperColorHints\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,96:1\n1855#2,2:97\n*S KotlinDebug\n*F\n+ 1 WallpaperColorHints.kt\ncom/android/launcher3/util/WallpaperColorHints\n*L\n70#1:97,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0006H\u0003J\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\rJ\u000e\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/android/launcher3/util/WallpaperColorHints;",
        "Lcom/android/launcher3/util/SafeCloseable;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "<set-?>",
        "",
        "hints",
        "getHints",
        "()I",
        "onClose",
        "onColorHintsChangedListeners",
        "",
        "Lcom/android/launcher3/util/OnColorHintListener;",
        "wallpaperManager",
        "Landroid/app/WallpaperManager;",
        "getWallpaperManager",
        "()Landroid/app/WallpaperManager;",
        "close",
        "",
        "onColorsChanged",
        "colors",
        "Landroid/app/WallpaperColors;",
        "which",
        "registerOnColorHintsChangedListener",
        "listener",
        "unregisterOnColorsChangedListener",
        "Companion",
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
.field public static final Companion:Lcom/android/launcher3/util/WallpaperColorHints$Companion;

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/WallpaperColorHints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private hints:I

.field private final onClose:Lcom/android/launcher3/util/SafeCloseable;

.field private final onColorHintsChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/OnColorHintListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4_g3SvOAPQHVR_MBgvL5NEN2iHg()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/util/WallpaperColorHints;->_init_$lambda$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$4iLYB_I2uXwdQhP_QUOB8MMlYsg(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/WallpaperColorHints;->_init_$lambda$3(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Je6sXLUJTTSnxtnDlu5MJJyjyPw(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/WallpaperColorHints;->_init_$lambda$1(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gV7ulT4qWq77dgDoZEvmFG4VSHg(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperColors;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/WallpaperColorHints;->_init_$lambda$0(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperColors;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qKFHYdkKS5q1An_8-N4xj8fnS80(Landroid/content/Context;)Lcom/android/launcher3/util/WallpaperColorHints;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/util/WallpaperColorHints;->INSTANCE$lambda$6(Landroid/content/Context;)Lcom/android/launcher3/util/WallpaperColorHints;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/WallpaperColorHints$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/WallpaperColorHints$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/util/WallpaperColorHints;->Companion:Lcom/android/launcher3/util/WallpaperColorHints$Companion;

    .line 88
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/WallpaperColorHints;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperColorHints;->context:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onColorHintsChangedListeners:Ljava/util/List;

    .line 42
    nop

    .line 43
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperColorHints;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->hints:I

    .line 45
    new-instance v0, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/WallpaperColorHints;)V

    .line 48
    .local v0, "onColorsChangedListener":Landroid/app/WallpaperManager$OnColorsChangedListener;
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 54
    new-instance v1, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    iput-object v1, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onClose:Lcom/android/launcher3/util/SafeCloseable;

    .end local v0    # "onColorsChangedListener":Landroid/app/WallpaperManager$OnColorsChangedListener;
    goto :goto_1

    .line 60
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda5;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onClose:Lcom/android/launcher3/util/SafeCloseable;

    .line 62
    :goto_1
    nop

    .line 34
    return-void
.end method

.method private static final INSTANCE$lambda$6(Landroid/content/Context;)Lcom/android/launcher3/util/WallpaperColorHints;
    .locals 1
    .param p0, "it"    # Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/android/launcher3/util/WallpaperColorHints;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/WallpaperColorHints;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final _init_$lambda$0(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperColors;I)V
    .locals 1
    .param p0, "this$0"    # Lcom/android/launcher3/util/WallpaperColorHints;
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/WallpaperColorHints;->onColorsChanged(Landroid/app/WallpaperColors;I)V

    .line 47
    return-void
.end method

.method private static final _init_$lambda$1(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .locals 2
    .param p0, "this$0"    # Lcom/android/launcher3/util/WallpaperColorHints;
    .param p1, "$onColorsChangedListener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onColorsChangedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperColorHints;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    .line 50
    nop

    .line 51
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 49
    invoke-virtual {v0, p1, v1}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    .line 53
    return-void
.end method

.method private static final _init_$lambda$3(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .locals 2
    .param p0, "this$0"    # Lcom/android/launcher3/util/WallpaperColorHints;
    .param p1, "$onColorsChangedListener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onColorsChangedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/WallpaperColorHints$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method private static final _init_$lambda$4()V
    .locals 0

    .line 60
    return-void
.end method

.method public static final get(Landroid/content/Context;)Lcom/android/launcher3/util/WallpaperColorHints;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/WallpaperColorHints;->Companion:Lcom/android/launcher3/util/WallpaperColorHints$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/WallpaperColorHints$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/util/WallpaperColorHints;

    move-result-object v0

    return-object v0
.end method

.method private final getWallpaperManager()Landroid/app/WallpaperManager;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->context:Landroid/content/Context;

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static final lambda$3$lambda$2(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .locals 1
    .param p0, "this$0"    # Lcom/android/launcher3/util/WallpaperColorHints;
    .param p1, "$onColorsChangedListener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onColorsChangedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperColorHints;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    .line 57
    return-void
.end method

.method private final onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 7
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I

    .line 66
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_2

    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 68
    .local v0, "newHints":I
    :goto_0
    iget v1, p0, Lcom/android/launcher3/util/WallpaperColorHints;->hints:I

    if-eq v0, v1, :cond_2

    .line 69
    iput v0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->hints:I

    .line 70
    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onColorHintsChangedListeners:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 97
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/util/OnColorHintListener;

    .local v5, "it":Lcom/android/launcher3/util/OnColorHintListener;
    const/4 v6, 0x0

    .line 70
    .local v6, "$i$a$-forEach-WallpaperColorHints$onColorsChanged$1":I
    invoke-interface {v5, v0}, Lcom/android/launcher3/util/OnColorHintListener;->onColorHintsChanged(I)V

    .line 97
    .end local v5    # "it":Lcom/android/launcher3/util/OnColorHintListener;
    .end local v6    # "$i$a$-forEach-WallpaperColorHints$onColorsChanged$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 98
    :cond_1
    nop

    .line 73
    .end local v0    # "newHints":I
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onClose:Lcom/android/launcher3/util/SafeCloseable;

    invoke-interface {v0}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    return-void
.end method

.method public final getHints()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->hints:I

    return v0
.end method

.method public final registerOnColorHintsChangedListener(Lcom/android/launcher3/util/OnColorHintListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/util/OnColorHintListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onColorHintsChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public final unregisterOnColorsChangedListener(Lcom/android/launcher3/util/OnColorHintListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/util/OnColorHintListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onColorHintsChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method
