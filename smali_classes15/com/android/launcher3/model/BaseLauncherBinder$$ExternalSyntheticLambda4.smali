.class public final synthetic Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic f$0:[Lcom/android/launcher3/model/data/AppInfo;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda4;->f$0:[Lcom/android/launcher3/model/data/AppInfo;

    iput p2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda4;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda4;->f$0:[Lcom/android/launcher3/model/data/AppInfo;

    iget v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda4;->f$2:Ljava/util/Map;

    invoke-static {v0, v1, v2, p1}, Lcom/android/launcher3/model/BaseLauncherBinder;->lambda$bindAllApps$3([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
