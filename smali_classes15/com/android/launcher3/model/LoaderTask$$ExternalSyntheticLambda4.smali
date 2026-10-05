.class public final synthetic Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda4;
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
    .locals 0

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-static {p1}, Lcom/android/launcher3/model/LoaderTask;->lambda$loadWorkspaceImpl$2(Lcom/android/launcher3/util/PackageUserKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
