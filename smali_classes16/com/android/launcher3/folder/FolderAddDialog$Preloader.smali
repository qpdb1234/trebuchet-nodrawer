.class public Lcom/android/launcher3/folder/FolderAddDialog$Preloader;
.super Ljava/lang/Object;
.source "FolderAddDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# v98 - force the FIRST class load of StepMover to happen on a background
# thread while the add dialog is still open, instead of on the main thread
# inside "new-instance StepMover" (between rh-pre-new and rh-ctor-ok), where
# the v97 dump proved the main thread wedges on a futex with every other
# Java thread idle.
#
# Outcomes, all visible in dedup_error.log:
#   preload-ok      the class loaded fine while the dialog was open. If the
#                   confirm STILL wedges at rh-pre-new, the class load was
#                   never the whole story - the SIGQUIT trace decides.
#   preload-err|e   the load THREW (verifier or otherwise) - the message
#                   names it.
#   neither line    the preload thread is STILL wedged inside
#                   Class.forName. Its full managed stack appears in the
#                   watchdog's all-thread dump under the thread name
#                   "stepmover-preload" - a thread started via
#                   Thread.start() reports real state and real frames,
#                   unlike the main thread, whose pseudo Thread object
#                   always answers NEW / 0 frames.

# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAddDialog$Preloader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "com.android.launcher3.folder.FolderAddDialog$StepMover"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAddDialog$Preloader;->mContext:Landroid/content/Context;

    const-string v3, "preload-ok"

    invoke-static {v2, v3}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :pcatch

    goto :pdone

    :pcatch
    move-exception v0

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAddDialog$Preloader;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preload-err|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    :pdone
    return-void
.end method
