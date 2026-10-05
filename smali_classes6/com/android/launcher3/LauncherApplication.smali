.class public Lcom/android/launcher3/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 28
    invoke-static {p0}, Lcom/android/launcher3/MainProcessInitializer;->initialize(Landroid/content/Context;)V

    .line 29
    return-void
.end method
