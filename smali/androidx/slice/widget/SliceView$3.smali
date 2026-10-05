.class final Landroidx/slice/widget/SliceView$3;
.super Ljava/lang/Object;
.source "SliceView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/slice/core/SliceAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/slice/core/SliceAction;Landroidx/slice/core/SliceAction;)I
    .locals 5
    .param p1, "action1"    # Landroidx/slice/core/SliceAction;
    .param p2, "action2"    # Landroidx/slice/core/SliceAction;

    .line 904
    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getPriority()I

    move-result v0

    .line 905
    .local v0, "priority1":I
    invoke-interface {p2}, Landroidx/slice/core/SliceAction;->getPriority()I

    move-result v1

    .line 906
    .local v1, "priority2":I
    const/4 v2, 0x0

    if-gez v0, :cond_0

    if-gez v1, :cond_0

    .line 907
    return v2

    .line 908
    :cond_0
    const/4 v3, 0x1

    if-gez v0, :cond_1

    .line 909
    return v3

    .line 910
    :cond_1
    const/4 v4, -0x1

    if-gez v1, :cond_2

    .line 911
    return v4

    .line 912
    :cond_2
    if-ge v1, v0, :cond_3

    .line 913
    return v3

    .line 914
    :cond_3
    if-le v1, v0, :cond_4

    .line 915
    return v4

    .line 917
    :cond_4
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 900
    check-cast p1, Landroidx/slice/core/SliceAction;

    check-cast p2, Landroidx/slice/core/SliceAction;

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceView$3;->compare(Landroidx/slice/core/SliceAction;Landroidx/slice/core/SliceAction;)I

    move-result p1

    return p1
.end method
