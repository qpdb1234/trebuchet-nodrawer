.class public final synthetic Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/ItemInflater;

.field public final synthetic f$1:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/ItemInflater;Lcom/android/launcher3/model/ModelWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda14;->f$0:Lcom/android/launcher3/util/ItemInflater;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda14;->f$1:Lcom/android/launcher3/model/ModelWriter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda14;->f$0:Lcom/android/launcher3/util/ItemInflater;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda14;->f$1:Lcom/android/launcher3/model/ModelWriter;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$inflateAsyncAndBind$9(Lcom/android/launcher3/util/ItemInflater;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
