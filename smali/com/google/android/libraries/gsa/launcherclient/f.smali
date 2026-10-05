.class final Lcom/google/android/libraries/gsa/launcherclient/f;
.super Landroid/content/BroadcastReceiver;
.source "LauncherClient.java"


# instance fields
.field private final synthetic a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 3
    nop

    .line 5
    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/gsa/launcherclient/i;->a()V

    .line 6
    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/gsa/launcherclient/c;->a()V

    .line 7
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(Landroid/content/Context;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    .line 10
    :cond_0
    return-void
.end method
