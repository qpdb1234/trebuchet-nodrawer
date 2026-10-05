.class Lcom/android/launcher3/views/ComposeInitializer$1;
.super Ljava/lang/Object;
.source "ComposeInitializer.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/ComposeInitializer;->initCompose(Lcom/android/launcher3/views/ActivityContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 51
    invoke-static {p1}, Lcom/android/launcher3/views/ComposeInitializer;->-$$Nest$smonAttachedToWindow(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 56
    invoke-static {p1}, Lcom/android/launcher3/views/ComposeInitializer;->-$$Nest$smonDetachedFromWindow(Landroid/view/View;)V

    .line 57
    return-void
.end method
