.class public final Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;
.super Ljava/lang/Object;
.source "ReorderPreviewAnimation.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/celllayout/ReorderPreviewAnimation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/Reorderable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000 .*\u000c\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\u00020\u0004:\u0001.Bo\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00000\u0013\u00a2\u0006\u0002\u0010\u0014J\u0006\u0010\'\u001a\u00020(J\u0008\u0010)\u001a\u00020(H\u0002J\u0006\u0010*\u001a\u00020(J\u0010\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020\u0016H\u0016J\u0008\u0010-\u001a\u00020(H\u0002R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001e\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R \u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00000\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;",
        "T",
        "Landroid/view/View;",
        "Lcom/android/launcher3/Reorderable;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "child",
        "mode",
        "",
        "cellX0",
        "cellY0",
        "cellX1",
        "cellY1",
        "spanX",
        "spanY",
        "reorderMagnitude",
        "",
        "cellLayout",
        "Lcom/android/launcher3/CellLayout;",
        "shakeAnimators",
        "Landroid/util/ArrayMap;",
        "(Landroid/view/View;IIIIIIIFLcom/android/launcher3/CellLayout;Landroid/util/ArrayMap;)V",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "getAnimator",
        "()Landroid/animation/ValueAnimator;",
        "setAnimator",
        "(Landroid/animation/ValueAnimator;)V",
        "getChild",
        "()Landroid/view/View;",
        "Landroid/view/View;",
        "dir",
        "finalDeltaX",
        "finalDeltaY",
        "finalScale",
        "initDeltaX",
        "initDeltaY",
        "initScale",
        "getMode",
        "()I",
        "animate",
        "",
        "cancel",
        "finishAnimation",
        "onAnimationUpdate",
        "updatedAnimation",
        "setInitialAnimationValuesToBaseline",
        "Companion",
        "Trebuchet_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CHILD_DIVIDEND:F = 4.0f

.field public static final Companion:Lcom/android/launcher3/celllayout/ReorderPreviewAnimation$Companion;

.field public static final HINT_DURATION:I = 0x28a

.field public static final MODE_HINT:I = 0x0

.field public static final MODE_PREVIEW:I = 0x1

.field public static final PREVIEW_DURATION:I = 0x12c


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private final child:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final dir:I

.field private finalDeltaX:F

.field private finalDeltaY:F

.field private final finalScale:F

.field private initDeltaX:F

.field private initDeltaY:F

.field private initScale:F

.field private final mode:I

