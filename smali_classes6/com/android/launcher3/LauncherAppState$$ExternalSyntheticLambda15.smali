.class public final synthetic Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic f$1:Lcom/android/launcher3/LauncherAppState$IconObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda15;->f$0:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda15;->f$1:Lcom/android/launcher3/LauncherAppState$IconObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda15;->f$0:Lcom/android/launcher3/LauncherAppState;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda15;->f$1:Lcom/android/launcher3/LauncherAppState$IconObserver;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAppState;->$r8$lambda$3a-rBjTHmXXjz8fz7HkR5m4MTec(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    return-void
.end method
