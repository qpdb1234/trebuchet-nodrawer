.class public final Lcom/android/launcher3/util/CannedAnimationCoordinator;
.super Ljava/lang/Object;
.source "CannedAnimationCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCannedAnimationCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CannedAnimationCoordinator.kt\ncom/android/launcher3/util/CannedAnimationCoordinator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,174:1\n1#2:175\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0011H\u0002J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0016\u001a\u00020\u0001J\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0001J\u0008\u0010\u0018\u001a\u00020\u0013H\u0002J$\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00012\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u001b\u001a\u00020\u0008R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/android/launcher3/util/CannedAnimationCoordinator;",
        "",
        "activity",
        "Lcom/android/launcher3/statemanager/StatefulActivity;",
        "(Lcom/android/launcher3/statemanager/StatefulActivity;)V",
        "animationController",
        "Lcom/android/launcher3/anim/AnimatorPlaybackController;",
        "animationDuration",
        "",
        "animationFactory",
        "Ljava/util/function/Consumer;",
        "Lcom/android/launcher3/anim/PendingAnimation;",
        "animationProvider",
        "currentAnim",
        "launcherLayoutListener",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "recreatePending",
        "",
        "endCurrentAnimation",
        "",
        "success",
        "getPlaybackController",
        "provider",
        "recreateAnimation",
        "scheduleRecreateAnimOnPreDraw",
        "setAnimation",
        "factory",
        "duration",
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


# instance fields
.field private final activity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "*>;"
        }
    .end annotation
.end field

.field private animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private animationDuration:J

.field private animationFactory:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private animationProvider:Ljava/lang/Object;

.field private currentAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private final launcherLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private recreatePending:Z


