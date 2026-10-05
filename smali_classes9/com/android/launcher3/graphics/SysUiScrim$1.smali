.class Lcom/android/launcher3/graphics/SysUiScrim$1;
.super Ljava/lang/Object;
.source "SysUiScrim.java"

# interfaces
.implements Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/SysUiScrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/SysUiScrim;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/SysUiScrim;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/graphics/SysUiScrim;

    .line 54
    iput-object p1, p0, Lcom/android/launcher3/graphics/SysUiScrim$1;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOnChanged(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .line 57
    if-nez p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim$1;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/graphics/SysUiScrim;->-$$Nest$fputmAnimateScrimOnNextDraw(Lcom/android/launcher3/graphics/SysUiScrim;Z)V

    .line 60
    :cond_0
    return-void
.end method

.method public onUserPresent()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim$1;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/graphics/SysUiScrim;->-$$Nest$fputmAnimateScrimOnNextDraw(Lcom/android/launcher3/graphics/SysUiScrim;Z)V

    .line 67
    return-void
.end method
