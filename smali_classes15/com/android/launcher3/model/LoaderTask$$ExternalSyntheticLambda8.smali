.class public final synthetic Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/data/WorkspaceItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    check-cast p1, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-static {v0, p1}, Lcom/android/launcher3/model/LoaderTask;->lambda$processFolderItems$7(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/folder/FolderGridOrganizer;)Z

    move-result p1

    return p1
.end method
