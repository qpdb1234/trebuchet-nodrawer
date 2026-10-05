.class public Lcom/android/launcher3/util/TraceHelper;
.super Ljava/lang/Object;
.source "TraceHelper.java"


# static fields
.field public static final FLAG_ALLOW_BINDER_TRACKING:I = 0x1

.field public static final FLAG_IGNORE_BINDERS:I = 0x2

.field public static INSTANCE:Lcom/android/launcher3/util/TraceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/android/launcher3/util/TraceHelper;

    invoke-direct {v0}, Lcom/android/launcher3/util/TraceHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 3
    .param p0, "rpcName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 91
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v0

    .line 92
    .local v0, "c":Lcom/android/launcher3/util/SafeCloseable;
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    .line 92
    :cond_0
    return-object v1

    .line 91
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/android/launcher3/util/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method static synthetic lambda$allowIpcs$1(Ljava/lang/String;I)V
    .locals 0
    .param p0, "rpcName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 81
    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$beginAsyncSection$0(Ljava/lang/String;I)V
    .locals 0
    .param p0, "sectionName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 70
    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public allowIpcs(Ljava/lang/String;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 2
    .param p1, "rpcName"    # Ljava/lang/String;

    .line 79
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v0

    .line 80
    .local v0, "cookie":I
    invoke-static {p1, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 81
    new-instance v1, Lcom/android/launcher3/util/TraceHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/util/TraceHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public beginAsyncSection(Ljava/lang/String;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 68
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v0

    .line 69
    .local v0, "cookie":I
    invoke-static {p1, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 70
    new-instance v1, Lcom/android/launcher3/util/TraceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/util/TraceHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public beginSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 51
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public endSection()V
    .locals 0

    .line 58
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    return-void
.end method
