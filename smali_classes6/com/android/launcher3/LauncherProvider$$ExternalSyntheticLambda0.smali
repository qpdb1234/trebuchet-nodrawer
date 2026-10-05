.class public final synthetic Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/LauncherProvider$SqlArguments;

.field public final synthetic f$1:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider$SqlArguments;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/LauncherProvider$SqlArguments;

    iput-object p2, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/LauncherProvider$SqlArguments;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentValues;

    check-cast p1, Lcom/android/launcher3/model/ModelDbController;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/LauncherProvider;->lambda$update$3(Lcom/android/launcher3/LauncherProvider$SqlArguments;Landroid/content/ContentValues;Lcom/android/launcher3/model/ModelDbController;)I

    move-result p1

    return p1
.end method
