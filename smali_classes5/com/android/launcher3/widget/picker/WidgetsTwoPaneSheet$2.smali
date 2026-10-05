.class Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$2;
.super Lcom/android/launcher3/model/data/PackageItemInfo;
.source "WidgetsTwoPaneSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->setupSuggestedWidgets(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 199
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$2;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public usingLowResIcon()Z
    .locals 1

    .line 202
    const/4 v0, 0x0

    return v0
.end method
