.class Lcom/android/launcher3/allapps/WorkProfileManager$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WorkProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/WorkProfileManager;->newScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/WorkProfileManager;

.field totalDelta:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/WorkProfileManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/WorkProfileManager;

    .line 209
    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->this$0:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 213
    if-nez p2, :cond_0

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    .line 216
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->this$0:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v0

    .line 220
    .local v0, "fab":Lcom/android/launcher3/allapps/WorkModeSwitch;
    if-nez v0, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    iget v1, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    .line 224
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getScrollThreshold()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getScrollThreshold()I

    move-result v3

    .line 223
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v1

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    .line 225
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 226
    .local v1, "isScrollAtTop":Z
    :goto_0
    if-nez v1, :cond_3

    iget v2, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getScrollThreshold()I

    move-result v3

    neg-int v3, v3

    if-ge v2, v3, :cond_2

    goto :goto_1

    .line 228
    :cond_2
    iget v2, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getScrollThreshold()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 229
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->shrink()V

    goto :goto_2

    .line 227
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->extend()V

    .line 231
    :cond_4
    :goto_2
    return-void
.end method
