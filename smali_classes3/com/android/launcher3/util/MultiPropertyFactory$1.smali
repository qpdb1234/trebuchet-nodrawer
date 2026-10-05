.class Lcom/android/launcher3/util/MultiPropertyFactory$1;
.super Landroid/util/FloatProperty;
.source "MultiPropertyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/MultiPropertyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/util/MultiPropertyFactory<",
        "*>.MultiProperty;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "*>.MultiProperty;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 46
    .local p1, "property":Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;, "Lcom/android/launcher3/util/MultiPropertyFactory<*>.MultiProperty;"
    invoke-static {p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->-$$Nest$fgetmValue(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$1;->get(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;F)V
    .locals 0
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "*>.MultiProperty;F)V"
        }
    .end annotation

    .line 51
    .local p1, "property":Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;, "Lcom/android/launcher3/util/MultiPropertyFactory<*>.MultiProperty;"
    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 52
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 42
    check-cast p1, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/MultiPropertyFactory$1;->setValue(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;F)V

    return-void
.end method
