.class Lcom/android/launcher3/util/BgObjectWithLooper$1;
.super Landroid/database/ContentObserver;
.source "BgObjectWithLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/BgObjectWithLooper;->newContentObserver(Landroid/os/Handler;Ljava/util/function/Consumer;)Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$command:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Handler;

    .line 56
    iput-object p2, p0, Lcom/android/launcher3/util/BgObjectWithLooper$1;->val$command:Ljava/util/function/Consumer;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/util/BgObjectWithLooper$1;->val$command:Ljava/util/function/Consumer;

    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 60
    return-void
.end method
