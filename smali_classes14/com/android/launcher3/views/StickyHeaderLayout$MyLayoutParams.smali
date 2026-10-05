.class Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "StickyHeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/StickyHeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLayoutParams"
.end annotation


# instance fields
.field public scrollLimit:I

.field public final sticky:Z


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 251
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->sticky:Z

    .line 253
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 256
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 257
    sget-object v0, Lcom/android/launcher3/R$styleable;->StickyScroller_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 258
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/launcher3/R$styleable;->StickyScroller_Layout_layout_sticky:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->sticky:Z

    .line 259
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    return-void
.end method
