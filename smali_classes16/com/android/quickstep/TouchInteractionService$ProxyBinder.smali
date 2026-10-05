.class public Lcom/android/quickstep/TouchInteractionService$ProxyBinder;
.super Landroid/os/Binder;
.source "TouchInteractionService.java"


# instance fields
.field private final mSvc:Landroid/app/Service;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/quickstep/TouchInteractionService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$ProxyBinder;->mSvc:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    const/4 v4, 0x6

    if-eq p1, v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$ProxyBinder;->mSvc:Landroid/app/Service;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.launcher"

    const-string v3, "com.android.quickstep.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v4, 0x1

    return v4
.end method
