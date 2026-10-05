.class Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$1;
.super Landroid/util/FloatProperty;
.source "ActivityAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 118
    .local p1, "containerView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    invoke-static {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->-$$Nest$fgetmBottomSheetAlpha(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$1;->get(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;F)V
    .locals 0
    .param p2, "v"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;F)V"
        }
    .end annotation

    .line 123
    .local p1, "containerView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    invoke-static {p1, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->-$$Nest$msetBottomSheetAlpha(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;F)V

    .line 124
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 115
    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$1;->setValue(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;F)V

    return-void
.end method
