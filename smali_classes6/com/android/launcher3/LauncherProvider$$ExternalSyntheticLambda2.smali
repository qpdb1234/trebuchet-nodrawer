.class public final synthetic Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/LauncherProvider;

.field public final synthetic f$1:Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider;Ljava/util/function/ToIntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/LauncherProvider;

    iput-object p2, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/LauncherProvider;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/ToIntFunction;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherProvider;->$r8$lambda$a0-5M3aCHz_cPQG2x-goqicOHms(Lcom/android/launcher3/LauncherProvider;Ljava/util/function/ToIntFunction;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
