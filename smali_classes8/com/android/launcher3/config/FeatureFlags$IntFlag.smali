.class public Lcom/android/launcher3/config/FeatureFlags$IntFlag;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/config/FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntFlag"
.end annotation


# instance fields
.field private final mCurrentValue:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentValue(Lcom/android/launcher3/config/FeatureFlags$IntFlag;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/config/FeatureFlags$IntFlag;->mCurrentValue:I

    return p0
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "currentValue"    # I

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput p1, p0, Lcom/android/launcher3/config/FeatureFlags$IntFlag;->mCurrentValue:I

    .line 522
    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .line 525
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->sIntReader:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
