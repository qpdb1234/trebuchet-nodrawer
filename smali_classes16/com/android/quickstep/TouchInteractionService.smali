.class public Lcom/android/quickstep/TouchInteractionService;
.super Landroid/app/Service;
.source "TouchInteractionService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/android/quickstep/TouchInteractionService$ProxyBinder;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TouchInteractionService$ProxyBinder;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    return-object v0
.end method
