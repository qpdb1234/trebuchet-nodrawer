.class Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;
.super Landroid/view/ViewOutlineProvider;
.source "ActivityAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->replaceAppsRVContainer(Z)V
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

    .line 709
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 712
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 713
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 715
    .local v0, "bottomOffsetPx":I
    nop

    .line 718
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 719
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 715
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 720
    return-void
.end method
