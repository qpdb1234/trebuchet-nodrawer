.class Lcom/android/launcher3/util/HorizontalInsettableView$1;
.super Landroid/util/FloatProperty;
.source "HorizontalInsettableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/HorizontalInsettableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/util/HorizontalInsettableView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/util/HorizontalInsettableView;)Ljava/lang/Float;
    .locals 1
    .param p1, "view"    # Lcom/android/launcher3/util/HorizontalInsettableView;

    .line 47
    invoke-interface {p1}, Lcom/android/launcher3/util/HorizontalInsettableView;->getHorizontalInsets()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lcom/android/launcher3/util/HorizontalInsettableView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/HorizontalInsettableView$1;->get(Lcom/android/launcher3/util/HorizontalInsettableView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/util/HorizontalInsettableView;F)V
    .locals 0
    .param p1, "view"    # Lcom/android/launcher3/util/HorizontalInsettableView;
    .param p2, "insetPercentage"    # F

    .line 52
    invoke-interface {p1, p2}, Lcom/android/launcher3/util/HorizontalInsettableView;->setHorizontalInsets(F)V

    .line 53
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 44
    check-cast p1, Lcom/android/launcher3/util/HorizontalInsettableView;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/HorizontalInsettableView$1;->setValue(Lcom/android/launcher3/util/HorizontalInsettableView;F)V

    return-void
.end method
