.class public final synthetic Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda10;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda10;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->$r8$lambda$ExzZ-GRjQ9R9loo-s-UnRnJ5-5Y(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    return-void
.end method
