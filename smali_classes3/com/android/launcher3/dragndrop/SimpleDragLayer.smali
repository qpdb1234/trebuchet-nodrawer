.class public Lcom/android/launcher3/dragndrop/SimpleDragLayer;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "SimpleDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    .local p0, "this":Lcom/android/launcher3/dragndrop/SimpleDragLayer;, "Lcom/android/launcher3/dragndrop/SimpleDragLayer<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/dragndrop/SimpleDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "alphaChannelCount"    # I

    .line 37
    .local p0, "this":Lcom/android/launcher3/dragndrop/SimpleDragLayer;, "Lcom/android/launcher3/dragndrop/SimpleDragLayer<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public recreateControllers()V
    .locals 1

    .line 42
    .local p0, "this":Lcom/android/launcher3/dragndrop/SimpleDragLayer;, "Lcom/android/launcher3/dragndrop/SimpleDragLayer<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/SimpleDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    .line 43
    return-void
.end method
