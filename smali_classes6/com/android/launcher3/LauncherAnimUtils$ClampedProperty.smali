.class public Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;
.super Landroid/util/FloatProperty;
.source "LauncherAnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAnimUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClampedProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/FloatProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mMaxValue:F

.field private final mMinValue:F

.field private final mProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/FloatProperty;FF)V
    .locals 2
    .param p2, "minValue"    # F
    .param p3, "maxValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/FloatProperty<",
            "TT;>;FF)V"
        }
    .end annotation

    .line 251
    .local p0, "this":Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;, "Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty<TT;>;"
    .local p1, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Clamped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 252
    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;->mProperty:Landroid/util/FloatProperty;

    .line 253
    iput p2, p0, Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;->mMinValue:F

    .line 254
    iput p3, p0, Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;->mMaxValue:F

    .line 255
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;, "Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;->mProperty:Landroid/util/FloatProperty;

    invoke-virtual {v0, p1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 245
    .local p0, "this":Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;, "Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;->get(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 3
    .param p2, "v"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 259
    .local p0, "this":Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;, "Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;->mProperty:Landroid/util/FloatProperty;

    iget v1, p0, Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;->mMinValue:F

    iget v2, p0, Lcom/android/launcher3/LauncherAnimUtils$ClampedProperty;->mMaxValue:F

    invoke-static {p2, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 260
    return-void
.end method
