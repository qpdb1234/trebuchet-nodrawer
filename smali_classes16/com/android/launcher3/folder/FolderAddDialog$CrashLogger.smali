.class public Lcom/android/launcher3/folder/FolderAddDialog$CrashLogger;
.super Ljava/lang/Object;
.source "FolderAddDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/FolderAddDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrashLogger"
.end annotation


# static fields
.field private static sInstalled:Z


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private final mOld:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "old"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAddDialog$CrashLogger;->mCtx:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderAddDialog$CrashLogger;->mOld:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static install(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    sget-boolean v0, Lcom/android/launcher3/folder/FolderAddDialog$CrashLogger;->sInstalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/FolderAddDialog$CrashLogger;->sInstalled:Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/FolderAddDialog$CrashLogger;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/folder/FolderAddDialog$CrashLogger;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$CrashLogger;->mCtx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uncaught-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->reportError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAddDialog$CrashLogger;->mOld:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    # v101 BACKSTOP: an uncaught exception on the MAIN thread must end the
    # process. If mOld is null, or it returned without killing us (failed
    # binder report, swallowed path - any of these), the VM would otherwise
    # reach DestroyJavaVM with RenderThread still alive: the "living dead"
    # frozen screen seen in the v98/v100 traces, with NO uncaught- log line
    # and NO crash. Self-kill is unconditional and needs no permission.
    # Unreachable when mOld already killed the process (normal app path).
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
