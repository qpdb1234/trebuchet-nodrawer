.class Lcom/android/launcher3/util/VibratorWrapper$1;
.super Landroid/database/ContentObserver;
.source "VibratorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/VibratorWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/VibratorWrapper;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/VibratorWrapper;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper$1;->this$0:Lcom/android/launcher3/util/VibratorWrapper;

    iput-object p3, p0, Lcom/android/launcher3/util/VibratorWrapper$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper$1;->this$0:Lcom/android/launcher3/util/VibratorWrapper;

    iget-object v1, p0, Lcom/android/launcher3/util/VibratorWrapper$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/VibratorWrapper;->-$$Nest$misHapticFeedbackEnabled(Lcom/android/launcher3/util/VibratorWrapper;Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/VibratorWrapper;->-$$Nest$fputmIsHapticFeedbackEnabled(Lcom/android/launcher3/util/VibratorWrapper;Z)V

    .line 102
    return-void
.end method
