.class Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "PrivateSpaceHeaderViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->collapse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 196
    iput-object p1, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$1;->this$0:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getVerticalSnapPreference()I
    .locals 1

    .line 198
    const/4 v0, 0x1

    return v0
.end method