# direct methods
.method public static synthetic $r8$lambda$DmZv3dRuo1aYUz-bZKM35tW0lHw(Lcom/android/launcher3/util/CannedAnimationCoordinator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->setAnimation$lambda$2$lambda$1(Lcom/android/launcher3/util/CannedAnimationCoordinator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OJbJzJhgyQtrZIOYDCDyPI8gBJ4(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->scheduleRecreateAnimOnPreDraw$lambda$9(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YieKJd-Tc5U8dBwZxf_Eb3B3eJw(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->launcherLayoutListener$lambda$0(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mywmKY1At-QSMqPWIZ-T1rh2LtI(Lcom/android/launcher3/util/CannedAnimationCoordinator;Lcom/android/launcher3/anim/AnimatorPlaybackController;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->setAnimation$lambda$4(Lcom/android/launcher3/util/CannedAnimationCoordinator;Lcom/android/launcher3/anim/AnimatorPlaybackController;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 43
    new-instance v0, Lcom/android/launcher3/util/CannedAnimationCoordinator$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V

    iput-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->launcherLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 41
    return-void
.end method

.method private final endCurrentAnimation(Z)V
    .locals 3
    .param p1, "success"    # Z

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->currentAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_1

    .local v0, "$this$endCurrentAnimation_u24lambda_u247":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    const/4 v1, 0x0

    .line 128
    .local v1, "$i$a$-apply-CannedAnimationCoordinator$endCurrentAnimation$1":I
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 129
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 131
    nop

    .line 125
    .end local v0    # "$this$endCurrentAnimation_u24lambda_u247":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .end local v1    # "$i$a$-apply-CannedAnimationCoordinator$endCurrentAnimation$1":I
    nop

    .line 132
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->currentAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 133
    return-void
.end method

.method private static final launcherLayoutListener$lambda$0(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V
    .locals 1
    .param p0, "this$0"    # Lcom/android/launcher3/util/CannedAnimationCoordinator;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->scheduleRecreateAnimOnPreDraw()V

    return-void
.end method

.method private final scheduleRecreateAnimOnPreDraw()V
    .locals 2

    .line 145
    iget-boolean v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreatePending:Z

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreatePending:Z

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/util/CannedAnimationCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 154
    :cond_0
    return-void
.end method

.method private static final scheduleRecreateAnimOnPreDraw$lambda$9(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V
    .locals 2
    .param p0, "this$0"    # Lcom/android/launcher3/util/CannedAnimationCoordinator;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreatePending:Z

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreatePending:Z

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 175
    .local v0, "$this$scheduleRecreateAnimOnPreDraw_u24lambda_u249_u24lambda_u248":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 150
    .local v1, "$i$a$-apply-CannedAnimationCoordinator$scheduleRecreateAnimOnPreDraw$1$1":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreateAnimation(Ljava/lang/Object;)V

    .line 152
    .end local v0    # "$this$scheduleRecreateAnimOnPreDraw_u24lambda_u249_u24lambda_u248":Ljava/lang/Object;
    .end local v1    # "$i$a$-apply-CannedAnimationCoordinator$scheduleRecreateAnimOnPreDraw$1$1":I
    :cond_0
    return-void
.end method

.method private static final setAnimation$lambda$2$lambda$1(Lcom/android/launcher3/util/CannedAnimationCoordinator;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p0, "this$0"    # Lcom/android/launcher3/util/CannedAnimationCoordinator;
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->currentAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_0
    return-void
.end method

.method private static final setAnimation$lambda$4(Lcom/android/launcher3/util/CannedAnimationCoordinator;Lcom/android/launcher3/anim/AnimatorPlaybackController;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "this$0"    # Lcom/android/launcher3/util/CannedAnimationCoordinator;
    .param p1, "$controller"    # Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .param p2, "success"    # Ljava/lang/Boolean;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->endCurrentAnimation(Z)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 93
    iput-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationFactory:Ljava/util/function/Consumer;

    .line 94
    iput-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "$this$setAnimation_u24lambda_u244_u24lambda_u243":Landroid/view/ViewTreeObserver;
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$a$-apply-CannedAnimationCoordinator$setAnimation$2$1":I
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->launcherLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 100
    :cond_1
    nop

    .line 96
    .end local v0    # "$this$setAnimation_u24lambda_u244_u24lambda_u243":Landroid/view/ViewTreeObserver;
    .end local v1    # "$i$a$-apply-CannedAnimationCoordinator$setAnimation$2$1":I
    nop

    .line 101
    return-void
.end method


# virtual methods
.method public final getPlaybackController(Ljava/lang/Object;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 3
    .param p1, "provider"    # Ljava/lang/Object;

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong controller access from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CannedAnimCoordinator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0
.end method

.method public final recreateAnimation(Ljava/lang/Object;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/Object;

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore recreate request from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CannedAnimCoordinator"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->endCurrentAnimation(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationFactory:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    nop

    .line 168
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    iget-wide v1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 169
    nop

    .line 175
    move-object v1, v0

    .local v1, "$this$recreateAnimation_u24lambda_u2410":Lcom/android/launcher3/anim/PendingAnimation;
    const/4 v2, 0x0

    .line 169
    .local v2, "$i$a$-apply-CannedAnimationCoordinator$recreateAnimation$1":I
    iget-object v3, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationFactory:Ljava/util/function/Consumer;

    if-eqz v3, :cond_2

    invoke-interface {v3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 170
    .end local v1    # "$this$recreateAnimation_u24lambda_u2410":Lcom/android/launcher3/anim/PendingAnimation;
    .end local v2    # "$i$a$-apply-CannedAnimationCoordinator$recreateAnimation$1":I
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    .line 171
    nop

    .line 175
    move-object v1, v0

    .local v1, "$this$recreateAnimation_u24lambda_u2411":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    const/4 v2, 0x0

    .line 171
    .local v2, "$i$a$-apply-CannedAnimationCoordinator$recreateAnimation$2":I
    iget-object v3, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 167
    .end local v1    # "$this$recreateAnimation_u24lambda_u2411":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .end local v2    # "$i$a$-apply-CannedAnimationCoordinator$recreateAnimation$2":I
    iput-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->currentAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 172
    return-void

    .line 165
    :cond_3
    :goto_0
    return-void
.end method

.method public final setAnimation(Ljava/lang/Object;Ljava/util/function/Consumer;J)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/Object;
    .param p2, "factory"    # Ljava/util/function/Consumer;
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to play two animations together, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CannedAnimCoordinator"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->endCurrentAnimation(Z)V

    .line 69
    iget-object v1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    .line 72
    iput-object p2, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationFactory:Ljava/util/function/Consumer;

    .line 73
    iput-wide p3, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationDuration:J

    .line 76
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 77
    .local v1, "anim":Landroid/animation/AnimatorSet;
    nop

    .line 78
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$setAnimation_u24lambda_u242":Landroid/animation/ValueAnimator;
    const/4 v4, 0x0

    .line 79
    .local v4, "$i$a$-apply-CannedAnimationCoordinator$setAnimation$1":I
    sget-object v5, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    invoke-virtual {v3, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    new-instance v5, Lcom/android/launcher3/util/CannedAnimationCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    nop

    .line 78
    .end local v3    # "$this$setAnimation_u24lambda_u242":Landroid/animation/ValueAnimator;
    .end local v4    # "$i$a$-apply-CannedAnimationCoordinator$setAnimation$1":I
    check-cast v2, Landroid/animation/Animator;

    .line 77
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 84
    invoke-static {v1, p3, p4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    .line 85
    .local v2, "controller":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    nop

    .line 86
    new-instance v3, Lcom/android/launcher3/util/CannedAnimationCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/util/CannedAnimationCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/CannedAnimationCoordinator;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-static {v3}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    iget-object v3, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .local v3, "$this$setAnimation_u24lambda_u245":Landroid/view/ViewTreeObserver;
    const/4 v4, 0x0

    .line 106
    .local v4, "$i$a$-apply-CannedAnimationCoordinator$setAnimation$3":I
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    iget-object v5, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->launcherLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 109
    :cond_2
    nop

    .line 105
    .end local v3    # "$this$setAnimation_u24lambda_u245":Landroid/view/ViewTreeObserver;
    .end local v4    # "$i$a$-apply-CannedAnimationCoordinator$setAnimation$3":I
    nop

    .line 111
    iput-boolean v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreatePending:Z

    .line 114
    nop

    .line 115
    move-object v0, v2

    .local v0, "$this$setAnimation_u24lambda_u246":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    const/4 v3, 0x0

    .line 116
    .local v3, "$i$a$-apply-CannedAnimationCoordinator$setAnimation$4":I
    iget-object v4, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    .line 117
    nop

    .line 118
    nop

    .line 116
    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Lcom/android/launcher3/anim/AnimatorPlaybackController;I)V

    .line 120
    nop

    .line 115
    .end local v0    # "$this$setAnimation_u24lambda_u246":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .end local v3    # "$i$a$-apply-CannedAnimationCoordinator$setAnimation$4":I
    nop

    .line 114
    iput-object v2, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreateAnimation(Ljava/lang/Object;)V

    .line 122
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
