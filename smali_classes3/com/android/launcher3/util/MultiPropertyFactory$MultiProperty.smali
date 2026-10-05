.class public Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
.super Ljava/lang/Object;
.source "MultiPropertyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/MultiPropertyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiProperty"
.end annotation


# instance fields
.field private final mDefaultValue:F

.field private final mInx:I

.field private mValue:F

.field final synthetic this$0:Lcom/android/launcher3/util/MultiPropertyFactory;


# direct methods
.method static bridge synthetic -$$Nest$fgetmValue(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    return p0
.end method

.method constructor <init>(Lcom/android/launcher3/util/MultiPropertyFactory;IF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/MultiPropertyFactory;
    .param p2, "inx"    # I
    .param p3, "defaultValue"    # F

    .line 137
    .local p0, "this":Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;, "Lcom/android/launcher3/util/MultiPropertyFactory<TT;>.MultiProperty;"
    iput-object p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p2, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    .line 139
    iput p3, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mDefaultValue:F

    .line 140
    iput p3, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    .line 141
    return-void
.end method


# virtual methods
.method public animateToValue(F)Landroid/animation/Animator;
    .locals 4
    .param p1, "value"    # F

    .line 183
    .local p0, "this":Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;, "Lcom/android/launcher3/util/MultiPropertyFactory<TT;>.MultiProperty;"
    sget-object v0, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 184
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 185
    return-object v0
.end method

.method public getValue()F
    .locals 1

    .line 170
    .local p0, "this":Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;, "Lcom/android/launcher3/util/MultiPropertyFactory<TT;>.MultiProperty;"
    iget v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    return v0
.end method

.method public setValue(F)V
    .locals 8
    .param p1, "newValue"    # F

    .line 144
    .local p0, "this":Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;, "Lcom/android/launcher3/util/MultiPropertyFactory<TT;>.MultiProperty;"
    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->-$$Nest$fgetmLastIndexSet(Lcom/android/launcher3/util/MultiPropertyFactory;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    if-eq v0, v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    iget v1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mDefaultValue:F

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->-$$Nest$fputmAggregationOfOthers(Lcom/android/launcher3/util/MultiPropertyFactory;F)V

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->-$$Nest$fgetmProperties(Lcom/android/launcher3/util/MultiPropertyFactory;)[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 147
    .local v3, "other":Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;, "Lcom/android/launcher3/util/MultiPropertyFactory<*>.MultiProperty;"
    iget v4, v3, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    iget v5, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    if-eq v4, v5, :cond_0

    .line 148
    iget-object v4, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v4}, Lcom/android/launcher3/util/MultiPropertyFactory;->-$$Nest$fgetmAggregator(Lcom/android/launcher3/util/MultiPropertyFactory;)Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v6}, Lcom/android/launcher3/util/MultiPropertyFactory;->-$$Nest$fgetmAggregationOfOthers(Lcom/android/launcher3/util/MultiPropertyFactory;)F

    move-result v6

    iget v7, v3, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    .line 149
    invoke-interface {v5, v6, v7}, Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;->apply(FF)F

    move-result v5

    invoke-static {v4, v5}, Lcom/android/launcher3/util/MultiPropertyFactory;->-$$Nest$fputmAggregationOfOthers(Lcom/android/launcher3/util/MultiPropertyFactory;F)V

    .line 146
    .end local v3    # "other":Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;, "Lcom/android/launcher3/util/MultiPropertyFactory<*>.MultiProperty;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    iget v1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->-$$Nest$fputmLastIndexSet(Lcom/android/launcher3/util/MultiPropertyFactory;I)V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->-$$Nest$fgetmAggregator(Lcom/android/launcher3/util/MultiPropertyFactory;)Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->-$$Nest$fgetmAggregationOfOthers(Lcom/android/launcher3/util/MultiPropertyFactory;)F

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;->apply(FF)F

    move-result v0

    .line 156
    .local v0, "lastAggregatedValue":F
    iput p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->apply(F)V

    .line 167
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 175
    .local p0, "this":Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;, "Lcom/android/launcher3/util/MultiPropertyFactory<TT;>.MultiProperty;"
    iget v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
