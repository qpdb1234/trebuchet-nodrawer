.class public Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;
.super Ljava/lang/Object;
.source "SplitConfigurationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/SplitConfigurationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitSelectSource"
.end annotation


# static fields
.field private static final INVALID_TASK_ID:I = -0x1


# instance fields
.field public alreadyRunningTaskId:I

.field public animateCurrentTaskDismissal:Z

.field private drawable:Landroid/graphics/drawable/Drawable;

.field public final intent:Landroid/content/Intent;

.field public final itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public final position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

.field public final splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "position"    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    .param p5, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p6, "splitEvent"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->alreadyRunningTaskId:I

    .line 227
    iput-object p1, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->view:Landroid/view/View;

    .line 228
    iput-object p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->drawable:Landroid/graphics/drawable/Drawable;

    .line 229
    iput-object p3, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->intent:Landroid/content/Intent;

    .line 230
    iput-object p4, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 231
    iput-object p5, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 232
    iput-object p6, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 233
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->view:Landroid/view/View;

    return-object v0
.end method
