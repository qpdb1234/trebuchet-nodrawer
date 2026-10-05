.class public Lcom/android/launcher3/util/VibratorWrapper;
.super Ljava/lang/Object;
.source "VibratorWrapper.java"


# static fields
.field private static final DRAG_BUMP_SCALE:F = 0.4f

.field private static final DRAG_COMMIT_SCALE:F = 0.5f

.field private static final DRAG_TEXTURE_EFFECT_SIZE:I = 0xc8

.field private static final DRAG_TEXTURE_SCALE:F = 0.03f

.field public static final EFFECT_CLICK:Landroid/os/VibrationEffect;

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/VibratorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOW_TICK_SCALE:F = 0.9f

.field public static final OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

.field public static final VIBRATION_ATTRS:Landroid/media/AudioAttributes;


# instance fields
.field private final mBumpEffect:Landroid/os/VibrationEffect;

.field private final mCommitEffect:Landroid/os/VibrationEffect;

.field private final mContext:Landroid/content/Context;

.field private final mDragEffect:Landroid/os/VibrationEffect;

.field private final mHasVibrator:Z

.field private mIsHapticFeedbackEnabled:Z

.field private mLastDragTime:J

.field private final mSearchEffect:Landroid/os/VibrationEffect;

.field private final mThresholdUntilNextDragCallMillis:I

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$1rFUrdX_xaPfV1_fyQyx3LlHNiI(Lcom/android/launcher3/util/VibratorWrapper;IFLandroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/util/VibratorWrapper;->lambda$vibrate$1(IFLandroid/os/VibrationEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F31wmqPcQ8mVDnRTLICG4ipRub4(Landroid/os/Vibrator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$j7Tt3_KnbIVntSROQqmi88pfhzU(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/VibratorWrapper;->lambda$vibrate$0(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uM4rwiZtImipLoI-eXUMAM6O0rY(Landroid/content/Context;)Lcom/android/launcher3/util/VibratorWrapper;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/VibratorWrapper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/VibratorWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fputmIsHapticFeedbackEnabled(Lcom/android/launcher3/util/VibratorWrapper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misHapticFeedbackEnabled(Lcom/android/launcher3/util/VibratorWrapper;Landroid/content/ContentResolver;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/VibratorWrapper;->isHapticFeedbackEnabled(Landroid/content/ContentResolver;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/VibratorWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/launcher3/util/VibratorWrapper$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 53
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 54
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 55
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    .line 58
    nop

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    .line 83
    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mContext:Landroid/content/Context;

    .line 93
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    .line 94
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mHasVibrator:Z

    .line 95
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 97
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v1}, Lcom/android/launcher3/util/VibratorWrapper;->isHapticFeedbackEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    .line 98
    new-instance v3, Lcom/android/launcher3/util/VibratorWrapper$1;

    sget-object v4, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/android/launcher3/util/VibratorWrapper$1;-><init>(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 104
    .local v3, "observer":Landroid/database/ContentObserver;
    const-string v4, "haptic_feedback_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "observer":Landroid/database/ContentObserver;
    goto :goto_0

    .line 107
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    .line 110
    :goto_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v3, 0x7

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    filled-new-array {v1}, [I

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 116
    .local v0, "dragEffect":Landroid/os/VibrationEffect$Composition;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v5, 0xc8

    if-ge v4, v5, :cond_1

    .line 117
    const v5, 0x3cf5c28f    # 0.03f

    invoke-virtual {v0, v1, v5}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    .line 116
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 120
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/util/VibratorWrapper;->mDragEffect:Landroid/os/VibrationEffect;

    .line 121
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v3, v5}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v4

    .line 122
    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/util/VibratorWrapper;->mCommitEffect:Landroid/os/VibrationEffect;

    .line 123
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v1, v5}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v4

    .line 124
    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/util/VibratorWrapper;->mBumpEffect:Landroid/os/VibrationEffect;

    .line 125
    iget-object v4, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Vibrator;->getPrimitiveDurations([I)[I

    move-result-object v1

    aget v1, v1, v2

    .line 128
    .local v1, "primitiveDuration":I
    mul-int/lit16 v2, v1, 0xc8

    add-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/android/launcher3/util/VibratorWrapper;->mThresholdUntilNextDragCallMillis:I

    .line 130
    .end local v0    # "dragEffect":Landroid/os/VibrationEffect$Composition;
    .end local v1    # "primitiveDuration":I
    goto :goto_2

    .line 131
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mDragEffect:Landroid/os/VibrationEffect;

    .line 132
    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mCommitEffect:Landroid/os/VibrationEffect;

    .line 133
    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mBumpEffect:Landroid/os/VibrationEffect;

    .line 134
    iput v2, p0, Lcom/android/launcher3/util/VibratorWrapper;->mThresholdUntilNextDragCallMillis:I

    .line 137
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x4

    filled-new-array {v1, v3}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_HAPTIC_HINT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 141
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v3, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mSearchEffect:Landroid/os/VibrationEffect;

    goto :goto_3

    .line 146
    :cond_3
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 147
    const/high16 v4, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v4}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 148
    const/16 v1, 0x32

    invoke-virtual {v0, v3, v2, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mSearchEffect:Landroid/os/VibrationEffect;

    goto :goto_3

    .line 153
    :cond_4
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mSearchEffect:Landroid/os/VibrationEffect;

    .line 155
    :goto_3
    return-void
.end method

.method private isHapticFeedbackEnabled(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 207
    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private synthetic lambda$vibrate$0(Landroid/os/VibrationEffect;)V
    .locals 2
    .param p1, "vibrationEffect"    # Landroid/os/VibrationEffect;

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/launcher3/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method private synthetic lambda$vibrate$1(IFLandroid/os/VibrationEffect;)V
    .locals 3
    .param p1, "primitiveId"    # I
    .param p2, "primitiveScale"    # F
    .param p3, "fallbackEffect"    # Landroid/os/VibrationEffect;

    .line 225
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    filled-new-array {p1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    .line 227
    invoke-virtual {v1, p1, p2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/launcher3/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p3, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 232
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelVibrate()V
    .locals 3

    .line 201
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/util/VibratorWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/util/VibratorWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/os/Vibrator;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    .line 204
    return-void
.end method

.method public vibrate(IFLandroid/os/VibrationEffect;)V
    .locals 2
    .param p1, "primitiveId"    # I
    .param p2, "primitiveScale"    # F
    .param p3, "fallbackEffect"    # Landroid/os/VibrationEffect;

    .line 223
    iget-boolean v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mHasVibrator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/VibratorWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/util/VibratorWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/VibratorWrapper;IFLandroid/os/VibrationEffect;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 234
    :cond_0
    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;)V
    .locals 2
    .param p1, "vibrationEffect"    # Landroid/os/VibrationEffect;

    .line 212
    iget-boolean v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mHasVibrator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/VibratorWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/VibratorWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/VibrationEffect;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 215
    :cond_0
    return-void
.end method

.method public vibrateForDragBump()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mBumpEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 194
    :cond_0
    return-void
.end method

.method public vibrateForDragCommit()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mCommitEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 182
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    .line 183
    return-void
.end method

.method public vibrateForDragTexture()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mDragEffect:Landroid/os/VibrationEffect;

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 167
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    sub-long v2, v0, v2

    .line 168
    .local v2, "elapsedTimeSinceDrag":J
    iget v4, p0, Lcom/android/launcher3/util/VibratorWrapper;->mThresholdUntilNextDragCallMillis:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/android/launcher3/util/VibratorWrapper;->mDragEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 170
    iput-wide v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    .line 172
    :cond_1
    return-void
.end method

.method public vibrateForSearch()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mSearchEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 241
    :cond_0
    return-void
.end method

.method public vibrateForSearchHint()V
    .locals 13

    .line 257
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_HAPTIC_HINT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0x8

    filled-new-array {v1}, [I

    move-result-object v2

    .line 258
    invoke-virtual {v0, v2}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->LPNH_HAPTIC_HINT_START_SCALE_PERCENT:Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$IntFlag;->get()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    .line 260
    .local v0, "startScale":F
    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->LPNH_HAPTIC_HINT_END_SCALE_PERCENT:Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$IntFlag;->get()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 261
    .local v3, "endScale":F
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->LPNH_HAPTIC_HINT_SCALE_EXPONENT:Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$IntFlag;->get()I

    move-result v2

    .line 262
    .local v2, "scaleExponent":I
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->LPNH_HAPTIC_HINT_ITERATIONS:Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$IntFlag;->get()I

    move-result v4

    .line 263
    .local v4, "iterations":I
    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->LPNH_HAPTIC_HINT_DELAY:Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$IntFlag;->get()I

    move-result v5

    .line 265
    .local v5, "delayMs":I
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v6

    .line 266
    .local v6, "composition":Landroid/os/VibrationEffect$Composition;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_1

    .line 267
    int-to-float v8, v7

    int-to-float v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    .line 268
    .local v8, "t":F
    sub-float/2addr v10, v8

    mul-float/2addr v10, v0

    mul-float v9, v8, v3

    add-float/2addr v10, v9

    float-to-double v9, v10

    int-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    .line 270
    .local v9, "scale":F
    if-nez v7, :cond_0

    .line 272
    invoke-virtual {v6, v1, v9, v5}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    goto :goto_1

    .line 275
    :cond_0
    invoke-virtual {v6, v1, v9}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    .line 266
    .end local v8    # "t":F
    .end local v9    # "scale":F
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 279
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 281
    .end local v0    # "startScale":F
    .end local v2    # "scaleExponent":I
    .end local v3    # "endScale":F
    .end local v4    # "iterations":I
    .end local v5    # "delayMs":I
    .end local v6    # "composition":Landroid/os/VibrationEffect$Composition;
    :cond_2
    return-void
.end method

.method public vibrateForTaskbarUnstash()V
    .locals 3

    .line 245
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0x8

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 248
    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    .line 251
    .local v0, "primitiveLowTickEffect":Landroid/os/VibrationEffect;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 253
    .end local v0    # "primitiveLowTickEffect":Landroid/os/VibrationEffect;
    :cond_0
    return-void
.end method
