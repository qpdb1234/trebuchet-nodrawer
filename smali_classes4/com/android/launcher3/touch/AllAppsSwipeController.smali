.class public Lcom/android/launcher3/touch/AllAppsSwipeController;
.super Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.source "AllAppsSwipeController.java"


# static fields
.field public static final ALL_APPS_CLAMPING_RESPONDER:Landroid/view/animation/Interpolator;

.field private static final ALL_APPS_CONTENT_FADE_MAX_CLAMPING_THRESHOLD:F = 0.8f

.field private static final ALL_APPS_CONTENT_FADE_MIN_CLAMPING_THRESHOLD:F = 0.5f

.field public static final ALL_APPS_FADE_ATOMIC:Landroid/view/animation/Interpolator;

.field private static final ALL_APPS_FADE_END_ATOMIC:F = 0.8333f

.field private static final ALL_APPS_FADE_END_MANUAL:F = 0.8f

.field public static final ALL_APPS_FADE_MANUAL:Landroid/view/animation/Interpolator;

.field private static final ALL_APPS_FULL_DEPTH_PROGRESS:F = 0.5f

.field public static final ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

.field private static final ALL_APPS_SCRIM_VISIBLE_THRESHOLD:F = 0.1f

.field private static final ALL_APPS_STAGGERED_FADE_THRESHOLD:F = 0.5f

.field public static final ALL_APPS_STATE_TRANSITION_ATOMIC:F = 0.3333f

.field public static final ALL_APPS_STATE_TRANSITION_MANUAL:F = 0.4f

.field public static final ALL_APPS_VERTICAL_PROGRESS_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

.field private static final BLUR_ADJUSTED:Landroid/view/animation/Interpolator;

.field public static final BLUR_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final BLUR_MANUAL:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_FADE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_FADE_MANUAL:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_SCALE_MANUAL:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_TRANSLATE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_TRANSLATE_MANUAL:Landroid/view/animation/Interpolator;

.field private static final LINEAR_EARLY_MANUAL:Landroid/view/animation/Interpolator;

.field public static final SCRIM_FADE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final SCRIM_FADE_MANUAL:Landroid/view/animation/Interpolator;

.field private static final SCRIM_FADE_START_ATOMIC:F = 0.2642f

.field private static final SCRIM_FADE_START_MANUAL:F = 0.117f

.field private static final STEP_TRANSITION_ATOMIC:Landroid/view/animation/Interpolator;

.field private static final STEP_TRANSITION_MANUAL:Landroid/view/animation/Interpolator;

.field public static final WORKSPACE_FADE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final WORKSPACE_FADE_MANUAL:Landroid/view/animation/Interpolator;

.field private static final WORKSPACE_MOTION_START_ATOMIC:F = 0.1667f

