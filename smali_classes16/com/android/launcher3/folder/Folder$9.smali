.class Lcom/android/launcher3/folder/Folder$9;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$lastChild:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1248
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$9;->val$lastChild:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1251
    const/16 v0, 0x3d

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 1252
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1253
    .local v0, "isShiftPlusTab":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1254
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$9;->val$lastChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    return v1

    .line 1256
    :cond_1
    return v1
.end method
