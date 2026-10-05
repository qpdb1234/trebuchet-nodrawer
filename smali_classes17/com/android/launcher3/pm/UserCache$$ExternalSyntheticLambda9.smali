.class public final synthetic Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/pm/UserCache;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pm/UserCache;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda9;->f$0:Lcom/android/launcher3/pm/UserCache;

    iput-object p2, p0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda9;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda9;->f$0:Lcom/android/launcher3/pm/UserCache;

    iget-object v1, p0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda9;->f$1:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1}, Lcom/android/launcher3/pm/UserCache;->$r8$lambda$cUfmdbDV4V7saeN4cnzmQTd1u44(Lcom/android/launcher3/pm/UserCache;Ljava/util/function/BiConsumer;)V

    return-void
.end method
