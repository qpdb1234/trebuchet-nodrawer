.class public final synthetic Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/launcher3/folder/FolderGridOrganizer;

    check-cast p1, Lcom/android/launcher3/DeviceProfile;

    invoke-direct {v0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/DeviceProfile;)V

    return-object v0
.end method
