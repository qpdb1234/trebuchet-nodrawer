.class public Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;
.super Ljava/lang/Object;
.source "AllAppsToWorkspaceTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/AllAppsToWorkspaceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Placement"
.end annotation


# instance fields
.field public final addedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final newScreens:Lcom/android/launcher3/util/IntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->newScreens:Lcom/android/launcher3/util/IntArray;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->addedItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public copyNewScreens()Lcom/android/launcher3/util/IntArray;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->newScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->clone()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->addedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method
