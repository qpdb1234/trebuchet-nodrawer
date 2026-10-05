.class Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;
.super Ljava/lang/Object;
.source "SecondaryDragLayer.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->onIconLongClicked(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDragView:Lcom/android/launcher3/dragndrop/DragView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/dragndrop/DragView<",
            "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

.field final synthetic val$options:Lcom/android/launcher3/dragndrop/DragOptions;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$wlpD538148BTogI3M91hQQJYUUI(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->lambda$onPreDragStart$0(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    iput-object p2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->val$options:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPreDragStart$0(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    invoke-static {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->access$500(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    invoke-static {v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->access$400(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-void
.end method


# virtual methods
.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "dragStarted"    # Z

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 239
    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 229
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 230
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->shouldStartDrag(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->val$options:Lcom/android/launcher3/dragndrop/DragOptions;

    new-instance v3, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dragndrop/DragView;->setOnScaleAnimEndCallback(Ljava/lang/Runnable;)V

    .line 234
    :cond_0
    return-void
.end method

.method public shouldStartDrag(D)Z
    .locals 1
    .param p1, "distanceDragged"    # D

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->isScaleAnimationFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
