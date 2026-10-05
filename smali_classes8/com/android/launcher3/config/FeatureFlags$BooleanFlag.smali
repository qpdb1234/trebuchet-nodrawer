.class public Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/config/FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanFlag"
.end annotation


# instance fields
.field private final mCurrentValue:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentValue(Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->mCurrentValue:Z

    return p0
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "currentValue"    # Z

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-boolean p1, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->mCurrentValue:Z

    .line 506
    return-void
.end method


# virtual methods
.method public get()Z
    .locals 1

    .line 509
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->sBooleanReader:Ljava/util/function/Predicate;

    invoke-interface {v0, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
