.class public Lcom/android/launcher3/views/Snackbar;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "Snackbar.java"


# static fields
.field private static final HIDE_DURATION_MS:J = 0xb4L

.field private static final SHOW_DURATION_MS:J = 0xb4L

.field private static final TIMEOUT_DURATION_MS:I = 0xfa0


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mOnDismissed:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$u9WbxZ__Go-__A89IXJHxZjk1oc(Lcom/android/launcher3/views/Snackbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/Snackbar;->onClosed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 59
    sget v0, Lcom/android/launcher3/R$layout;->snackbar:I

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/views/Snackbar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    return-void
.end method

.method static synthetic lambda$show$0(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;Landroid/view/View;)V
    .locals 1
    .param p0, "onActionClicked"    # Ljava/lang/Runnable;
    .param p1, "snackbar"    # Lcom/android/launcher3/views/Snackbar;
    .param p2, "v"    # Landroid/view/View;

    .line 135
    if-eqz p0, :cond_0

    .line 136
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/views/Snackbar;->close(Z)V

    .line 140
    return-void
.end method

.method static synthetic lambda$show$1(Lcom/android/launcher3/views/Snackbar;)V
    .locals 1
    .param p0, "snackbar"    # Lcom/android/launcher3/views/Snackbar;

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/Snackbar;->close(Z)V

    return-void
.end method

.method private onClosed()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 210
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "labelStringResId"    # I
    .param p2, "actionStringResId"    # I
    .param p3, "onDismissed"    # Ljava/lang/Runnable;
    .param p4, "onActionClicked"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;II",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 77
    .local p0, "activity":Landroid/content/Context;, "TT;"
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 77
    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/launcher3/views/Snackbar;->show(Lcom/android/launcher3/views/ActivityContext;Ljava/lang/CharSequence;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public static show(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "labelStringRedId"    # I
    .param p2, "onDismissed"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 65
    .local p0, "activity":Landroid/content/Context;, "TT;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public static show(Lcom/android/launcher3/views/ActivityContext;Ljava/lang/CharSequence;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 21
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "labelString"    # Ljava/lang/CharSequence;
    .param p2, "actionStringResId"    # I
    .param p3, "onDismissed"    # Ljava/lang/Runnable;
    .param p4, "onActionClicked"    # Ljava/lang/Runnable;

    .line 88
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x80

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/android/launcher3/views/Snackbar;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 89
    new-instance v2, Lcom/android/launcher3/views/Snackbar;

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/launcher3/views/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    .local v2, "snackbar":Lcom/android/launcher3/views/Snackbar;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/views/Snackbar;->setOrientation(I)V

    .line 92
    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lcom/android/launcher3/views/Snackbar;->setGravity(I)V

    .line 93
    invoke-virtual {v2}, Lcom/android/launcher3/views/Snackbar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 94
    .local v5, "res":Landroid/content/res/Resources;
    sget v6, Lcom/android/launcher3/R$dimen;->snackbar_elevation:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/views/Snackbar;->setElevation(F)V

    .line 95
    sget v6, Lcom/android/launcher3/R$dimen;->snackbar_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 96
    .local v6, "padding":I
    invoke-virtual {v2, v6, v6, v6, v6}, Lcom/android/launcher3/views/Snackbar;->setPadding(IIII)V

    .line 97
    sget v7, Lcom/android/launcher3/R$drawable;->round_rect_primary:I

    invoke-virtual {v2, v7}, Lcom/android/launcher3/views/Snackbar;->setBackgroundResource(I)V

    .line 99
    iput-boolean v3, v2, Lcom/android/launcher3/views/Snackbar;->mIsOpen:Z

    .line 100
    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    .line 101
    .local v3, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v3, v2}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 103
    invoke-virtual {v2}, Lcom/android/launcher3/views/Snackbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 104
    .local v7, "params":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    const/16 v8, 0x51

    iput v8, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->gravity:I

    .line 105
    sget v8, Lcom/android/launcher3/R$dimen;->snackbar_height:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 106
    sget v8, Lcom/android/launcher3/R$dimen;->snackbar_max_margin_left_right:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 107
    .local v8, "maxMarginLeftRight":I
    sget v9, Lcom/android/launcher3/R$dimen;->snackbar_min_margin_left_right:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 108
    .local v9, "minMarginLeftRight":I
    sget v10, Lcom/android/launcher3/R$dimen;->snackbar_margin_bottom:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 109
    .local v10, "marginBottom":I
    sget v11, Lcom/android/launcher3/R$dimen;->snackbar_max_width:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 110
    .local v11, "absoluteMaxWidth":I
    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v12

    .line 111
    .local v12, "insets":Landroid/graphics/Rect;
    nop

    .line 112
    invoke-virtual {v3}, Lcom/android/launcher3/views/BaseDragLayer;->getWidth()I

    move-result v13

    mul-int/lit8 v14, v9, 0x2

    sub-int/2addr v13, v14

    iget v14, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    iget v14, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    .line 111
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 114
    .local v13, "maxWidth":I
    nop

    .line 115
    invoke-virtual {v3}, Lcom/android/launcher3/views/BaseDragLayer;->getWidth()I

    move-result v14

    mul-int/lit8 v15, v8, 0x2

    sub-int/2addr v14, v15

    iget v15, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    iget v15, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    .line 114
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 117
    .local v14, "minWidth":I
    iput v14, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 118
    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v15

    .line 119
    .local v15, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    nop

    .line 120
    iget-boolean v4, v15, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v4, :cond_0

    .line 121
    iget v4, v15, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    invoke-virtual {v15}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v16

    add-int v4, v4, v16

    goto :goto_0

    .line 122
    :cond_0
    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    :goto_0
    add-int/2addr v4, v10

    .line 119
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v0, v0, v4}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->setMargins(IIII)V

    .line 124
    sget v0, Lcom/android/launcher3/R$id;->label:I

    invoke-virtual {v2, v0}, Lcom/android/launcher3/views/Snackbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, "labelView":Landroid/widget/TextView;
    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    move-object/from16 v16, v3

    .end local v3    # "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    .local v16, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    sget v3, Lcom/android/launcher3/R$id;->action:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/views/Snackbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 129
    .local v3, "actionView":Landroid/widget/TextView;
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 130
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "actionText":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 132
    move/from16 v17, v8

    .end local v8    # "maxMarginLeftRight":I
    .local v17, "maxMarginLeftRight":I
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v1, v8

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v1, v8

    .line 133
    .local v1, "actionWidth":F
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v8, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda1;

    move/from16 v18, v1

    move-object/from16 v1, p4

    .end local v1    # "actionWidth":F
    .local v18, "actionWidth":F
    invoke-direct {v8, v1, v2}, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .end local v4    # "actionText":Ljava/lang/String;
    goto :goto_1

    .line 142
    .end local v17    # "maxMarginLeftRight":I
    .end local v18    # "actionWidth":F
    .restart local v8    # "maxMarginLeftRight":I
    :cond_1
    move-object/from16 v1, p4

    move/from16 v17, v8

    .end local v8    # "maxMarginLeftRight":I
    .restart local v17    # "maxMarginLeftRight":I
    const/4 v4, 0x0

    .line 143
    .local v4, "actionWidth":F
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    move/from16 v18, v4

    .line 146
    .end local v4    # "actionWidth":F
    .restart local v18    # "actionWidth":F
    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float v4, v4, v18

    float-to-int v4, v4

    .line 148
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    add-int/2addr v4, v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v4, v8

    mul-int/lit8 v8, v6, 0x2

    add-int/2addr v4, v8

    .line 150
    .local v4, "totalContentWidth":I
    iget v8, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    if-le v4, v8, :cond_3

    .line 152
    if-gt v4, v13, :cond_2

    .line 153
    iput v4, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    move/from16 v19, v4

    move-object/from16 v20, v5

    goto :goto_2

    .line 157
    :cond_2
    sget v8, Lcom/android/launcher3/R$dimen;->snackbar_content_height:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 158
    .local v8, "textHeight":I
    sget v1, Lcom/android/launcher3/R$dimen;->snackbar_min_text_size:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 159
    .local v1, "textSizePx":F
    move/from16 v19, v4

    .end local v4    # "totalContentWidth":I
    .local v19, "totalContentWidth":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 160
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object/from16 v20, v5

    .end local v5    # "res":Landroid/content/res/Resources;
    .local v20, "res":Landroid/content/res/Resources;
    mul-int/lit8 v5, v8, 0x2

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 161
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    mul-int/lit8 v5, v8, 0x2

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 164
    iget v4, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    add-int/2addr v4, v8

    iput v4, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 165
    iput v13, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    goto :goto_2

    .line 150
    .end local v1    # "textSizePx":F
    .end local v8    # "textHeight":I
    .end local v19    # "totalContentWidth":I
    .end local v20    # "res":Landroid/content/res/Resources;
    .restart local v4    # "totalContentWidth":I
    .restart local v5    # "res":Landroid/content/res/Resources;
    :cond_3
    move/from16 v19, v4

    move-object/from16 v20, v5

    .line 169
    .end local v4    # "totalContentWidth":I
    .end local v5    # "res":Landroid/content/res/Resources;
    .restart local v19    # "totalContentWidth":I
    .restart local v20    # "res":Landroid/content/res/Resources;
    :goto_2
    move-object/from16 v1, p3

    iput-object v1, v2, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    .line 170
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/views/Snackbar;->setAlpha(F)V

    .line 171
    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v4}, Lcom/android/launcher3/views/Snackbar;->setScaleX(F)V

    .line 172
    invoke-virtual {v2, v4}, Lcom/android/launcher3/views/Snackbar;->setScaleY(F)V

    .line 173
    invoke-virtual {v2}, Lcom/android/launcher3/views/Snackbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 174
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 176
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 177
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 178
    move-object v5, v0

    .end local v0    # "labelView":Landroid/widget/TextView;
    .local v5, "labelView":Landroid/widget/TextView;
    const-wide/16 v0, 0xb4

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/app/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 181
    invoke-virtual {v2}, Lcom/android/launcher3/views/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xfa0

    const/4 v4, 0x6

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getRecommendedTimeoutMillis(Landroid/content/Context;II)I

    move-result v0

    .line 183
    .local v0, "timeout":I
    new-instance v1, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2}, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/views/Snackbar;)V

    move-object v8, v3

    .end local v3    # "actionView":Landroid/widget/TextView;
    .local v8, "actionView":Landroid/widget/TextView;
    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/launcher3/views/Snackbar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method

.method public static show(Lcom/android/launcher3/views/ActivityContext;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "labelString"    # Ljava/lang/CharSequence;
    .param p2, "onDismissed"    # Ljava/lang/Runnable;

    .line 71
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/launcher3/views/Snackbar;->show(Lcom/android/launcher3/views/ActivityContext;Ljava/lang/CharSequence;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 188
    iget-boolean v0, p0, Lcom/android/launcher3/views/Snackbar;->mIsOpen:Z

    if-eqz v0, :cond_1

    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher3/views/Snackbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 192
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 193
    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/app/animation/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/Snackbar;)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/Snackbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 199
    invoke-direct {p0}, Lcom/android/launcher3/views/Snackbar;->onClosed()V

    .line 201
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/Snackbar;->mIsOpen:Z

    .line 203
    :cond_1
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 214
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 221
    .local v0, "dl":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/Snackbar;->close(Z)V

    .line 225
    .end local v0    # "dl":Lcom/android/launcher3/views/BaseDragLayer;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
