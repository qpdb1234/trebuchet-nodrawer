.class public final synthetic Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/launcher3/DeviceProfile;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/DeviceProfile;

    iput p3, p0, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/DeviceProfile;

    iget v2, p0, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {v0, v1, v2, p1}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->lambda$groupWidgetItemsUsingRowPxWithoutReordering$1(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;ILcom/android/launcher3/model/WidgetItem;)Z

    move-result p1

    return p1
.end method
