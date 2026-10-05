.class public abstract Lcom/android/launcher3/popup/ArrowPopup;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "ArrowPopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/AbstractFloatingView;"
    }
.end annotation


# static fields
.field private static final CLOSE_CHILD_FADE_DURATION_U:I = 0x53

.field private static final CLOSE_CHILD_FADE_START_DELAY_U:I = 0x96

.field private static final CLOSE_DURATION_U:I = 0xe9

.field private static final CLOSE_FADE_DURATION_U:I = 0x53

.field private static final CLOSE_FADE_START_DELAY_U:I = 0x96

.field private static final OPEN_CHILD_FADE_DURATION_U:I = 0x53

.field private static final OPEN_CHILD_FADE_START_DELAY_U:I = 0x0

.field private static final OPEN_DURATION_U:I = 0xc8

.field private static final OPEN_FADE_DURATION_U:I = 0x53

.field private static final OPEN_FADE_START_DELAY_U:I = 0x0

.field private static final OPEN_OVERSHOOT_DURATION_U:I = 0xc8


# instance fields
.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mArrow:Landroid/view/View;

.field protected mArrowColor:I

.field protected final mArrowHeight:I

.field protected final mArrowOffsetHorizontal:I

.field protected final mArrowOffsetVertical:I

.field protected final mArrowPointRadius:I

.field protected final mArrowWidth:I

.field protected final mChildContainerMargin:I

.field protected mCloseChildFadeDuration:I

.field protected mCloseChildFadeStartDelay:I

.field protected mCloseDuration:I

.field protected mCloseFadeDuration:I

.field protected mCloseFadeStartDelay:I

