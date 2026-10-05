.class Lcom/android/launcher3/views/StickyHeaderLayout$1;
.super Landroid/util/FloatProperty;
.source "StickyHeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/StickyHeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/views/StickyHeaderLayout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/views/StickyHeaderLayout;)Ljava/lang/Float;
    .locals 1
    .param p1, "view"    # Lcom/android/launcher3/views/StickyHeaderLayout;

    .line 57
    invoke-static {p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->-$$Nest$fgetmScrollOffset(Lcom/android/launcher3/views/StickyHeaderLayout;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$1;->get(Lcom/android/launcher3/views/StickyHeaderLayout;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/views/StickyHeaderLayout;F)V
    .locals 0
    .param p1, "view"    # Lcom/android/launcher3/views/StickyHeaderLayout;
    .param p2, "offset"    # F

    .line 51
    invoke-static {p1, p2}, Lcom/android/launcher3/views/StickyHeaderLayout;->-$$Nest$fputmScrollOffset(Lcom/android/launcher3/views/StickyHeaderLayout;F)V

    .line 52
    invoke-static {p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->-$$Nest$mupdateHeaderScroll(Lcom/android/launcher3/views/StickyHeaderLayout;)V

    .line 53
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 48
    check-cast p1, Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/StickyHeaderLayout$1;->setValue(Lcom/android/launcher3/views/StickyHeaderLayout;F)V

    return-void
.end method
