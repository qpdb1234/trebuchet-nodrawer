.class Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ActivityAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 154
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 157
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateHeaderScroll(I)V

    .line 158
    return-void
.end method
