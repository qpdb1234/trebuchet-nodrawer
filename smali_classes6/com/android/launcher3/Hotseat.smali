.class public Lcom/android/launcher3/Hotseat;
.super Lcom/android/launcher3/CellLayout;
.source "Hotseat.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# static fields
.field private static final BUBBLE_BAR_ADJUSTMENT_ANIMATION_DURATION_MS:I = 0xfa

.field public static final QSB_CENTER_FACTOR:F = 0.325f


# instance fields
.field private mHasVerticalHotseat:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mQsb:Landroid/view/View;

.field private mSendTouchToWorkspace:Z

.field private mWorkspace:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BnO-IGEprS0SIIFb5OyCGWESa_M(Lcom/android/launcher3/Hotseat;FLcom/android/launcher3/DeviceProfile;Landroid/view/View;)F
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Hotseat;->lambda$resetLayout$0(FLcom/android/launcher3/DeviceProfile;Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->search_container_hotseat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->addView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method static synthetic lambda$adjustForBubbleBar$2(Lcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/DeviceProfile;FLandroid/view/View;)F
    .locals 3
    .param p0, "icons"    # Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "borderSpaceDelta"    # F
    .param p3, "child"    # Landroid/view/View;

    .line 147
    invoke-virtual {p0, p3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 148
    .local v0, "index":I
    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    int-to-float v2, v0

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    return v1
.end method

.method static synthetic lambda$adjustForBubbleBar$3(Landroid/animation/ValueAnimator;ZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/HorizontalInsettableView;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p0, "qsbAnimator"    # Landroid/animation/ValueAnimator;
    .param p1, "isBubbleBarVisible"    # Z
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "horizontalInsettableQsb"    # Lcom/android/launcher3/util/HorizontalInsettableView;
    .param p4, "animation"    # Landroid/animation/ValueAnimator;

    .line 169
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 170
    .local v0, "fraction":F
    if-eqz p1, :cond_0

    .line 171
    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    .line 172
    :cond_0
    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_0
    nop

    .line 173
    .local v1, "insetFraction":F
    invoke-interface {p3, v1}, Lcom/android/launcher3/util/HorizontalInsettableView;->setHorizontalInsets(F)V

    .line 174
    return-void
.end method

.method private synthetic lambda$resetLayout$0(FLcom/android/launcher3/DeviceProfile;Landroid/view/View;)F
    .locals 4
    .param p1, "adjustedBorderSpace"    # F
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "child"    # Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 98
    .local v0, "index":I
    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    .line 99
    .local v1, "borderSpaceDelta":F
    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    int-to-float v3, v0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    return v2
.end method

.method static synthetic lambda$resetLayout$1(Lcom/android/launcher3/util/HorizontalInsettableView;F)V
    .locals 0
    .param p0, "insettableQsb"    # Lcom/android/launcher3/util/HorizontalInsettableView;
    .param p1, "insetFraction"    # F

    .line 106
    invoke-interface {p0, p1}, Lcom/android/launcher3/util/HorizontalInsettableView;->setHorizontalInsets(F)V

    return-void
.end method


# virtual methods
.method public adjustForBubbleBar(Z)V
    .locals 12
    .param p1, "isBubbleBarVisible"    # Z

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 135
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->getHotseatAdjustedBorderSpaceForBubbleBar(Landroid/content/Context;)F

    move-result v1

    .line 136
    .local v1, "adjustedBorderSpace":F
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 137
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 141
    .local v3, "icons":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 142
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    .line 145
    .local v5, "borderSpaceDelta":F
    if-eqz p1, :cond_1

    .line 146
    new-instance v6, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3, v0, v5}, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/DeviceProfile;F)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setTranslationProvider(Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;)V

    goto :goto_0

    .line 151
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setTranslationProvider(Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;)V

    .line 154
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 155
    invoke-virtual {v3, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 156
    .local v7, "child":Landroid/view/View;
    if-eqz p1, :cond_2

    iget v8, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v8, v8

    int-to-float v9, v6

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    goto :goto_2

    :cond_2
    move v8, v2

    .line 157
    .local v8, "tx":F
    :goto_2
    instance-of v9, v7, Lcom/android/launcher3/Reorderable;

    if-eqz v9, :cond_3

    .line 158
    move-object v9, v7

    check-cast v9, Lcom/android/launcher3/Reorderable;

    invoke-interface {v9}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v9

    .line 159
    .local v9, "mtd":Lcom/android/launcher3/util/MultiTranslateDelegate;
    nop

    .line 160
    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v10

    .line 159
    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 161
    .end local v9    # "mtd":Lcom/android/launcher3/util/MultiTranslateDelegate;
    goto :goto_3

    .line 162
    :cond_3
    sget-object v9, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v8, v10, v11

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 154
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "tx":F
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 165
    .end local v6    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    instance-of v6, v2, Lcom/android/launcher3/util/HorizontalInsettableView;

    if-eqz v6, :cond_5

    .line 166
    check-cast v2, Lcom/android/launcher3/util/HorizontalInsettableView;

    .line 167
    .local v2, "horizontalInsettableQsb":Lcom/android/launcher3/util/HorizontalInsettableView;
    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 168
    .local v6, "qsbAnimator":Landroid/animation/ValueAnimator;
    new-instance v7, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6, p1, v0, v2}, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda1;-><init>(Landroid/animation/ValueAnimator;ZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/HorizontalInsettableView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 175
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 177
    .end local v2    # "horizontalInsettableQsb":Lcom/android/launcher3/util/HorizontalInsettableView;
    .end local v6    # "qsbAnimator":Landroid/animation/ValueAnimator;
    :cond_5
    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 178
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getCellXFromOrder(I)I
    .locals 1
    .param p1, "rank"    # I

    .line 75
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public getCellYFromOrder(I)I
    .locals 2
    .param p1, "rank"    # I

    .line 82
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIconsAlpha()F
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getQsb()Landroid/view/View;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 219
    .local v0, "yThreshold":I
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Workspace;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/Hotseat;->mSendTouchToWorkspace:Z

    .line 221
    return v1

    .line 223
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 253
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->onLayout(ZIIII)V

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 257
    .local v0, "qsbMeasuredWidth":I
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 258
    .local v1, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v2, :cond_1

    .line 259
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    .line 260
    .local v2, "qsbSpace":I
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getPaddingRight()I

    move-result v3

    sub-int v3, p4, v3

    add-int/2addr v3, v2

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, p2

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    :goto_0
    move v2, v3

    .line 262
    .local v2, "left":I
    goto :goto_1

    .line 263
    .end local v2    # "left":I
    :cond_1
    sub-int v2, p4, p2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 265
    .restart local v2    # "left":I
    :goto_1
    add-int v3, v2, v0

    .line 267
    .local v3, "right":I
    sub-int v4, p5, p3

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getQsbOffsetY()I

    move-result v5

    sub-int/2addr v4, v5

    .line 268
    .local v4, "bottom":I
    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    sub-int v5, v4, v5

    .line 269
    .local v5, "top":I
    iget-object v6, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    invoke-virtual {v6, v2, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 270
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 244
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->onMeasure(II)V

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 247
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    .line 248
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 247
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 249
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 229
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mSendTouchToWorkspace:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 231
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 234
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/launcher3/Hotseat;->mSendTouchToWorkspace:Z

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 239
    .end local v0    # "action":I
    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetLayout(Z)V
    .locals 9
    .param p1, "hasVerticalHotseat"    # Z

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 87
    .local v0, "activityContext":Lcom/android/launcher3/views/ActivityContext;
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->isBubbleBarEnabled()Z

    move-result v1

    .line 88
    .local v1, "bubbleBarEnabled":Z
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->hasBubbles()Z

    move-result v2

    .line 89
    .local v2, "hasBubbles":Z
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->removeAllViewsInLayout()V

    .line 90
    iput-boolean p1, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    .line 91
    iget-object v3, p0, Lcom/android/launcher3/Hotseat;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 93
    .local v3, "dp":Lcom/android/launcher3/DeviceProfile;
    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DeviceProfile;->getHotseatAdjustedBorderSpaceForBubbleBar(Landroid/content/Context;)F

    move-result v4

    .line 95
    .local v4, "adjustedBorderSpace":F
    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v4, v3}, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/Hotseat;FLcom/android/launcher3/DeviceProfile;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setTranslationProvider(Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;)V

    .line 101
    iget-object v5, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    instance-of v6, v5, Lcom/android/launcher3/util/HorizontalInsettableView;

    if-eqz v6, :cond_1

    .line 102
    check-cast v5, Lcom/android/launcher3/util/HorizontalInsettableView;

    .line 103
    .local v5, "insettableQsb":Lcom/android/launcher3/util/HorizontalInsettableView;
    iget v6, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v6, v6

    iget v7, v3, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 106
    .local v6, "insetFraction":F
    iget-object v7, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    new-instance v8, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda3;

    invoke-direct {v8, v5, v6}, Lcom/android/launcher3/Hotseat$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/util/HorizontalInsettableView;F)V

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 107
    .end local v5    # "insettableQsb":Lcom/android/launcher3/util/HorizontalInsettableView;
    .end local v6    # "insetFraction":F
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setTranslationProvider(Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;)V

    .line 110
    iget-object v6, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    instance-of v7, v6, Lcom/android/launcher3/util/HorizontalInsettableView;

    if-eqz v7, :cond_1

    .line 111
    check-cast v6, Lcom/android/launcher3/util/HorizontalInsettableView;

    invoke-interface {v6, v5}, Lcom/android/launcher3/util/HorizontalInsettableView;->setHorizontalInsets(F)V

    .line 116
    .end local v4    # "adjustedBorderSpace":F
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Hotseat;->resetCellSize(Lcom/android/launcher3/DeviceProfile;)V

    .line 117
    const/4 v4, 0x1

    if-eqz p1, :cond_2

    .line 118
    iget v5, v3, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/Hotseat;->setGridSize(II)V

    goto :goto_1

    .line 120
    :cond_2
    iget v5, v3, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {p0, v5, v4}, Lcom/android/launcher3/Hotseat;->setGridSize(II)V

    .line 122
    :goto_1
    return-void
.end method

.method public setIconsAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 277
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 183
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 185
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 188
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/4 v2, 0x3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 190
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 192
    :cond_0
    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 193
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 197
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 198
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 199
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 202
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    .line 203
    .local v2, "padding":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/launcher3/Hotseat;->setPadding(IIII)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 206
    return-void
.end method

.method public setQsbAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 283
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 284
    return-void
.end method

.method public setWorkspace(Lcom/android/launcher3/Workspace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace<",
            "*>;)V"
        }
    .end annotation

    .line 209
    .local p1, "w":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    iput-object p1, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Hotseat;->setCellLayoutContainer(Lcom/android/launcher3/CellLayoutContainer;)V

    .line 211
    return-void
.end method
