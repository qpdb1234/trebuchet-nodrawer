.class Lcom/android/launcher3/secondarydisplay/SecondaryDragController$1;
.super Ljava/lang/Object;
.source "SecondaryDragController.java"

# interfaces
.implements Lcom/android/launcher3/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    .line 153
    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 190
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->getDistanceDragged()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-static {v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->access$100(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->drag_distanceThreshold:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-static {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->access$200(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->showAppDrawer(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-static {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->access$300(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 179
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 176
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-static {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->access$000(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->getPinnedAppsAdapter()Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->addPinnedApp(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 163
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    .line 164
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    .line 187
    return-void
.end method
