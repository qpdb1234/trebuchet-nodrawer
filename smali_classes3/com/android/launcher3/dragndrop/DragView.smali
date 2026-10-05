.class public abstract Lcom/android/launcher3/dragndrop/DragView;
.super Landroid/widget/FrameLayout;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# static fields
.field public static final VIEW_ZOOM_DURATION:I = 0x96


# instance fields
.field protected final mActivity:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAnimatedShiftX:I

.field private mAnimatedShiftY:I

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBlurSizeOutline:I

.field private final mContent:Landroid/view/View;

.field private mContentViewInParentViewIndex:I

.field private mContentViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mContentViewParent:Landroid/view/ViewGroup;

.field private final mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDragRegion:Landroid/graphics/Rect;

.field private final mEndScale:F

.field private mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasDragOffset:Z

.field private mHasDrawn:Z

.field private final mHeight:I

.field private final mInitialScale:F

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

.field private mOnScaleAnimEndCallback:Ljava/lang/Runnable;

.field private mOnShiftAnimEndCallback:Ljava/lang/Runnable;

.field protected final mRegistrationX:I

.field protected final mRegistrationY:I

.field final mScaleAnim:Landroid/animation/ValueAnimator;

.field private mScaleAnimStarted:Z

.field protected final mScaleOnDrop:F

.field private mScaledMaskPath:Landroid/graphics/Path;

.field final mShiftAnim:Landroid/animation/ValueAnimator;

.field private mShiftAnimStarted:Z