.field public static final WORKSPACE_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final WORKSPACE_SCALE_MANUAL:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 63
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 64
    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

    .line 66
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 67
    const v1, 0x3e4ccccc    # 0.19999999f

    invoke-static {v0, v1, v2}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_CLAMPING_RESPONDER:Landroid/view/animation/Interpolator;

    .line 83
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 84
    const/4 v1, 0x0

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v0, v1, v3}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->LINEAR_EARLY_MANUAL:Landroid/view/animation/Interpolator;

    .line 85
    sget-object v4, Lcom/android/app/animation/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    .line 86
    const v5, 0x3eaaa64c    # 0.3333f

    invoke-static {v4, v1, v5}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    sput-object v4, Lcom/android/launcher3/touch/AllAppsSwipeController;->STEP_TRANSITION_ATOMIC:Landroid/view/animation/Interpolator;

    .line 87
    sget-object v6, Lcom/android/app/animation/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    .line 88
    invoke-static {v6, v1, v3}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    sput-object v6, Lcom/android/launcher3/touch/AllAppsSwipeController;->STEP_TRANSITION_MANUAL:Landroid/view/animation/Interpolator;

    .line 91
    sget-object v7, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 92
    invoke-static {v7, v1, v2}, Lcom/android/app/animation/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_ADJUSTED:Landroid/view/animation/Interpolator;

    .line 93
    nop

    .line 94
    const v7, 0x3e2ab368    # 0.1667f

    invoke-static {v2, v7, v5}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v8

    sput-object v8, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_ATOMIC:Landroid/view/animation/Interpolator;

    .line 96
    nop

    .line 97
    invoke-static {v2, v1, v3}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_MANUAL:Landroid/view/animation/Interpolator;

    .line 99
    sput-object v4, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 100
    sput-object v6, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_MANUAL:Landroid/view/animation/Interpolator;

    .line 102
    sget-object v2, Lcom/android/app/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 103
    invoke-static {v2, v7, v5}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 106
    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    .line 108
    sput-object v4, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 109
    sput-object v6, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_MANUAL:Landroid/view/animation/Interpolator;

    .line 111
    sget-object v2, Lcom/android/app/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 112
    invoke-static {v2, v7, v5}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 115
    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    .line 117
    sput-object v4, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 118
    sput-object v6, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_MANUAL:Landroid/view/animation/Interpolator;

    .line 120
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 122
    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, Lcom/android/app/animation/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 121
    const v1, 0x3e874539    # 0.2642f

    invoke-static {v0, v1, v5}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 124
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 125
    const v1, 0x3def9db2    # 0.117f

    invoke-static {v0, v1, v3}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_MANUAL:Landroid/view/animation/Interpolator;

    .line 128
    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 130
    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v4}, Lcom/android/app/animation/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 129
    const v1, 0x3f555326    # 0.8333f

    invoke-static {v0, v5, v1}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 132
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 133
    invoke-static {v0, v3, v2}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_MANUAL:Landroid/view/animation/Interpolator;

    .line 136
    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 138
    invoke-static {v0, v3, v4}, Lcom/android/app/animation/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 137
    invoke-static {v0, v5, v4}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_ATOMIC:Landroid/view/animation/Interpolator;

    .line 140
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/Launcher;

    .line 145
    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    .line 146
    return-void
.end method

