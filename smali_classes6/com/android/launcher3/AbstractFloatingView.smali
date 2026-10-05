.class public abstract Lcom/android/launcher3/AbstractFloatingView;
.super Landroid/widget/LinearLayout;
.source "AbstractFloatingView.java"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/AbstractFloatingView$FloatingViewType;
    }
.end annotation


# static fields
.field public static final TYPE_ACCESSIBLE:I = 0x3bfcb7

.field public static final TYPE_ACTION_POPUP:I = 0x2

.field public static final TYPE_ADD_TO_HOME_CONFIRMATION:I = 0x80000

.field public static final TYPE_ALL:I = 0x7fffff

.field public static final TYPE_ALL_APPS_EDU:I = 0x200

.field public static final TYPE_ALL_EXCEPT_ON_BOARD_POPUP:I = 0x3fffdf

.field public static final TYPE_DISCOVERY_BOUNCE:I = 0x40

.field public static final TYPE_DRAG_DROP_POPUP:I = 0x400

.field public static final TYPE_FOLDER:I = 0x1

.field public static final TYPE_ICON_SURFACE:I = 0x2000

.field public static final TYPE_LISTENER:I = 0x100

.field public static final TYPE_ON_BOARD_POPUP:I = 0x20

.field public static final TYPE_OPTIONS_POPUP:I = 0x1000

.field public static final TYPE_OPTIONS_POPUP_DIALOG:I = 0x4000

.field public static final TYPE_PIN_IME_POPUP:I = 0x400000

.field public static final TYPE_PIN_WIDGET_FROM_EXTERNAL_POPUP:I = 0x8000

.field public static final TYPE_REBIND_SAFE:I = 0x576274

.field public static final TYPE_SNACKBAR:I = 0x80

.field public static final TYPE_STATUS_BAR_SWIPE_DOWN_DISALLOW:I = 0xc7c

.field public static final TYPE_TASKBAR_ALL_APPS:I = 0x40000

.field public static final TYPE_TASKBAR_EDUCATION_DIALOG:I = 0x20000

.field public static final TYPE_TASKBAR_OVERLAYS:I = 0x60000

.field public static final TYPE_TASKBAR_OVERLAY_PROXY:I = 0x100000

.field public static final TYPE_TASKBAR_PINNING_POPUP:I = 0x200000

.field public static final TYPE_TASK_MENU:I = 0x800

.field public static final TYPE_TOUCH_CONTROLLER_NO_INTERCEPT:I = 0x79febf

.field public static final TYPE_WIDGETS_BOTTOM_SHEET:I = 0x4

.field public static final TYPE_WIDGETS_EDUCATION_DIALOG:I = 0x10000

.field public static final TYPE_WIDGETS_FULL_SHEET:I = 0x10

.field public static final TYPE_WIDGET_RESIZE_FRAME:I = 0x8


# instance fields
.field protected mIsOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public static closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;

    .line 301
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    .line 302
    return-void
.end method

.method public static closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "animate"    # Z

    .line 296
    const v0, 0x7fffff

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 297
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->finishAutoCancelActionMode()Z

    .line 298
    return-void
.end method

.method public static closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;I)V
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I

    .line 312
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 313
    return-void
.end method

.method public static closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V
    .locals 2
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "animate"    # Z
    .param p2, "type"    # I

    .line 306
    const v0, 0x7fffff

    not-int v1, p2

    and-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 307
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->finishAutoCancelActionMode()Z

    .line 308
    return-void
.end method

.method public static closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V
    .locals 2
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I

    .line 273
    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 274
    .local v0, "view":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_0

    .line 275
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 277
    :cond_0
    return-void
.end method

.method public static closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V
    .locals 5
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "animate"    # Z
    .param p2, "type"    # I

    .line 281
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 284
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 285
    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 286
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v3, :cond_0

    .line 287
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/AbstractFloatingView;

    .line 288
    .local v3, "abs":Lcom/android/launcher3/AbstractFloatingView;
    invoke-virtual {v3, p2}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    invoke-virtual {v3, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 284
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "abs":Lcom/android/launcher3/AbstractFloatingView;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 293
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static getAnyView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "I)TT;"
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->getView(Lcom/android/launcher3/views/ActivityContext;IZ)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "I)TT;"
        }
    .end annotation

    .line 234
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->getView(Lcom/android/launcher3/views/ActivityContext;IZ)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    return-object v0
.end method

.method public static getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;

    .line 316
    const v0, 0x7fffff

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    return-object v0
.end method

.method public static getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I

    .line 321
    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    return-object v0
.end method

.method private static getView(Lcom/android/launcher3/views/ActivityContext;IZ)Lcom/android/launcher3/AbstractFloatingView;
    .locals 6
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I
    .param p2, "mustBeOpen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "IZ)TT;"
        }
    .end annotation

    .line 255
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 256
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 259
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 260
    invoke-virtual {v0, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 261
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v4, :cond_2

    .line 262
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/AbstractFloatingView;

    .line 263
    .local v4, "view":Lcom/android/launcher3/AbstractFloatingView;
    invoke-virtual {v4, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v4}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    :cond_1
    return-object v4

    .line 259
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "view":Lcom/android/launcher3/AbstractFloatingView;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 268
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method public static hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "type"    # I

    .line 241
    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0
    .param p1, "distanceToMove"    # F
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "target"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 181
    return-void
.end method

.method protected announceAccessibilityChanges()V
    .locals 4

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getAccessibilityTarget()Landroid/util/Pair;

    move-result-object v0

    .line 206
    .local v0, "targetInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x20

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 212
    iget-boolean v1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getAccessibilityInitialFocusView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    .line 217
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/BaseDragLayer;->sendAccessibilityEvent(I)V

    .line 218
    return-void

    .line 207
    :cond_2
    :goto_0
    return-void
.end method

.method public canHandleBack()Z
    .locals 1

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public canInterceptEventsInSystemGestureRegion()Z
    .locals 1

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public final close(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 166
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    and-int/2addr p1, v0

    .line 167
    nop

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->handleClose(Z)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    .line 172
    return-void
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 0

    .line 226
    return-object p0
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract handleClose(Z)V
.end method

.method protected abstract isOfType(I)Z
.end method

.method public final isOpen()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    return v0
.end method

.method public onBackInvoked()V
    .locals 1

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 197
    return-void
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 162
    const/4 v0, 0x1

    return v0
.end method
