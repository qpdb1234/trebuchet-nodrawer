.class public final synthetic Lcom/android/launcher3/util/ScreenOnTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/ScreenOnTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/ScreenOnTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/ScreenOnTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/util/ScreenOnTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/ScreenOnTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/util/ScreenOnTracker;

    check-cast p1, Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-static {v0, p1}, Lcom/android/launcher3/util/ScreenOnTracker;->$r8$lambda$7PLRkaA3ZxkFXH8wS1812WOERjw(Lcom/android/launcher3/util/ScreenOnTracker;Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    return-void
.end method