.field private final shakeAnimators:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/Reorderable;",
            "Lcom/android/launcher3/celllayout/ReorderPreviewAnimation<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->Companion:Lcom/android/launcher3/celllayout/ReorderPreviewAnimation$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIIIIIIFLcom/android/launcher3/CellLayout;Landroid/util/ArrayMap;)V
    .locals 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "mode"    # I
    .param p3, "cellX0"    # I
    .param p4, "cellY0"    # I
    .param p5, "cellX1"    # I
    .param p6, "cellY1"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I
    .param p9, "reorderMagnitude"    # F
    .param p10, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p11, "shakeAnimators"    # Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIIIIF",
            "Lcom/android/launcher3/CellLayout;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/Reorderable;",
            "Lcom/android/launcher3/celllayout/ReorderPreviewAnimation<",
            "TT;>;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p11

    const-string v4, "child"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cellLayout"

    move-object/from16 v11, p10

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "shakeAnimators"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->child:Landroid/view/View;

    .line 45
    iput v2, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->mode:I

    .line 54
    iput-object v3, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->shakeAnimators:Landroid/util/ArrayMap;

    .line 60
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/Reorderable;

    invoke-interface {v4}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->getValue()F

    move-result v4

    iput v4, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->initDeltaX:F

    .line 62
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/Reorderable;

    invoke-interface {v4}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->getValue()F

    move-result v4

    iput v4, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->initDeltaY:F

    .line 63
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/Reorderable;

    invoke-interface {v4}, Lcom/android/launcher3/Reorderable;->getReorderBounceScale()F

    move-result v4

    iput v4, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->initScale:F

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v5, v4

    iget v4, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->initScale:F

    mul-float/2addr v5, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finalScale:F

    .line 66
    const/4 v4, -0x1

    const/4 v13, 0x1

    if-nez v2, :cond_0

    move v14, v4

    goto :goto_0

    :cond_0
    move v14, v13

    :goto_0
    iput v14, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->dir:I

    .line 68
    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    move-object v7, v6

    .local v7, "it":Landroid/animation/ValueAnimator;
    const/4 v8, 0x0

    .line 69
    .local v8, "$i$a$-also-ReorderPreviewAnimation$animator$1":I
    move-object v9, v0

    check-cast v9, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    if-nez v2, :cond_1

    const/16 v9, 0x28a

    goto :goto_1

    :cond_1
    const/16 v9, 0x12c

    :goto_1
    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const/16 v15, 0x3c

    move-object/from16 v17, v6

    int-to-double v5, v15

    mul-double/2addr v9, v5

    double-to-long v5, v9

    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 75
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v2, v13, :cond_2

    .line 76
    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 77
    const/4 v4, 0x2

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 79
    :cond_2
    nop

    .line 68
    .end local v7    # "it":Landroid/animation/ValueAnimator;
    .end local v8    # "$i$a$-also-ReorderPreviewAnimation$animator$1":I
    const-string v4, "also(...)"

    move-object/from16 v5, v17

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animator:Landroid/animation/ValueAnimator;

    .line 81
    nop

    .line 82
    filled-new-array {v12, v12}, [I

    move-result-object v4

    .line 83
    .local v4, "tmpRes":[I
    move-object/from16 v5, p10

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 84
    aget v15, v4, v12

    .local v15, "x0":I
    aget v16, v4, v13

    .line 85
    .local v16, "y0":I
    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 86
    aget v5, v4, v12

    .local v5, "x1":I
    aget v6, v4, v13

    .line 87
    .local v6, "y1":I
    sub-int v7, v5, v15

    .line 88
    .local v7, "dX":I
    sub-int v8, v6, v16

    .line 90
    .local v8, "dY":I
    if-nez v7, :cond_3

    if-eqz v8, :cond_6

    .line 91
    :cond_3
    if-nez v8, :cond_4

    .line 92
    neg-int v9, v14

    int-to-float v9, v9

    int-to-float v10, v7

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    mul-float/2addr v9, v10

    mul-float v9, v9, p9

    iput v9, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finalDeltaX:F

    goto :goto_2

    .line 93
    :cond_4
    if-nez v7, :cond_5

    .line 94
    neg-int v9, v14

    int-to-float v9, v9

    int-to-float v10, v8

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    mul-float/2addr v9, v10

    mul-float v9, v9, p9

    iput v9, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finalDeltaY:F

    goto :goto_2

    .line 96
    :cond_5
    int-to-float v9, v8

    int-to-float v10, v7

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 97
    .local v9, "angle":F
    neg-int v10, v14

    int-to-float v10, v10

    int-to-float v12, v7

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v12

    mul-float/2addr v10, v12

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, p9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v10, v12

    iput v10, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finalDeltaX:F

    .line 98
    neg-int v10, v14

    int-to-float v10, v10

    int-to-float v12, v8

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v12

    mul-float/2addr v10, v12

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, p9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v10, v12

    iput v10, v0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finalDeltaY:F

    .line 101
    .end local v4    # "tmpRes":[I
    .end local v5    # "x1":I
    .end local v6    # "y1":I
    .end local v7    # "dX":I
    .end local v8    # "dY":I
    .end local v9    # "angle":F
    .end local v15    # "x0":I
    .end local v16    # "y0":I
    :cond_6
    :goto_2
    nop

    .line 41
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final cancel()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 145
    return-void
.end method

.method private final setInitialAnimationValuesToBaseline()V
    .locals 1

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->initScale:F

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->initDeltaX:F

    .line 106
    iput v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->initDeltaY:F

    .line 107
    return-void
.end method


# virtual methods
.method public final animate()V
    .locals 4

    .line 110
    iget v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finalDeltaX:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finalDeltaY:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    move v0, v2

    .line 111
    .local v0, "noMovement":Z
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->shakeAnimators:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->shakeAnimators:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;

    .line 113
    .local v1, "oldAnimation":Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;
    if-eqz v0, :cond_3

    .line 116
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finishAnimation()V

    .line 117
    return-void

    .line 121
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1}, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->cancel()V

    .line 124
    .end local v1    # "oldAnimation":Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;
    :cond_4
    if-eqz v0, :cond_5

    .line 125
    return-void

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->shakeAnimators:Landroid/util/ArrayMap;

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 129
    return-void
.end method

.method public final finishAnimation()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 151
    invoke-direct {p0}, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->setInitialAnimationValuesToBaseline()V

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "ofFloat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animator:Landroid/animation/ValueAnimator;

    .line 153
    move-object v1, p0

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/app/animation/Interpolators;->DECELERATE_1_5:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 157
    return-void
.end method

.method public final getAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public final getChild()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->child:Landroid/view/View;

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->mode:I

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "updatedAnimation"    # Landroid/animation/ValueAnimator;

    const-string v0, "updatedAnimation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 133
    .local v0, "progress":F
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->child:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/Reorderable;

    .line 134
    invoke-interface {v1}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v1

    .line 136
    nop

    .line 137
    iget v2, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finalDeltaX:F

    mul-float/2addr v2, v0

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float v4, v3, v0

    iget v5, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->initDeltaX:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 138
    iget v4, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finalDeltaY:F

    mul-float/2addr v4, v0

    sub-float v5, v3, v0

    iget v6, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->initDeltaY:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 135
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v4}, Lcom/android/launcher3/util/MultiTranslateDelegate;->setTranslation(IFF)V

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->child:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/Reorderable;

    iget v2, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finalScale:F

    mul-float/2addr v2, v0

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->initScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/launcher3/Reorderable;->setReorderBounceScale(F)V

    .line 141
    return-void
.end method

.method public final setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/animation/ValueAnimator;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animator:Landroid/animation/ValueAnimator;

    .line 79
    return-void
.end method
