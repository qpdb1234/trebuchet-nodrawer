.class public Lcom/android/launcher3/allapps/AllAppsTransitionController;
.super Ljava/lang/Object;
.source "AllAppsTransitionController.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;"
    }
.end annotation


# static fields
.field public static final ALL_APPS_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/AllAppsTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/AllAppsTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_APPS_PULL_BACK_ALPHA_DEFAULT:F = 1.0f

.field public static final ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/AllAppsTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_APPS_PULL_BACK_TRANSLATION_DEFAULT:F = 0.0f

.field private static final APPS_VIEW_INDEX_COUNT:I = 0x2

.field private static final INDEX_APPS_VIEW_PROGRESS:I = 0x0

.field private static final INDEX_APPS_VIEW_PULLBACK:I = 0x1

.field public static final INTERP_COEFF:F = 1.7f

.field private static final NAV_BAR_COLOR_FORCE_UPDATE_THRESHOLD:F = 0.1f

.field public static final REVERT_SWIPE_ALL_APPS_TO_HOME_ANIMATION_DURATION_MS:I = 0xc8

.field private static final SWIPE_DRAG_COMMIT_THRESHOLD:F = 0.6f


# instance fields
.field private final mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasScaleEffect:Z

.field private mIsTablet:Z

.field private mIsVerticalLayout:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mNavScrimFlag:I

.field private mProgress:F

.field private mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private mShiftRange:F

.field private final mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;


