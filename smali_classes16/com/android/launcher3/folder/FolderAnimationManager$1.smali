.class Lcom/android/launcher3/folder/FolderAnimationManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCellLayout:Lcom/android/launcher3/CellLayout;

.field private mCellLayoutClipChildren:Z

.field private mCellLayoutClipPadding:Z

.field private mContentClipChildren:Z

.field private mContentClipToPadding:Z

.field private mFolderClipChildren:Z

.field private mFolderClipToPadding:Z

.field final synthetic this$0:Lcom/android/launcher3/folder/FolderAnimationManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderAnimationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/FolderAnimationManager;

    .line 274
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 305
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setTranslationX(F)V

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setTranslationY(F)V

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setTranslationZ(F)V

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->setScaleX(F)V

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->setScaleY(F)V

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderNameEditText;->setAlpha(F)V

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mFolderClipChildren:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setClipChildren(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mFolderClipToPadding:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setClipToPadding(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmContent(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mContentClipChildren:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setClipChildren(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmContent(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mContentClipToPadding:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setClipToPadding(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayoutClipChildren:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setClipChildren(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayoutClipPadding:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 322
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 286
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmContent(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getClipChildren()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mFolderClipChildren:Z

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getClipToPadding()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mFolderClipToPadding:Z

    .line 290
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmContent(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getClipChildren()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mContentClipChildren:Z

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmContent(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getClipToPadding()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mContentClipToPadding:Z

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getClipChildren()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayoutClipChildren:Z

    .line 293
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getClipToPadding()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayoutClipPadding:Z

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setClipChildren(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setClipToPadding(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmContent(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setClipChildren(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmContent(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setClipToPadding(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setClipChildren(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 301
    return-void
.end method
