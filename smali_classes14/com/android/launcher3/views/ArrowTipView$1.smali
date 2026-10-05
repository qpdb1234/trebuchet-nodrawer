.class Lcom/android/launcher3/views/ArrowTipView$1;
.super Landroid/util/IntProperty;
.source "ArrowTipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/ArrowTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/android/launcher3/views/ArrowTipView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/views/ArrowTipView;)Ljava/lang/Integer;
    .locals 1
    .param p1, "view"    # Lcom/android/launcher3/views/ArrowTipView;

    .line 72
    invoke-static {p1}, Lcom/android/launcher3/views/ArrowTipView;->-$$Nest$mgetTextAlpha(Lcom/android/launcher3/views/ArrowTipView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Lcom/android/launcher3/views/ArrowTipView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/ArrowTipView$1;->get(Lcom/android/launcher3/views/ArrowTipView;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/views/ArrowTipView;I)V
    .locals 0
    .param p1, "view"    # Lcom/android/launcher3/views/ArrowTipView;
    .param p2, "v"    # I

    .line 67
    invoke-static {p1, p2}, Lcom/android/launcher3/views/ArrowTipView;->-$$Nest$msetTextAlpha(Lcom/android/launcher3/views/ArrowTipView;I)V

    .line 68
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 64
    check-cast p1, Lcom/android/launcher3/views/ArrowTipView;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/ArrowTipView$1;->setValue(Lcom/android/launcher3/views/ArrowTipView;I)V

    return-void
.end method