.field protected final mTempLoc:[I

.field private mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

.field private mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

.field private final mWidth:I


# direct methods
.method public static synthetic $r8$lambda$FwGXOF8wM-fb9c5AVCDqTehb4PQ(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->lambda$setItemInfo$3(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f7F6Pr-PbH44hQYilpqT8XACbWU(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->lambda$setItemInfo$2(Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o66Ko6BcUz73a_iMulnJ0XWpa3g(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->lambda$setItemInfo$1(Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oyPDvAQABzw48Kg2_09cN0HR7W8(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$y27e5ppiMy0OLBZBqTcgZgNiMsQ(Lcom/android/launcher3/dragndrop/DragView;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->lambda$new$0(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmOnScaleAnimEndCallback(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnScaleAnimEndCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnShiftAnimEndCallback(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnShiftAnimEndCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimatedShiftX(Lcom/android/launcher3/dragndrop/DragView;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimatedShiftY(Lcom/android/launcher3/dragndrop/DragView;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScaleAnimStarted(Lcom/android/launcher3/dragndrop/DragView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnimStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShiftAnimStarted(Lcom/android/launcher3/dragndrop/DragView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mShiftAnimStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyTranslation(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFFF)V
    .locals 10
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "registrationX"    # I
    .param p4, "registrationY"    # I
    .param p5, "initialScale"    # F
    .param p6, "scaleOnDrop"    # F
    .param p7, "finalScaleDps"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            "IIFFF)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    .local p1, "launcher":Landroid/content/Context;, "TT;"
    invoke-static {p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->getViewFromDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v2

    .line 123
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 122
    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/dragndrop/DragView;-><init>(Landroid/content/Context;Landroid/view/View;IIIIFFF)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIIIFFF)V
    .locals 5
    .param p2, "content"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "registrationX"    # I
    .param p6, "registrationY"    # I
    .param p7, "initialScale"    # F
    .param p8, "scaleOnDrop"    # F
    .param p9, "finalScaleDps"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "IIIIFFF)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    .local p1, "activity":Landroid/content/Context;, "TT;"
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    .line 89
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTempLoc:[I

    .line 91
    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    .line 146
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    .line 147
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    .line 149
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    .line 150
    iput p3, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    .line 151
    iput p4, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 153
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    .line 155
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    .line 156
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v2}, Lcom/android/launcher3/dragndrop/DragView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 163
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setClipChildren(Z)V

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setClipToPadding(Z)V

    .line 167
    :cond_2
    int-to-float v2, p3

    add-float/2addr v2, p9

    int-to-float v3, p3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mEndScale:F

    .line 170
    invoke-virtual {p0, p7}, Lcom/android/launcher3/dragndrop/DragView;->setScaleX(F)V

    .line 171
    invoke-virtual {p0, p7}, Lcom/android/launcher3/dragndrop/DragView;->setScaleY(F)V

    .line 174
    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnim:Landroid/animation/ValueAnimator;

    .line 175
    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 176
    new-instance v3, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p7}, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/dragndrop/DragView;F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    new-instance v3, Lcom/android/launcher3/dragndrop/DragView$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/dragndrop/DragView$1;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mShiftAnim:Landroid/animation/ValueAnimator;

    .line 200
    new-instance v2, Lcom/android/launcher3/dragndrop/DragView$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/dragndrop/DragView$2;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 217
    iput p5, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    .line 218
    iput p6, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    .line 220
    iput p7, p0, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    .line 221
    iput p8, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleOnDrop:F

    .line 224
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/dragndrop/DragView;->measure(II)V

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$dimen;->blur_size_medium_outline:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBlurSizeOutline:I

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$dimen;->drag_elevation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setElevation(F)V

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setWillNotDraw(Z)V

    .line 229
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyTranslation()V
    .locals 2

    .line 487
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationX(F)V

    .line 488
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationY(F)V

    .line 489
    return-void
.end method

.method private static getViewFromDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 616
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 617
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    return-object v0
.end method

.method private synthetic lambda$new$0(FLandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "initialScale"    # F
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 177
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 178
    .local v0, "value":F
    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mEndScale:F

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setScaleX(F)V

    .line 179
    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mEndScale:F

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setScaleY(F)V

    .line 180
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 183
    :cond_0
    return-void
.end method

.method private synthetic lambda$setItemInfo$1(Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "mask"    # Landroid/graphics/Path;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 302
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->removeAllViewsInLayout()V

    .line 306
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 308
    .local v0, "filter":Landroid/graphics/ColorFilter;
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 309
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 310
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 312
    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->invalidate()V

    .line 313
    return-void
.end method

.method private synthetic lambda$setItemInfo$2(Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "mask"    # Landroid/graphics/Path;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 299
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setItemInfo$3(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 12
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 249
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    .line 250
    .local v0, "w":I
    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    .line 251
    .local v1, "h":I
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, p1, v0, v1, v3}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ)Landroid/util/Pair;

    move-result-object v2

    .line 253
    .local v2, "fullDrawable":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v2, :cond_4

    .line 254
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 255
    .local v3, "adaptiveIcon":Landroid/graphics/drawable/AdaptiveIconDrawable;
    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$dimen;->blur_size_medium_outline:I

    .line 256
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    .line 258
    .local v4, "blurMargin":I
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 259
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 262
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-static {v7, v5}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadgeBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 265
    iget-object v7, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v7

    .line 267
    .local v7, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :try_start_0
    invoke-virtual {v7}, Lcom/android/launcher3/icons/LauncherIcons;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v11, -0x1000000

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v9, v11, v11, v11}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v8

    invoke-static {v5, v8}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 274
    .end local v7    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 275
    .local v7, "shrunkBounds":Landroid/graphics/Rect;
    const v8, 0x3f7ae148    # 0.98f

    invoke-static {v7, v8}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 276
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 277
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v8

    .line 279
    .local v8, "mask":Landroid/graphics/Path;
    new-instance v9, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    int-to-float v10, v0

    .line 280
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-direct {v9, p0, v10}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;-><init>(Landroid/view/View;F)V

    iput-object v9, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    .line 281
    new-instance v9, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    int-to-float v10, v1

    .line 282
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-direct {v9, p0, v10}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;-><init>(Landroid/view/View;F)V

    iput-object v9, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    .line 284
    nop

    .line 285
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 286
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 284
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->inset(II)V

    .line 288
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    .line 289
    if-nez v9, :cond_1

    .line 290
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v9, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    .line 292
    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 293
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    .line 294
    if-nez v9, :cond_2

    .line 295
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v9, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    .line 297
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 299
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0, v8, p1}, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v6, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 265
    .end local v8    # "mask":Landroid/graphics/Path;
    .local v7, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :catchall_0
    move-exception v6

    if-eqz v7, :cond_3

    :try_start_1
    invoke-virtual {v7}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v8

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v6

    .line 315
    .end local v3    # "adaptiveIcon":Landroid/graphics/drawable/AdaptiveIconDrawable;
    .end local v4    # "blurMargin":I
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_4
    :goto_1
    return-void
.end method

.method public static removeAllViews(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 4
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;

    .line 625
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 628
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 629
    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 630
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v3, :cond_0

    .line 631
    invoke-virtual {v0, v2}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 628
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 634
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public animateShift(II)V
    .locals 2
    .param p1, "shiftX"    # I
    .param p2, "shiftY"    # I

    .line 466
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mShiftAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :cond_1
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    .line 472
    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    .line 473
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    .line 474
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mShiftAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView$3;-><init>(Lcom/android/launcher3/dragndrop/DragView;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 483
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mShiftAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 484
    return-void
.end method

.method public abstract animateTo(IILjava/lang/Runnable;I)V
.end method

.method public cancelAnimation()V
    .locals 1

    .line 427
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 430
    :cond_0
    return-void
.end method

.method public containsAppWidgetHostView()Z
    .locals 1

    .line 569
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    instance-of v0, v0, Landroid/appwidget/AppWidgetHostView;

    return v0
.end method

.method public crossFadeContent(Landroid/graphics/drawable/Drawable;I)V
    .locals 7
    .param p1, "crossFadeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I

    .line 372
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/dragndrop/DragView;->getViewFromDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v0

    .line 379
    .local v0, "newContent":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 380
    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 381
    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 382
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/launcher3/dragndrop/DragView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 384
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 385
    .local v1, "anim":Landroid/animation/AnimatorSet;
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 386
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v3

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 387
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    sget-object v3, Lcom/android/app/animation/Interpolators;->DECELERATE_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 388
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 389
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public detachContentView(Z)V
    .locals 6
    .param p1, "reattachToPreviousParent"    # Z

    .line 498
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    if-ltz v0, :cond_1

    .line 499
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 500
    .local v0, "picture":Landroid/graphics/Picture;
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 501
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 502
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 503
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 505
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    .line 506
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 505
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 507
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getClipToOutline()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setClipToOutline(Z)V

    .line 508
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 509
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/dragndrop/DragView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 511
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->removeViewInLayout(Landroid/view/View;)V

    .line 512
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    if-eqz p1, :cond_0

    .line 515
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 517
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    .line 518
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    .line 520
    .end local v0    # "picture":Landroid/graphics/Picture;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 356
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 362
    .local v0, "cnt":I
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 363
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 364
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->-$$Nest$fgetmValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->-$$Nest$fgetmValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 365
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 367
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 369
    .end local v0    # "cnt":I
    :cond_0
    return-void
.end method

.method public getBlurSizeOutline()I
    .locals 1

    .line 537
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBlurSizeOutline:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 555
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getContentViewParent()Landroid/view/ViewGroup;
    .locals 1

    .line 564
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDragRegion()Landroid/graphics/Rect;
    .locals 1

    .line 351
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDragRegionHeight()I
    .locals 1

    .line 335
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getDragRegionWidth()I
    .locals 1

    .line 331
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getEndScale()F
    .locals 1

    .line 545
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mEndScale:F

    return v0
.end method

.method public getHasDragOffset()Z
    .locals 1

    .line 343
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDragOffset:Z

    return v0
.end method

.method public getInitialScale()F
    .locals 1

    .line 541
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    return v0
.end method

.method public hasDrawn()Z
    .locals 1

    .line 392
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 550
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isScaleAnimationFinished()Z
    .locals 1

    .line 434
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnimStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShiftAnimationFinished()Z
    .locals 1

    .line 439
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mShiftAnimStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mShiftAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public move(II)V
    .locals 2
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .line 449
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->animateToPos(F)V

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->animateToPos(F)V

    .line 454
    :cond_0
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    .line 455
    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    .line 456
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    .line 457
    return-void
.end method

.method public onDragStart()V
    .locals 1

    .line 322
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 323
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 327
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 328
    return-void
.end method

.method public remove()V
    .locals 1

    .line 531
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 534
    :cond_0
    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 347
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 348
    return-void
.end method

.method public setHasDragOffset(Z)V
    .locals 0
    .param p1, "hasDragOffset"    # Z

    .line 339
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDragOffset:Z

    .line 340
    return-void
.end method

.method public setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 248
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method public setOnScaleAnimEndCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 233
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnScaleAnimEndCallback:Ljava/lang/Runnable;

    .line 234
    return-void
.end method

.method public setOnShiftAnimEndCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 238
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnShiftAnimEndCallback:Ljava/lang/Runnable;

    .line 239
    return-void
.end method

.method public show(II)V
    .locals 3
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .line 402
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 405
    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    .line 406
    .local v0, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getHasDragOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 421
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->move(II)V

    .line 423
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnim:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->post(Ljava/lang/Runnable;)Z

    .line 424
    return-void
.end method
