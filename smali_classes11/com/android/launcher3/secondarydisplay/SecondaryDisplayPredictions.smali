.class public Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;
.super Ljava/lang/Object;
.source "SecondaryDisplayPredictions.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance(Landroid/content/Context;)Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    const-class v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

    sget v1, Lcom/android/launcher3/R$string;->secondary_display_predictions_class:I

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

    return-object v0
.end method


# virtual methods
.method public setPredictedApps(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 47
    return-void
.end method

.method updateAppDivider()V
    .locals 0

    .line 41
    return-void
.end method
