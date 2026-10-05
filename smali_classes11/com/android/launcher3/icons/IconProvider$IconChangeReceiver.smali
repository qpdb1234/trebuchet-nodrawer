.class Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IconProvider.java"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/IconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconChangeReceiver"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

.field private mIconState:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher3/icons/IconProvider;


# direct methods
.method constructor <init>(Lcom/android/launcher3/icons/IconProvider;Lcom/android/launcher3/icons/IconProvider$IconChangeListener;Landroid/os/Handler;)V
    .locals 4
    .param p2, "callback"    # Lcom/android/launcher3/icons/IconProvider$IconChangeListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 283
    iput-object p1, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

    .line 285
    invoke-virtual {p1}, Lcom/android/launcher3/icons/IconProvider;->getSystemIconState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mIconState:Ljava/lang/String;

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 290
    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 291
    iget-object v1, p1, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 293
    invoke-static {p1}, Lcom/android/launcher3/icons/IconProvider;->-$$Nest$fgetmCalendar(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/icons/IconProvider;->-$$Nest$fgetmClock(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 294
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-static {p1}, Lcom/android/launcher3/icons/IconProvider;->-$$Nest$fgetmCalendar(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 296
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    :cond_1
    iget-object p1, p1, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v1, v2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 301
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    iget-object v0, v0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 334
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 305
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 321
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/IconProvider;->getSystemIconState()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "newState":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mIconState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 323
    iput-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mIconState:Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

    invoke-interface {v1, v0}, Lcom/android/launcher3/icons/IconProvider$IconChangeListener;->onSystemIconStateChanged(Ljava/lang/String;)V

    goto :goto_3

    .line 307
    .end local v0    # "newState":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-static {v0}, Lcom/android/launcher3/icons/IconProvider;->-$$Nest$fgetmClock(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-static {v1}, Lcom/android/launcher3/icons/IconProvider;->-$$Nest$fgetmClock(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/icons/IconProvider$IconChangeListener;->onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 313
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-static {v0}, Lcom/android/launcher3/icons/IconProvider;->-$$Nest$fgetmCalendar(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 315
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 316
    .local v1, "user":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->mCallback:Lcom/android/launcher3/icons/IconProvider$IconChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;->this$0:Lcom/android/launcher3/icons/IconProvider;

    invoke-static {v3}, Lcom/android/launcher3/icons/IconProvider;->-$$Nest$fgetmCalendar(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/launcher3/icons/IconProvider$IconChangeListener;->onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 317
    .end local v1    # "user":Landroid/os/UserHandle;
    goto :goto_2

    :cond_2
    nop

    .line 329
    :cond_3
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x740c95e0 -> :sswitch_3
        0x1df32313 -> :sswitch_2
        0x1e1f7f95 -> :sswitch_1
        0x3e117848 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
