.class Lcom/android/launcher3/testing/DebugTestInformationHandler$1;
.super Ljava/lang/Object;
.source "DebugTestInformationHandler.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/testing/DebugTestInformationHandler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/testing/DebugTestInformationHandler;


# direct methods
.method constructor <init>(Lcom/android/launcher3/testing/DebugTestInformationHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/testing/DebugTestInformationHandler;

    .line 60
    iput-object p1, p0, Lcom/android/launcher3/testing/DebugTestInformationHandler$1;->this$0:Lcom/android/launcher3/testing/DebugTestInformationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 63
    invoke-static {}, Lcom/android/launcher3/testing/DebugTestInformationHandler;->-$$Nest$sfgetsActivities()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/android/launcher3/testing/DebugTestInformationHandler;->-$$Nest$sfgetsActivitiesCreatedCount()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/launcher3/testing/DebugTestInformationHandler;->-$$Nest$sfputsActivitiesCreatedCount(I)V

    .line 65
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 89
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 77
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 73
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 85
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 69
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 81
    return-void
.end method
