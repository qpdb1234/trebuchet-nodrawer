.class public final synthetic Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/InvariantDeviceProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/InvariantDeviceProfile;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/InvariantDeviceProfile;

    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-static {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->$r8$lambda$MdJWmFghQ3Ioth-Mihxsy3JEk_c(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z

    move-result p1

    return p1
.end method
