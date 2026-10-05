.class public Lcom/android/launcher3/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"


# static fields
.field public static final DEFAULT_LONG_PRESS_TIMEOUT_FACTOR:F = 0.75f


# instance fields
.field private mHasPerformedLongPress:Z

.field private mIsInMouseRightClick:Z

.field private final mListener:Landroid/view/View$OnLongClickListener;

.field private mLongPressTimeoutFactor:F

.field private mPendingCheckForLongPress:Ljava/lang/Runnable;

.field private final mSlop:F

.field private final mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$3NruNadJI9cYj1UMLkUaGqM0kCk(Lcom/android/launcher3/CheckLongPressHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->triggerLongPress()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mp_7yjD5KGcbwOth02pvC4AqD_A(Lcom/android/launcher3/CheckLongPressHelper;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->lambda$onTouchEvent$0(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeoutFactor:F

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 51
    iput-object p2, p0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mSlop:F

    .line 53
    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    .line 166
    :cond_0
    return-void
.end method

.method private static isStylusButtonPressed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 178
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 177
    :goto_0
    return v0
.end method

.method private synthetic lambda$onTouchEvent$0(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "actionUpEvent"    # Landroid/view/MotionEvent;

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 82
    return-void
.end method

.method private postCheckForLongPress()V
    .locals 4

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/CheckLongPressHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    .line 123
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeoutFactor:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 122
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method

.method private triggerLongPress()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    if-nez v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 151
    .end local v0    # "handled":Z
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    .line 153
    .restart local v0    # "handled":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 154
    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 157
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->clearCallbacks()V

    .line 159
    .end local v0    # "handled":Z
    :cond_3
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mIsInMouseRightClick:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 132
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->clearCallbacks()V

    .line 133
    return-void
.end method

.method public hasPerformedLongPress()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 98
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mIsInMouseRightClick:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/CheckLongPressHelper;->mSlop:F

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/launcher3/CheckLongPressHelper;->isStylusButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->triggerLongPress()V

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_1

    .line 95
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 96
    goto :goto_1

    .line 65
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 68
    invoke-static {p1}, Lcom/android/launcher3/util/TouchUtil;->isMouseRightClickDownOrMove(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mIsInMouseRightClick:Z

    .line 70
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->triggerLongPress()V

    .line 71
    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 72
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_3

    .line 77
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 78
    .local v2, "actionUpEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 79
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/CheckLongPressHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/CheckLongPressHelper;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 83
    .end local v2    # "actionUpEvent":Landroid/view/MotionEvent;
    goto :goto_1

    .line 87
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    .line 88
    invoke-static {p1}, Lcom/android/launcher3/CheckLongPressHelper;->isStylusButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->triggerLongPress()V

    .line 107
    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLongPressTimeoutFactor(F)V
    .locals 0
    .param p1, "longPressTimeoutFactor"    # F

    .line 113
    iput p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeoutFactor:F

    .line 114
    return-void
.end method
