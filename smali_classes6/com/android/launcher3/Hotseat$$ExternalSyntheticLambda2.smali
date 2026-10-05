.class public final synthetic Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Hotseat;

.field public final synthetic f$1:F

.field public final synthetic f$2:Lcom/android/launcher3/DeviceProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Hotseat;FLcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/Hotseat;

    iput p2, p0, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda2;->f$1:F

    iput-object p3, p0, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda2;->f$2:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method


# virtual methods
.method public final getTranslationX(Landroid/view/View;)F
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/Hotseat;

    iget v1, p0, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda2;->f$1:F

    iget-object v2, p0, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda2;->f$2:Lcom/android/launcher3/DeviceProfile;

    invoke-static {v0, v1, v2, p1}, Lcom/android/launcher3/Hotseat;->$r8$lambda$BnO-IGEprS0SIIFb5OyCGWESa_M(Lcom/android/launcher3/Hotseat;FLcom/android/launcher3/DeviceProfile;Landroid/view/View;)F

    move-result p1

    return p1
.end method
