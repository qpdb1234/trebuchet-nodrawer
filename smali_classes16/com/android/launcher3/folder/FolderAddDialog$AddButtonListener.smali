.class public Lcom/android/launcher3/folder/FolderAddDialog$AddButtonListener;
.super Ljava/lang/Object;
.source "FolderAddDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/FolderAddDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddButtonListener"
.end annotation


# instance fields
.field private final mFolder:Lcom/android/launcher3/folder/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAddDialog$AddButtonListener;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$AddButtonListener;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAddDialog;->show(Lcom/android/launcher3/folder/Folder;)V

    return-void
.end method