# direct methods
.method public static synthetic $r8$lambda$0cPanAsq3ui8i66cIJLI7x7kPyk(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onScaleProgressChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$9zUyEoUb8t4Le7S3He9vGhDX8bY(Lcom/android/launcher3/allapps/AllAppsTransitionController;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->lambda$setStateWithAnimation$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jz_MSptWcWeju_LkzOUFPzqCQLw(FF)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Float;->sum(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RTNUDzKNdMf1GKFEoesp_lakaVk(Lcom/android/launcher3/allapps/AllAppsTransitionController;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->lambda$setStateWithAnimation$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppsView(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTablet(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgress(Lcom/android/launcher3/allapps/AllAppsTransitionController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAppsViewPullbackAlpha(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewPullbackAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAppsViewPullbackTranslationY(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewPullbackTranslationY()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;

    const-string v1, "allAppsProgress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    .line 106
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;

    const-string v1, "allAppsPullBackTranslation"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;

    .line 134
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;

    const-string v1, "allAppsPullBackAlpha"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 4
    .param p1, "l"    # Lcom/android/launcher3/Launcher;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    .line 192
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 193
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 194
    .local v1, "dp":Lcom/android/launcher3/DeviceProfile;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 195
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    .line 196
    iget-boolean v3, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iput-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    .line 197
    sget v3, Lcom/android/launcher3/R$attr;->isMainColorDark:I

    invoke-static {p1, v3}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iput v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNavScrimFlag:I

    .line 200
    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setShiftRange(F)V

    .line 201
    iput v2, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    .line 202
    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 203
    sget-object v0, Lcom/android/launcher3/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/VibratorWrapper;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    .line 204
    return-void
.end method

.method private getAppsViewProgressAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    return-object v0
.end method

.method private getAppsViewProgressTranslationY()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    return-object v0
.end method

.method private getAppsViewPullbackAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    return-object v0
.end method

.method private getAppsViewPullbackTranslationY()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setStateWithAnimation$0(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 338
    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 339
    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 341
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    .line 342
    return-void
.end method

.method private synthetic lambda$setStateWithAnimation$1(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "unused"    # Ljava/lang/Boolean;

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/VibratorWrapper;->cancelVibrate()V

    .line 358
    return-void
.end method

.method private onScaleProgressChanged()V
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    .line 294
    .local v0, "scaleProgress":F
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 295
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/ScrimView;->setScrimHeaderScale(F)V

    .line 297
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    .line 298
    .local v1, "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 299
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v4

    cmpg-float v5, v0, v2

    if-gez v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setVisibility(I)V

    .line 305
    :cond_1
    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 306
    .local v2, "hasScaleEffect":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHasScaleEffect:Z

    if-eq v2, v4, :cond_4

    .line 307
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHasScaleEffect:Z

    .line 308
    if-eqz v2, :cond_3

    .line 309
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;Z)V

    goto :goto_2

    .line 311
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->restoreClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;)V

    .line 314
    :cond_4
    :goto_2
    return-void
.end method

.method private static restoreClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/ViewParent;

    .line 477
    if-nez p0, :cond_0

    .line 478
    return-void

    .line 480
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 481
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 482
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    sget v1, Lcom/android/launcher3/R$id;->saved_clip_children_tag_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 483
    .local v1, "viewTag":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 484
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 485
    sget v2, Lcom/android/launcher3/R$id;->saved_clip_children_tag_id:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 489
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "viewTag":Ljava/lang/Object;
    :cond_1
    if-ne p0, p1, :cond_2

    .line 490
    return-void

    .line 493
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 494
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->restoreClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;)V

    .line 496
    :cond_3
    return-void
.end method

.method private static setClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;Z)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "clipChildren"    # Z

    .line 442
    if-nez p0, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 447
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 448
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    .line 449
    .local v1, "oldClipChildren":Z
    if-eq v1, p2, :cond_1

    .line 450
    sget v2, Lcom/android/launcher3/R$id;->saved_clip_children_tag_id:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 451
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 455
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "oldClipChildren":Z
    :cond_1
    if-ne p0, p1, :cond_2

    .line 456
    return-void

    .line 459
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 460
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;Z)V

    .line 462
    :cond_3
    return-void
.end method


# virtual methods
.method public animateAllAppsToNoScale()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 319
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 321
    return-void
.end method

.method public varargs createSpringAnimation([F)Landroid/animation/Animator;
    .locals 1
    .param p1, "progressValues"    # [F

    .line 385
    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 247
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    return v0
.end method

.method public getShiftRange()F
    .locals 1

    .line 207
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    return v0
.end method

.method public onBackProgressed(Lcom/android/launcher3/LauncherState;F)V
    .locals 3
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "backProgress"    # F

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    sget-object v0, Lcom/android/app/animation/Interpolators;->PREDICTIVE_BACK_DECELERATED_EASE:Landroid/view/animation/Interpolator;

    .line 284
    invoke-interface {v0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 285
    .local v0, "deceleratedProgress":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const v2, 0x3dccccd0    # 0.100000024f

    mul-float/2addr v1, v2

    const v2, 0x3f666666    # 0.9f

    add-float/2addr v1, v2

    .line 289
    .local v1, "scaleProgress":F
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    .line 290
    return-void

    .line 280
    .end local v0    # "deceleratedProgress":F
    .end local v1    # "scaleProgress":F
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onBackProgressed(Ljava/lang/Object;F)V
    .locals 0

    .line 80
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onBackProgressed(Lcom/android/launcher3/LauncherState;F)V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 212
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    .line 213
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setShiftRange(F)V

    .line 215
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setTranslationY(F)V

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 220
    :cond_0
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    .line 221
    return-void
.end method

.method public setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V
    .locals 10
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "setter"    # Lcom/android/launcher3/anim/PropertySetter;

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v0

    .line 393
    .local v0, "visibleElements":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 395
    .local v1, "hasAllAppsContent":Z
    :goto_0
    const/16 v4, 0xa

    sget-object v5, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 396
    .local v4, "allAppsFade":Landroid/view/animation/Interpolator;
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewProgressAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    .line 397
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    .line 396
    :goto_1
    invoke-virtual {p3, v5, v6, v9, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 398
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewPullbackAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    .line 399
    if-eqz v1, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v8

    .line 398
    :goto_2
    invoke-virtual {p3, v5, v6, v9, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 401
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->BOTTOM_SHEET_ALPHA:Landroid/util/FloatProperty;

    .line 402
    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v7, v8

    :goto_3
    sget-object v8, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    .line 403
    const/16 v9, 0x13

    invoke-virtual {p2, v9, v8}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 401
    invoke-virtual {p3, v5, v6, v7, v8}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 405
    const/16 v5, 0x8

    invoke-virtual {p2, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq v5, p1, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 406
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v5, v6, :cond_5

    :cond_4
    goto :goto_4

    :cond_5
    move v2, v3

    .line 407
    .local v2, "shouldProtectHeader":Z
    :goto_4
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v3, v5}, Lcom/android/launcher3/views/ScrimView;->setDrawingController(Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;)V

    .line 408
    return-void
.end method

.method public setProgress(F)V
    .locals 6
    .param p1, "progress"    # F

    .line 232
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 234
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 236
    .local v0, "fromBackground":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 237
    .local v1, "shiftRange":F
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewProgressTranslationY()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    mul-float/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 238
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p1

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->onAllAppsTransition(F)V

    .line 240
    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 241
    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getNavBarScrimHeight()I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 242
    .local v2, "hasScrim":Z
    :goto_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v4

    .line 243
    if-eqz v2, :cond_3

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNavScrimFlag:I

    .line 242
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 244
    return-void
.end method

.method public setShiftRange(F)V
    .locals 0
    .param p1, "shiftRange"    # F

    .line 502
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 503
    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 273
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    sget-object v1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 274
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 6
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "builder"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 345
    :cond_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_PREMIUM_HAPTICS_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_2

    .line 347
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    const v1, 0x3f19999a    # 0.6f

    if-ne p1, v0, :cond_1

    .line 348
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/util/VibratorWrapper;FF)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 352
    :cond_1
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/util/VibratorWrapper;FF)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 356
    :goto_0
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    .line 362
    .local v0, "targetProgress":F
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 365
    return-void

    .line 369
    :cond_3
    nop

    .line 370
    invoke-virtual {p2}, Lcom/android/launcher3/states/StateAnimationConfig;->isUserControlled()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/app/animation/Interpolators;->DECELERATE_1_7:Landroid/view/animation/Interpolator;

    .line 369
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 371
    .local v1, "verticalProgressInterpolator":Landroid/view/animation/Interpolator;
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    aput v4, v3, v2

    const/4 v2, 0x1

    aput v0, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->createSpringAnimation([F)Landroid/animation/Animator;

    move-result-object v3

    .line 372
    .local v3, "anim":Landroid/animation/Animator;
    invoke-virtual {v3, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 373
    invoke-virtual {p3, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 375
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 377
    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_PREMIUM_HAPTICS_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 378
    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-nez v4, :cond_5

    .line 379
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->performHapticFeedback(II)Z

    .line 382
    :cond_5
    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public setupViews(Lcom/android/launcher3/views/ScrimView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 5
    .param p1, "scrimView"    # Lcom/android/launcher3/views/ScrimView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/ScrimView;",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;)V"
        }
    .end annotation

    .line 414
    .local p2, "appsView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<Lcom/android/launcher3/Launcher;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    .line 415
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 416
    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setScrimView(Lcom/android/launcher3/views/ScrimView;)V

    .line 418
    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 419
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ALL_APPS_GONE_VISIBILITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    .line 420
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    .line 421
    new-instance v0, Lcom/android/launcher3/util/MultiPropertyFactory;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-instance v4, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    .line 423
    return-void
.end method
