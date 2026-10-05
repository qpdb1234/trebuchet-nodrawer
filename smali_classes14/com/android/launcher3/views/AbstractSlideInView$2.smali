.class Lcom/android/launcher3/views/AbstractSlideInView$2;
.super Landroid/view/ViewOutlineProvider;
.source "AbstractSlideInView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/AbstractSlideInView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/AbstractSlideInView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/AbstractSlideInView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/views/AbstractSlideInView;

    .line 138
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView$2;, "Lcom/android/launcher3/views/AbstractSlideInView$2;"
    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView$2;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 141
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView$2;, "Lcom/android/launcher3/views/AbstractSlideInView$2;"
    nop

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView$2;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-virtual {v2}, Lcom/android/launcher3/views/AbstractSlideInView;->getBottomOffsetPx()I

    move-result v2

    add-int/2addr v1, v2

    .line 141
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 147
    return-void
.end method
