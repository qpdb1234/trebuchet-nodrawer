.class public Lcom/android/launcher3/LauncherModel$LoaderTransaction;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoaderTransaction"
.end annotation


# instance fields
.field private final mTask:Lcom/android/launcher3/model/LoaderTask;

.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;
    .param p2, "task"    # Lcom/android/launcher3/model/LoaderTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fgetmLock(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 514
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fgetmLoaderTask(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/LoaderTask;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 517
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fgetmLastLoadId(Lcom/android/launcher3/LauncherModel;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fputmLastLoadId(Lcom/android/launcher3/LauncherModel;I)V

    .line 518
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->mTask:Lcom/android/launcher3/model/LoaderTask;

    .line 519
    invoke-static {p1, v2}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fputmIsLoaderTaskRunning(Lcom/android/launcher3/LauncherModel;Z)V

    .line 520
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fputmModelLoaded(Lcom/android/launcher3/LauncherModel;Z)V

    .line 521
    monitor-exit v0

    .line 522
    return-void

    .line 515
    :cond_0
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Loader already stopped"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "this$0":Lcom/android/launcher3/LauncherModel;
    .end local p2    # "task":Lcom/android/launcher3/model/LoaderTask;
    throw v1

    .line 521
    .restart local p1    # "this$0":Lcom/android/launcher3/LauncherModel;
    .restart local p2    # "task":Lcom/android/launcher3/model/LoaderTask;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/LauncherModel$LoaderTransaction-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fgetmLock(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fgetmLoaderTask(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/LoaderTask;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->mTask:Lcom/android/launcher3/model/LoaderTask;

    if-ne v1, v2, :cond_0

    .line 536
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fputmLoaderTask(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;)V

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fputmIsLoaderTaskRunning(Lcom/android/launcher3/LauncherModel;Z)V

    .line 539
    monitor-exit v0

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commit()V
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fgetmLock(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fputmModelLoaded(Lcom/android/launcher3/LauncherModel;Z)V

    .line 528
    monitor-exit v0

    .line 529
    return-void

    .line 528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
