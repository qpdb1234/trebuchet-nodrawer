.class public final synthetic Lcom/android/launcher3/allapps/UserProfileManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/allapps/UserProfileManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/UserProfileManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/UserProfileManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/allapps/UserProfileManager;

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/UserProfileManager$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/UserProfileManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/allapps/UserProfileManager;

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/UserProfileManager$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/allapps/UserProfileManager;->$r8$lambda$6bzQFkPBifEh0vmdcMpjDfEWAZQ(Lcom/android/launcher3/allapps/UserProfileManager;ZLandroid/os/UserHandle;)V

    return-void
.end method