.method public static applyAllAppsToNormalConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 7
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v1, 0x1

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/16 v5, 0xb

    if-eqz v0, :cond_1

    .line 209
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

    .line 210
    invoke-static {v0}, Lcom/android/app/animation/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 209
    invoke-virtual {p1, v5, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 211
    sget-object v0, Lcom/android/app/animation/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v4, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 212
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 215
    :cond_0
    sget-object v0, Lcom/android/app/animation/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 216
    sget-object v0, Lcom/android/app/animation/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    const/4 v6, 0x3

    if-eqz v0, :cond_2

    .line 219
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/app/animation/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 220
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_MANUAL:Landroid/view/animation/Interpolator;

    .line 221
    invoke-static {v0}, Lcom/android/app/animation/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 220
    invoke-virtual {p1, v6, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 222
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    .line 223
    invoke-static {v0}, Lcom/android/app/animation/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 222
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 224
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_MANUAL:Landroid/view/animation/Interpolator;

    .line 225
    invoke-static {v0}, Lcom/android/app/animation/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 224
    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 226
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    .line 227
    invoke-static {v0}, Lcom/android/app/animation/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 226
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 228
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_MANUAL:Landroid/view/animation/Interpolator;

    .line 229
    invoke-static {v0}, Lcom/android/app/animation/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 228
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 230
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/app/animation/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 231
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_MANUAL:Landroid/view/animation/Interpolator;

    .line 232
    invoke-static {v0}, Lcom/android/app/animation/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 231
    invoke-virtual {p1, v4, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 233
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

    .line 234
    invoke-static {v0}, Lcom/android/app/animation/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 233
    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 236
    :cond_2
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

    .line 237
    invoke-static {v0}, Lcom/android/app/animation/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 236
    invoke-virtual {p1, v5, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 238
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_CLAMPING_RESPONDER:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v4, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 239
    sget-object v0, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v6, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 240
    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 243
    :goto_0
    return-void
.end method

.method public static applyNormalToAllAppsAnimConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 6
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/16 v5, 0xd

    if-eqz v0, :cond_1

    .line 251
    sget-object v0, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v4, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 252
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 253
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 256
    :cond_0
    sget-object v0, Lcom/android/app/animation/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 257
    sget-object v0, Lcom/android/app/animation/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v5, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto/16 :goto_9

    .line 259
    :cond_1
    nop

    .line 260
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_ATOMIC:Landroid/view/animation/Interpolator;

    .line 259
    :goto_0
    invoke-virtual {p1, v5, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 261
    nop

    .line 262
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 261
    :goto_1
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 263
    nop

    .line 264
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 263
    :goto_2
    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 265
    nop

    .line 266
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 265
    :goto_3
    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 267
    nop

    .line 268
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 267
    :goto_4
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 269
    nop

    .line 270
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 271
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_5

    .line 272
    :cond_7
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 269
    :goto_5
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 273
    nop

    .line 274
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_8
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 273
    :goto_6
    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 275
    nop

    .line 276
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_7

    :cond_9
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    .line 275
    :goto_7
    invoke-virtual {p1, v4, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 277
    nop

    .line 278
    invoke-virtual {p1}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 279
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_8

    .line 280
    :cond_a
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_ATOMIC:Landroid/view/animation/Interpolator;

    .line 277
    :goto_8
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 282
    :goto_9
    return-void
.end method

.method public static applyOverviewToAllAppsAnimConfig(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/states/StateAnimationConfig;F)V
    .locals 5
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p1, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p2, "threshold"    # F

    .line 291
    iget v0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->animProps:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->animProps:I

    .line 292
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    .line 293
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xa

    if-eqz v2, :cond_0

    .line 294
    sget-object v2, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v4, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 295
    const/16 v2, 0xb

    sget-object v4, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 298
    sget-object v2, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v4, v3}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 299
    sget-object v2, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 300
    sget-object v1, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 303
    :cond_0
    sget-object v0, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    .line 304
    invoke-static {p2, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->thresholdInterpolator(FLandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 303
    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 305
    sget-object v0, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    .line 306
    invoke-static {p2, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->thresholdInterpolator(FLandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 305
    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 307
    sget-object v0, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-static {p2, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->thresholdInterpolator(FLandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 309
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 310
    invoke-static {v0, p2, v3}, Lcom/android/app/animation/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->thresholdInterpolator(FLandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 309
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 312
    :goto_0
    return-void
.end method

.method static synthetic lambda$thresholdInterpolator$0(FLandroid/view/animation/Interpolator;F)F
    .locals 1
    .param p0, "threshold"    # F
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "progress"    # F

    .line 316
    cmpg-float v0, p2, p0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :goto_0
    return v0
.end method

.method private static thresholdInterpolator(FLandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "threshold"    # F
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 316
    new-instance v0, Lcom/android/launcher3/touch/AllAppsSwipeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/touch/AllAppsSwipeController$$ExternalSyntheticLambda0;-><init>(FLandroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 152
    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 155
    return v2

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    return v2

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    return v2

    .line 164
    :cond_3
    return v1
.end method

.method protected getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;
    .locals 2
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 194
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object v0

    .line 195
    .local v0, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    iget v1, v0, Lcom/android/launcher3/states/StateAnimationConfig;->animProps:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/launcher3/states/StateAnimationConfig;->animProps:I

    .line 196
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p2, v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->applyNormalToAllAppsAnimConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V

    goto :goto_0

    .line 198
    :cond_0
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p2, v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->applyAllAppsToNormalConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 201
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .locals 1
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "isDragTowardPositive"    # Z

    .line 169
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/touch/AllAppsSwipeController;->shouldOpenAllApps(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    return-object v0

    .line 171
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 172
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object v0

    .line 174
    :cond_1
    return-object p1
.end method

.method protected initCurrentAnimation()F
    .locals 6

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->getShiftRange()F

    move-result v0

    .line 180
    .local v0, "range":F
    iget-object v1, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/touch/AllAppsSwipeController;->getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object v1

    .line 181
    .local v1, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 183
    iget-object v2, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 184
    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 185
    iget-object v2, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v3, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v2

    mul-float/2addr v2, v0

    .line 186
    .local v2, "startVerticalShift":F
    iget-object v3, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    iget-object v4, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v3

    mul-float/2addr v3, v0

    .line 187
    .local v3, "endVerticalShift":F
    sub-float v4, v3, v2

    .line 188
    .local v4, "totalShift":F
    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    return v5
.end method
