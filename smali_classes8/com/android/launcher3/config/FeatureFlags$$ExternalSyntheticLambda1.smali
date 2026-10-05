.class public final synthetic Lcom/android/launcher3/config/FeatureFlags$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    invoke-static {p1}, Lcom/android/launcher3/config/FeatureFlags;->lambda$static$1(Lcom/android/launcher3/config/FeatureFlags$IntFlag;)I

    move-result p1

    return p1
.end method
