.class public Lcom/android/launcher3/views/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;
    }
.end annotation


# static fields
.field private static final STATUS_BAR_COLOR_FORCE_UPDATE_THRESHOLD:F = 0.9f


# instance fields
.field private mBackgroundColor:I

.field private mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

.field private mHeaderScale:F

.field private mIsVisible:Z

.field private mLastDispatchedOpaqueness:Z

.field private final mOpaquenessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUiController:Lcom/android/launcher3/util/SystemUiController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    .line 47
    iput-boolean v1, p0, Lcom/android/launcher3/views/ScrimView;->mIsVisible:Z

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/views/ScrimView;->mHeaderScale:F

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ScrimView;->setFocusable(Z)V

    .line 54
    return-void
.end method

.method private dispatchVisibilityListenersIfNeeded()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->isFullyOpaque()Z

    move-result v0

    .line 134
    .local v0, "fullyOpaque":Z
    iget-boolean v1, p0, Lcom/android/launcher3/views/ScrimView;->mLastDispatchedOpaqueness:Z

    if-ne v1, v0, :cond_0

    .line 135
    return-void

    .line 137
    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher3/views/ScrimView;->mLastDispatchedOpaqueness:Z

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private getSystemUiController()Lcom/android/launcher3/util/SystemUiController;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    return-object v0
.end method

.method private isScrimDark()Z
    .locals 4

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    .line 156
    nop

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 156
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScrimView must have a ColorDrawable background, this one has: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSysUiColors()V
    .locals 6

    .line 121
    const v0, 0x3f666666    # 0.9f

    .line 122
    .local v0, "threshold":F
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getAlpha()F

    move-result v1

    const v4, 0x3f666666    # 0.9f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    .line 124
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v1, v5

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 125
    .local v1, "forceChange":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->isScrimDark()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    goto :goto_1

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 130
    :goto_1
    return-void
.end method


# virtual methods
.method public addOpaquenessListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isFullyOpaque()Z
    .locals 2

    .line 92
    iget-boolean v0, p0, Lcom/android/launcher3/views/ScrimView;->mIsVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

    if-eqz v0, :cond_0

    .line 99
    iget v1, p0, Lcom/android/launcher3/views/ScrimView;->mHeaderScale:F

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;->drawOnScrimWithScale(Landroid/graphics/Canvas;F)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .param p1, "alpha"    # I

    .line 67
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->updateSysUiColors()V

    .line 68
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->dispatchVisibilityListenersIfNeeded()V

    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    return v0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 87
    iput-boolean p1, p0, Lcom/android/launcher3/views/ScrimView;->mIsVisible:Z

    .line 88
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->dispatchVisibilityListenersIfNeeded()V

    .line 89
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 114
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 115
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->updateSysUiColors()V

    .line 116
    return-void
.end method

.method public removeOpaquenessListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 74
    iput p1, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    .line 75
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->updateSysUiColors()V

    .line 76
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->dispatchVisibilityListenersIfNeeded()V

    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    return-void
.end method

.method public setDrawingController(Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;)V
    .locals 1
    .param p1, "drawingController"    # Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

    if-eq v0, p1, :cond_0

    .line 165
    iput-object p1, p0, Lcom/android/launcher3/views/ScrimView;->mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->invalidate()V

    .line 168
    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method public setScrimHeaderScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 105
    iget v0, p0, Lcom/android/launcher3/views/ScrimView;->mHeaderScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    .local v0, "hasChanged":Z
    :goto_0
    iput p1, p0, Lcom/android/launcher3/views/ScrimView;->mHeaderScale:F

    .line 107
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->invalidate()V

    .line 110
    :cond_1
    return-void
.end method