.field protected final mColorIds:[I

.field protected mDeferContainerRemoval:Z

.field protected final mElevation:F

.field protected mGravity:I

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected mIsAboveIcon:Z

.field protected mIsArrowRotated:Z

.field protected mIsLeftAligned:Z

.field protected final mIsRtl:Z

.field private final mIterateChildrenTag:Ljava/lang/String;

.field private mOnCloseCallbacks:Lcom/android/launcher3/util/RunnableList;

.field protected mOpenChildFadeDuration:I

.field protected mOpenChildFadeStartDelay:I

.field protected mOpenCloseAnimator:Landroid/animation/AnimatorSet;

.field protected mOpenDuration:I

.field protected mOpenFadeDuration:I

.field protected mOpenFadeStartDelay:I

.field protected final mOutlineRadius:F

.field private final mRoundedBottom:Landroid/graphics/drawable/GradientDrawable;

.field private final mRoundedTop:Landroid/graphics/drawable/GradientDrawable;

.field protected final mTempRect:Landroid/graphics/Rect;

.field protected shouldScaleArrow:Z


# direct methods
.method public static synthetic $r8$lambda$WtpZnjRMS6Du53xJXJdytmaxzsI(Lcom/android/launcher3/popup/ArrowPopup;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->lambda$assignMarginsAndBackgrounds$0(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 184
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 180
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 136
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/16 v2, 0x114

    iput v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenDuration:I

    .line 71
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenFadeStartDelay:I

    .line 72
    const/16 v3, 0x26

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenFadeDuration:I

    .line 73
    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenChildFadeStartDelay:I

    .line 74
    const/16 v3, 0x4c

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenChildFadeDuration:I

    .line 76
    const/16 v3, 0xc8

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseDuration:I

    .line 77
    const/16 v3, 0x8c

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeStartDelay:I

    .line 78
    const/16 v4, 0x32

    iput v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeDuration:I

    .line 79
    iput v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseChildFadeStartDelay:I

    .line 80
    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseChildFadeDuration:I

    .line 95
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    .line 117
    iput-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->shouldScaleArrow:Z

    .line 118
    iput-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsArrowRotated:Z

    .line 123
    new-instance v3, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v3}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOnCloseCallbacks:Lcom/android/launcher3/util/RunnableList;

    .line 137
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v3

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOutlineRadius:F

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$dimen;->deep_shortcuts_elevation:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mElevation:F

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 145
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/launcher3/R$color;->popup_color_background:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 146
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    .line 147
    sget v6, Lcom/android/launcher3/R$dimen;->popup_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mChildContainerMargin:I

    .line 148
    sget v6, Lcom/android/launcher3/R$dimen;->popup_arrow_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    .line 149
    sget v7, Lcom/android/launcher3/R$dimen;->popup_arrow_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    .line 150
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    .line 151
    new-instance v9, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v9, v6, v7}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    sget v7, Lcom/android/launcher3/R$dimen;->popup_arrow_vertical_offset:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    .line 153
    sget v7, Lcom/android/launcher3/R$dimen;->popup_arrow_horizontal_center_offset:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v8, 0x2

    div-int/2addr v6, v8

    sub-int/2addr v7, v6

    iput v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    .line 155
    sget v6, Lcom/android/launcher3/R$dimen;->popup_arrow_corner_radius:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowPointRadius:I

    .line 157
    sget v6, Lcom/android/launcher3/R$dimen;->popup_smaller_radius:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 158
    .local v6, "smallerRadius":I
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedTop:Landroid/graphics/drawable/GradientDrawable;

    .line 159
    sget v9, Lcom/android/launcher3/R$attr;->popupColorPrimary:I

    invoke-static {v1, v9}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v9

    .line 160
    .local v9, "popupPrimaryColor":I
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 161
    const/16 v10, 0x8

    new-array v11, v10, [F

    aput v3, v11, v2

    const/4 v12, 0x1

    aput v3, v11, v12

    aput v3, v11, v8

    const/4 v13, 0x3

    aput v3, v11, v13

    int-to-float v14, v6

    const/4 v15, 0x4

    aput v14, v11, v15

    int-to-float v14, v6

    const/16 v16, 0x5

    aput v14, v11, v16

    int-to-float v14, v6

    const/16 v17, 0x6

    aput v14, v11, v17

    int-to-float v14, v6

    const/16 v18, 0x7

    aput v14, v11, v18

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 164
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedBottom:Landroid/graphics/drawable/GradientDrawable;

    .line 165
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 166
    new-array v10, v10, [F

    int-to-float v11, v6

    aput v11, v10, v2

    int-to-float v2, v6

    aput v2, v10, v12

    int-to-float v2, v6

    aput v2, v10, v8

    int-to-float v2, v6

    aput v2, v10, v13

    aput v3, v10, v15

    aput v3, v10, v16

    aput v3, v10, v17

    aput v3, v10, v18

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->popup_container_iterate_children:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIterateChildrenTag:Ljava/lang/String;

    .line 171
    check-cast v4, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->canUseMultipleShadesForPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    sget v2, Lcom/android/launcher3/R$color;->popup_shade_first:I

    sget v3, Lcom/android/launcher3/R$color;->popup_shade_second:I

    sget v4, Lcom/android/launcher3/R$color;->popup_shade_third:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mColorIds:[I

    goto :goto_0

    .line 175
    :cond_0
    sget v2, Lcom/android/launcher3/R$color;->popup_color_background:I

    filled-new-array {v2}, [I

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mColorIds:[I

    .line 177
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/popup/ArrowPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/popup/ArrowPopup;

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->announceAccessibilityChanges()V

    return-void
.end method

.method private fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V
    .locals 13
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "alphaValues"    # [F
    .param p3, "startDelay"    # J
    .param p5, "duration"    # J
    .param p7, "out"    # Landroid/animation/AnimatorSet;

    .line 581
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    move-object v8, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v9, v0

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_3

    .line 582
    move-object v10, p1

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 583
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v11, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 584
    move-object v12, p0

    invoke-virtual {p0, v11}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutContainer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    move-object v1, v11

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/popup/ArrowPopup;->fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V

    .line 586
    goto :goto_2

    .line 588
    :cond_0
    move-object v0, v11

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_1
    if-ltz v0, :cond_1

    .line 589
    move-object v1, v11

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 590
    .local v1, "childView":Landroid/view/View;
    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 591
    sget-object v2, Lcom/android/launcher3/popup/ArrowPopup;->ALPHA:Landroid/util/Property;

    invoke-static {v1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 592
    .local v2, "childFade":Landroid/animation/ValueAnimator;
    move-wide/from16 v3, p3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 593
    move-wide/from16 v5, p5

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 594
    sget-object v7, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 596
    move-object/from16 v7, p7

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 588
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "childFade":Landroid/animation/ValueAnimator;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    goto :goto_2

    .line 583
    .end local v0    # "j":I
    :cond_2
    move-object v12, p0

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    .line 581
    .end local v11    # "view":Landroid/view/View;
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_3
    move-object v12, p0

    move-object v10, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    .line 600
    .end local v9    # "i":I
    return-void
.end method

.method private varargs getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "startDelay"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;II",
            "Landroid/view/animation/Interpolator;",
            "[F)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 693
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    .local p2, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    invoke-static {p1, p2, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 694
    .local v0, "animator":Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 695
    invoke-virtual {v0, p5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 696
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 697
    return-object v0
.end method

.method private getArrowLeft()I
    .locals 2

    .line 339
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v0, :cond_0

    .line 340
    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    return v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$assignMarginsAndBackgrounds$0(I)I
    .locals 1
    .param p1, "r"    # I

    .line 230
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private orientAboutObject(ZZ)V
    .locals 19
    .param p1, "allowAlignLeft"    # Z
    .param p2, "allowAlignRight"    # Z

    .line 417
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/popup/ArrowPopup;->measure(II)V

    .line 419
    iget v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    iget v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getExtraVerticalOffset()I

    move-result v3

    add-int/2addr v2, v3

    .line 421
    .local v2, "extraVerticalSpace":I
    const/4 v3, 0x0

    .line 422
    .local v3, "numVisibleChildren":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 423
    invoke-virtual {v0, v4}, Lcom/android/launcher3/popup/ArrowPopup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 424
    add-int/lit8 v3, v3, 0x1

    .line 422
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 427
    .end local v4    # "i":I
    :cond_1
    add-int/lit8 v4, v3, -0x1

    iget v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mChildContainerMargin:I

    mul-int/2addr v4, v6

    .line 428
    .local v4, "childMargins":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    .line 429
    .local v6, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    .line 431
    .local v7, "width":I
    iget-object v8, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/popup/ArrowPopup;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v8

    .line 433
    .local v8, "dragLayer":Lcom/android/launcher3/InsettableFrameLayout;
    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v9

    .line 436
    .local v9, "insets":Landroid/graphics/Rect;
    iget-object v10, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 437
    .local v10, "leftAlignedX":I
    iget-object v11, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v7

    .line 438
    .local v11, "rightAlignedX":I
    iget-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v12, :cond_2

    move/from16 v12, p1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    move v12, v5

    goto :goto_1

    :cond_3
    move v12, v1

    :goto_1
    iput-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    .line 439
    if-eqz v12, :cond_4

    move v12, v10

    goto :goto_2

    :cond_4
    move v12, v11

    .line 442
    .local v12, "x":I
    :goto_2
    iget-object v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 443
    .local v13, "iconWidth":I
    div-int/lit8 v14, v13, 0x2

    iget v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    sub-int/2addr v14, v15

    iget v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    .line 444
    .local v14, "xOffset":I
    iget-boolean v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v15, :cond_5

    move v15, v14

    goto :goto_3

    :cond_5
    neg-int v15, v14

    :goto_3
    add-int/2addr v12, v15

    .line 447
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    goto :goto_9

    .line 451
    :cond_6
    add-int v15, v12, v7

    iget v5, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v5

    .line 452
    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getWidth()I

    move-result v5

    iget v1, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    if-ge v15, v5, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 453
    .local v1, "canBeLeftAligned":Z
    :goto_4
    iget v5, v9, Landroid/graphics/Rect;->left:I

    if-le v12, v5, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    .line 454
    .local v5, "canBeRightAligned":Z
    :goto_5
    iget-boolean v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v15, :cond_9

    if-nez v1, :cond_a

    :cond_9
    if-nez v15, :cond_b

    if-eqz v5, :cond_b

    :cond_a
    const/16 v16, 0x1

    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    .line 456
    .local v16, "alignmentStillValid":Z
    :goto_6
    if-nez v16, :cond_e

    .line 458
    if-eqz p1, :cond_c

    if-nez v15, :cond_c

    move/from16 v17, v1

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    move/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "canBeLeftAligned":Z
    .local v17, "canBeLeftAligned":Z
    :goto_7
    if-eqz p2, :cond_d

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    :goto_8
    invoke-direct {v0, v1, v15}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject(ZZ)V

    .line 460
    return-void

    .line 456
    .end local v17    # "canBeLeftAligned":Z
    .restart local v1    # "canBeLeftAligned":Z
    :cond_e
    move/from16 v17, v1

    .line 465
    .end local v1    # "canBeLeftAligned":Z
    .end local v5    # "canBeRightAligned":Z
    .end local v16    # "alignmentStillValid":Z
    :goto_9
    iget-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 466
    .local v1, "iconHeight":I
    iget-object v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 467
    .local v5, "y":I
    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getTop()I

    move-result v15

    move/from16 v16, v3

    .end local v3    # "numVisibleChildren":I
    .local v16, "numVisibleChildren":I
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v3

    if-le v5, v15, :cond_f

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    const/4 v3, 0x0

    :goto_a
    iput-boolean v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    .line 468
    if-nez v3, :cond_10

    .line 469
    iget-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    add-int v5, v3, v2

    .line 470
    sub-int/2addr v6, v2

    .line 474
    :cond_10
    iget v3, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v3

    .line 475
    iget v3, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    .line 477
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    .line 478
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    add-int/2addr v3, v6

    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getBottom()I

    move-result v15

    move/from16 v17, v1

    .end local v1    # "iconHeight":I
    .local v17, "iconHeight":I
    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v1

    if-le v3, v15, :cond_14

    .line 480
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    .line 482
    add-int v1, v10, v13

    iget v3, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    .line 483
    .local v1, "rightSide":I
    sub-int v3, v11, v13

    iget v15, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v15

    .line 484
    .local v3, "leftSide":I
    iget-boolean v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v15, :cond_12

    .line 485
    add-int v15, v1, v7

    move/from16 v18, v2

    .end local v2    # "extraVerticalSpace":I
    .local v18, "extraVerticalSpace":I
    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getRight()I

    move-result v2

    if-ge v15, v2, :cond_11

    .line 486
    move v2, v1

    .line 487
    .end local v12    # "x":I
    .local v2, "x":I
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_b

    .line 489
    .end local v2    # "x":I
    .restart local v12    # "x":I
    :cond_11
    move v2, v3

    .line 490
    .end local v12    # "x":I
    .restart local v2    # "x":I
    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    const/4 v12, 0x1

    goto :goto_b

    .line 493
    .end local v18    # "extraVerticalSpace":I
    .local v2, "extraVerticalSpace":I
    .restart local v12    # "x":I
    :cond_12
    move/from16 v18, v2

    const/4 v15, 0x0

    .end local v2    # "extraVerticalSpace":I
    .restart local v18    # "extraVerticalSpace":I
    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getLeft()I

    move-result v2

    if-le v3, v2, :cond_13

    .line 494
    move v2, v3

    .line 495
    .end local v12    # "x":I
    .local v2, "x":I
    iput-boolean v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    const/4 v12, 0x1

    goto :goto_b

    .line 497
    .end local v2    # "x":I
    .restart local v12    # "x":I
    :cond_13
    move v2, v1

    .line 498
    .end local v12    # "x":I
    .restart local v2    # "x":I
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    .line 501
    :goto_b
    iput-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    move v12, v2

    goto :goto_c

    .line 478
    .end local v1    # "rightSide":I
    .end local v3    # "leftSide":I
    .end local v18    # "extraVerticalSpace":I
    .local v2, "extraVerticalSpace":I
    .restart local v12    # "x":I
    :cond_14
    move/from16 v18, v2

    .line 504
    .end local v2    # "extraVerticalSpace":I
    .restart local v18    # "extraVerticalSpace":I
    :goto_c
    int-to-float v1, v12

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->setX(F)V

    .line 505
    iget v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 506
    return-void

    .line 509
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 510
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 511
    .local v2, "arrowLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v3, :cond_16

    .line 512
    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 513
    nop

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/views/BaseDragLayer;->getHeight()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v3, v15

    iget v15, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v15

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 515
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v15, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v3, v15

    iget v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    sub-int/2addr v3, v15

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v15

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_d

    .line 518
    :cond_16
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 519
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 520
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v15, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v15

    iget v15, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v3, v15

    iget v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    sub-int/2addr v3, v15

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 522
    :goto_d
    return-void
.end method


# virtual methods
.method protected addArrow()V
    .locals 3

    .line 353
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getArrowLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 356
    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->updateArrowColor()V

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    int-to-float v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 366
    return-void
.end method

.method public addOnCloseCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 729
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOnCloseCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 730
    return-void
.end method

.method protected animateClose()V
    .locals 9

    .line 603
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 604
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 609
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    .line 611
    const/4 v2, 0x0

    const/16 v3, 0xe9

    const/16 v4, 0x96

    const/16 v5, 0x53

    const/16 v6, 0x96

    const/16 v7, 0x53

    sget-object v8, Lcom/android/app/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/popup/ArrowPopup;->getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    .line 620
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V

    .line 621
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/popup/ArrowPopup$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/ArrowPopup$2;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 632
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 633
    return-void
.end method

.method protected animateOpen()V
    .locals 9

    .line 557
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setVisibility(I)V

    .line 558
    const/4 v2, 0x1

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/16 v5, 0x53

    const/4 v6, 0x0

    const/16 v7, 0x53

    sget-object v8, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/popup/ArrowPopup;->getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    .line 567
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->onCreateOpenAnimation(Landroid/animation/AnimatorSet;)V

    .line 568
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/popup/ArrowPopup$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/ArrowPopup$1;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 576
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 577
    return-void
.end method

.method public assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 218
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/popup/ArrowPopup;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V

    .line 219
    return-void
.end method

.method protected assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V
    .locals 11
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "backgroundColor"    # I

    .line 226
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x0

    .line 227
    .local v0, "colors":[I
    if-nez p2, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mColorIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 230
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 234
    .local v1, "count":I
    const/4 v2, 0x0

    .line 235
    .local v2, "totalVisibleShortcuts":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 236
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 237
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutOrWrapper(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    add-int/lit8 v2, v2, 0x1

    .line 235
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .line 243
    .local v3, "numVisibleShortcut":I
    const/4 v4, 0x0

    .line 244
    .local v4, "lastView":Landroid/view/View;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 245
    .local v5, "colorAnimator":Landroid/animation/AnimatorSet;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v7, 0x0

    if-ge v6, v1, :cond_b

    .line 246
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 247
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_a

    .line 248
    if-eqz v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutContainer(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 249
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 250
    .local v9, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, p0, Lcom/android/launcher3/popup/ArrowPopup;->mChildContainerMargin:I

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 252
    .end local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    move-object v4, v8

    .line 253
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 254
    .restart local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 256
    if-eqz v0, :cond_4

    invoke-virtual {p0, v8}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutContainer(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 257
    aget v10, v0, v7

    invoke-virtual {p0, v8, v10, v5}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    .line 258
    aget v7, v0, v7

    iput v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    .line 261
    :cond_4
    instance-of v7, v8, Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    invoke-virtual {p0, v8}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutContainer(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 262
    move-object v7, v8

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {p0, v7, p2}, Lcom/android/launcher3/popup/ArrowPopup;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V

    .line 263
    goto :goto_4

    .line 266
    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutOrWrapper(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 267
    const/4 v7, 0x1

    if-ne v2, v7, :cond_6

    .line 268
    sget v7, Lcom/android/launcher3/R$drawable;->single_item_primary:I

    invoke-virtual {v8, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 269
    :cond_6
    if-le v2, v7, :cond_9

    .line 270
    if-nez v3, :cond_7

    .line 271
    iget-object v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedTop:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 272
    :cond_7
    add-int/lit8 v7, v2, -0x1

    if-ne v3, v7, :cond_8

    .line 273
    iget-object v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedBottom:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 275
    :cond_8
    sget v7, Lcom/android/launcher3/R$drawable;->middle_item_primary:I

    invoke-virtual {v8, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 277
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 281
    :cond_9
    :goto_3
    invoke-virtual {p0, v8, p2, v5}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    .line 245
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 285
    .end local v6    # "i":I
    :cond_b
    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 286
    invoke-virtual {p0, v7, v7}, Lcom/android/launcher3/popup/ArrowPopup;->measure(II)V

    .line 287
    return-void
.end method

.method protected closeComplete()V
    .locals 2

    .line 714
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    .line 718
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    .line 719
    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mDeferContainerRemoval:Z

    .line 720
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 721
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 722
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOnCloseCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndClear()V

    .line 723
    return-void
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 1

    .line 553
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
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

    .line 548
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getExtraVerticalOffset()I
    .locals 2

    .line 636
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->popup_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .locals 30
    .param p1, "isOpening"    # Z
    .param p2, "scaleDuration"    # I
    .param p3, "fadeStartDelay"    # I
    .param p4, "fadeDuration"    # I
    .param p5, "childFadeStartDelay"    # I
    .param p6, "childFadeDuration"    # I
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 658
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->setPivotForOpenCloseAnimation()V

    .line 660
    const/4 v0, 0x2

    new-array v1, v0, [F

    if-eqz p1, :cond_0

    fill-array-data v1, :array_0

    goto :goto_0

    :cond_0
    fill-array-data v1, :array_1

    :goto_0
    move-object v8, v1

    .line 661
    .local v8, "alphaValues":[F
    new-array v1, v0, [F

    if-eqz p1, :cond_1

    fill-array-data v1, :array_2

    goto :goto_1

    :cond_1
    fill-array-data v1, :array_3

    :goto_1
    move-object v15, v1

    .line 662
    .local v15, "scaleValues":[F
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move/from16 v5, p4

    move/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v1

    .line 664
    .local v1, "alpha":Landroid/animation/Animator;
    iget-object v3, v2, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v21, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object/from16 v16, p0

    move-object/from16 v17, v3

    move/from16 v19, p4

    move/from16 v20, p3

    move-object/from16 v22, v8

    invoke-direct/range {v16 .. v22}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v3

    .line 666
    .local v3, "arrowAlpha":Landroid/animation/Animator;
    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    move/from16 v12, p2

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v15}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v4

    .line 668
    .local v4, "scaleY":Landroid/animation/Animator;
    sget-object v18, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v20, 0x0

    move-object/from16 v17, p0

    move/from16 v19, p2

    move-object/from16 v21, p7

    move-object/from16 v22, v15

    invoke-direct/range {v16 .. v22}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v5

    .line 671
    .local v5, "scaleX":Landroid/animation/Animator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 672
    .local v6, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz p1, :cond_2

    .line 673
    new-array v12, v0, [F

    fill-array-data v12, :array_4

    move-object/from16 v22, v12

    .line 674
    .local v22, "scaleValuesOvershoot":[F
    new-instance v12, Landroid/view/animation/PathInterpolator;

    const v13, 0x3ea8f5c3    # 0.33f

    const/high16 v14, 0x3f800000    # 1.0f

    const v11, 0x3e99999a    # 0.3f

    const/4 v7, 0x0

    invoke-direct {v12, v11, v7, v13, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v21, v12

    .line 675
    .local v21, "overshootInterpolator":Landroid/view/animation/PathInterpolator;
    sget-object v18, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v19, 0xc8

    move-object/from16 v16, p0

    move-object/from16 v17, p0

    move/from16 v20, p2

    invoke-direct/range {v16 .. v22}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v7

    .line 678
    .local v7, "overshootY":Landroid/animation/Animator;
    sget-object v25, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v26, 0xc8

    move-object/from16 v23, p0

    move-object/from16 v24, p0

    move/from16 v27, p2

    move-object/from16 v28, v21

    move-object/from16 v29, v22

    invoke-direct/range {v23 .. v29}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v11

    .line 682
    .local v11, "overshootX":Landroid/animation/Animator;
    const/4 v12, 0x6

    new-array v12, v12, [Landroid/animation/Animator;

    aput-object v1, v12, v10

    aput-object v3, v12, v9

    aput-object v4, v12, v0

    const/4 v0, 0x3

    aput-object v5, v12, v0

    const/4 v13, 0x4

    aput-object v11, v12, v13

    const/4 v0, 0x5

    aput-object v7, v12, v0

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 683
    .end local v7    # "overshootY":Landroid/animation/Animator;
    .end local v11    # "overshootX":Landroid/animation/Animator;
    .end local v21    # "overshootInterpolator":Landroid/view/animation/PathInterpolator;
    .end local v22    # "scaleValuesOvershoot":[F
    goto :goto_2

    .line 684
    :cond_2
    const/4 v13, 0x4

    new-array v7, v13, [Landroid/animation/Animator;

    aput-object v1, v7, v10

    aput-object v3, v7, v9

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 687
    :goto_2
    move/from16 v0, p5

    int-to-long v9, v0

    move/from16 v7, p6

    int-to-long v11, v7

    move-object/from16 v16, p0

    move-object/from16 v17, p0

    move-object/from16 v18, v8

    move-wide/from16 v19, v9

    move-wide/from16 v21, v11

    move-object/from16 v23, v6

    invoke-direct/range {v16 .. v23}, Lcom/android/launcher3/popup/ArrowPopup;->fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V

    .line 688
    return-object v6

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f828f5c    # 1.02f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_4
    .array-data 4
        0x3f828f5c    # 1.02f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 733
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTargetObjectLocation(Landroid/graphics/Rect;)V
.end method

.method protected handleClose(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 189
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateClose()V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->closeComplete()V

    .line 194
    :goto_0
    return-void
.end method

.method public inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "resId"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/view/ViewGroup;",
            ")TR;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    return-object v0
.end method

.method public inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .param p1, "resId"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/view/ViewGroup;",
            "I)TR;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p2, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 211
    return-object v0
.end method

.method isShortcutContainer(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 300
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIterateChildrenTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isShortcutOrWrapper(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 293
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    instance-of v0, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    return v0
.end method

.method protected onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/AnimatorSet;

    .line 708
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    return-void
.end method

.method protected onCreateOpenAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/AnimatorSet;

    .line 703
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 526
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/AbstractFloatingView;->onLayout(ZIIII)V

    .line 529
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 530
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 531
    .local v1, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getTranslationX()F

    move-result v2

    int-to-float v3, p2

    add-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getTranslationX()F

    move-result v2

    int-to-float v3, p4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 534
    :cond_0
    iget v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    .line 537
    :cond_1
    iget v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 538
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/ArrowPopup;->setX(F)V

    .line 539
    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 541
    :cond_2
    iget v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 542
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/ArrowPopup;->setY(F)V

    .line 544
    :cond_3
    return-void
.end method

.method protected orientAboutObject()V
    .locals 1

    .line 406
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject(ZZ)V

    .line 407
    return-void
.end method

.method protected setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "animatorSetOut"    # Landroid/animation/AnimatorSet;

    .line 307
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 308
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    const-string v2, "color"

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 310
    .local v1, "gd":Landroid/graphics/drawable/GradientDrawable;
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 311
    .local v3, "oldColor":I
    filled-new-array {v3, p2}, [I

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .end local v1    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "oldColor":I
    goto :goto_0

    .line 312
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 314
    .local v1, "cd":Landroid/graphics/drawable/ColorDrawable;
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    .line 315
    .restart local v3    # "oldColor":I
    filled-new-array {v3, p2}, [I

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 312
    .end local v1    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .end local v3    # "oldColor":I
    :cond_1
    :goto_0
    nop

    .line 317
    :goto_1
    return-void
.end method

.method protected setPivotForOpenCloseAnimation()V
    .locals 3

    .line 643
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 644
    .local v0, "arrowCenter":I
    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsArrowRotated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 645
    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v1

    int-to-float v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/ArrowPopup;->setPivotX(F)V

    .line 646
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->setPivotY(F)V

    goto :goto_2

    .line 648
    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v1, :cond_2

    int-to-float v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->setPivotX(F)V

    .line 649
    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/ArrowPopup;->setPivotY(F)V

    .line 651
    :goto_2
    return-void
.end method

.method protected setupForDisplay()V
    .locals 1

    .line 332
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setVisibility(I)V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    .line 334
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject()V

    .line 336
    return-void
.end method

.method protected shouldAddArrow()Z
    .locals 1

    .line 385
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 1

    .line 323
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->setupForDisplay()V

    .line 324
    invoke-virtual {p0, p0}, Lcom/android/launcher3/popup/ArrowPopup;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->shouldAddArrow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->addArrow()V

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateOpen()V

    .line 329
    return-void
.end method

.method public showArrow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 349
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->shouldAddArrow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    return-void
.end method

.method protected updateArrowColor()V
    .locals 14

    .line 369
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    new-instance v13, Lcom/android/launcher3/popup/RoundedArrowDrawable;

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    int-to-float v2, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    int-to-float v3, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowPointRadius:I

    int-to-float v4, v1

    iget v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOutlineRadius:F

    .line 372
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v1

    int-to-float v7, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    int-to-float v8, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    neg-int v1, v1

    int-to-float v9, v1

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    xor-int/lit8 v10, v1, 0x1

    iget-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget v12, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/android/launcher3/popup/RoundedArrowDrawable;-><init>(FFFFFFFFZZI)V

    .line 370
    invoke-virtual {v0, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mElevation:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setElevation(F)V

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mElevation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 379
    :cond_0
    return-void
.end method
