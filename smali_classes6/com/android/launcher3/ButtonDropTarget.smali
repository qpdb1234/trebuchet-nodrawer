.class public abstract Lcom/android/launcher3/ButtonDropTarget;
.super Landroid/widget/TextView;
.source "ButtonDropTarget.java"

# interfaces
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DRAG_VIEW_DROP_DURATION:I = 0x11d

.field private static final DRAG_VIEW_HOVER_OVER_OPACITY:F = 0.65f

.field private static final MAX_LINES_TEXT_MULTI_LINE:I = 0x2

.field private static final MAX_LINES_TEXT_SINGLE_LINE:I = 0x1

.field public static final TOOLTIP_DEFAULT:I = 0x0

.field public static final TOOLTIP_LEFT:I = 0x1

.field public static final TOOLTIP_RIGHT:I = 0x2

.field private static final sTempCords:[I


# instance fields
.field private mAccessibleDrag:Z

.field protected mActive:Z

.field protected final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private final mDragDistanceThreshold:I

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDrawablePadding:I

.field private final mDrawableSize:I

.field protected mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

.field protected final mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

.field private mIconVisible:Z

.field protected mText:Ljava/lang/CharSequence;

.field private mTextMultiLine:Z

.field private mTextVisible:Z

.field private mToolTip:Landroid/widget/PopupWindow;

.field private mToolTipLocation:I


# direct methods
.method public static synthetic $r8$lambda$0vSiHFRYa1GE4wXu-7JSDqCLN-4(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->lambda$onDrop$0(Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/ButtonDropTarget;->sTempCords:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextMultiLine:Z

    .line 95
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 96
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDropTargetHandler()Lcom/android/launcher3/DropTargetHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->drag_distanceThreshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDragDistanceThreshold:I

    .line 100
    sget v1, Lcom/android/launcher3/R$dimen;->drop_target_button_drawable_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawableSize:I

    .line 101
    sget v1, Lcom/android/launcher3/R$dimen;->drop_target_button_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawablePadding:I

    .line 103
    return-void
.end method

.method private centerIcon()V
    .locals 5

    .line 323
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawableSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    :goto_0
    nop

    .line 325
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawableSize:I

    add-int v4, v0, v3

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    return-void
.end method

.method private hideTooltip()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    .line 141
    :cond_0
    return-void
.end method

.method private synthetic lambda$onDrop$0(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetHandler;->onDropAnimationComplete()V

    .line 256
    return-void
.end method

.method private updateIconVisibility()V
    .locals 2

    .line 374
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->centerIcon()V

    .line 377
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/launcher3/ButtonDropTarget;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawablePadding:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setCompoundDrawablePadding(I)V

    .line 379
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 208
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->supportsDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method public abstract completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract getAccessibilityAction()I
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 276
    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 277
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetDragPaddingPx:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 279
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->sTempCords:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    .line 280
    iget-object v3, p0, Lcom/android/launcher3/ButtonDropTarget;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 281
    aget v2, v0, v2

    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 282
    return-void
.end method

.method public getIconRect(Lcom/android/launcher3/DropTarget$DragObject;)Landroid/graphics/Rect;
    .locals 14
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 285
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v0

    .line 286
    .local v0, "viewWidth":I
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v1

    .line 287
    .local v1, "viewHeight":I
    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 288
    .local v2, "drawableWidth":I
    iget-object v3, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 289
    .local v3, "drawableHeight":I
    iget-object v4, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    invoke-virtual {v4}, Lcom/android/launcher3/DropTargetHandler;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    .line 292
    .local v4, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 293
    .local v5, "to":Landroid/graphics/Rect;
    invoke-virtual {v4, p0, v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 295
    move v6, v2

    .line 296
    .local v6, "width":I
    move v7, v3

    .line 301
    .local v7, "height":I
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 302
    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 303
    .local v8, "right":I
    sub-int v9, v8, v6

    .local v9, "left":I
    goto :goto_0

    .line 305
    .end local v8    # "right":I
    .end local v9    # "left":I
    :cond_0
    iget v8, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingLeft()I

    move-result v9

    add-int/2addr v9, v8

    .line 306
    .restart local v9    # "left":I
    add-int v8, v9, v6

    .line 309
    .restart local v8    # "right":I
    :goto_0
    iget v10, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v7

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    .line 310
    .local v10, "top":I
    add-int v11, v10, v7

    .line 312
    .local v11, "bottom":I
    invoke-virtual {v5, v9, v10, v8, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 315
    sub-int v12, v0, v6

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    .line 316
    .local v12, "xOffset":I
    sub-int v13, v1, v7

    neg-int v13, v13

    div-int/lit8 v13, v13, 0x2

    .line 317
    .local v13, "yOffset":I
    invoke-virtual {v5, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 319
    return-object v5
.end method

.method public isDropEnabled()Z
    .locals 2

    .line 222
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mAccessibleDrag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 223
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->getDistanceDragged()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDragDistanceThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0
.end method

.method protected isTextClippedVertically(I)Z
    .locals 6
    .param p1, "availableHeight"    # I

    .line 425
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 426
    .local v0, "fontMetricsInt":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getLineCount()I

    move-result v1

    .line 427
    .local v1, "lineCount":I
    :goto_0
    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v1

    .line 429
    .local v3, "textHeight":I
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v4, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected isTextMultiLine()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextMultiLine:Z

    return v0
.end method

.method public isTextTruncated(I)Z
    .locals 7
    .param p1, "availableWidth"    # I

    .line 396
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 397
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getCompoundDrawablePadding()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 400
    :cond_0
    const/4 v0, 0x1

    if-gtz p1, :cond_1

    .line 401
    return v0

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, p1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 405
    .local v1, "firstLine":Ljava/lang/CharSequence;
    iget-boolean v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextMultiLine:Z

    if-nez v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v0, v2

    return v0

    .line 408
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 410
    return v3

    .line 412
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    .line 413
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v2, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 414
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    int-to-float v5, p1

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 413
    invoke-static {v2, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 415
    .local v2, "secondLine":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v4, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    .line 416
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v4, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    :goto_0
    nop

    .line 415
    :goto_1
    return v0
.end method

.method public abstract onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 330
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DropTargetHandler;->onClick(Lcom/android/launcher3/ButtonDropTarget;)V

    .line 331
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    .line 230
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setSelected(Z)V

    .line 232
    return-void
.end method

.method public final onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 6
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 145
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mAccessibleDrag:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    if-nez v0, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->hideTooltip()V

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$layout;->drop_target_tool_tip:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    .local v0, "message":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    .line 154
    const/4 v2, 0x0

    .local v2, "x":I
    const/4 v3, 0x0

    .line 155
    .local v3, "y":I
    iget v4, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTipLocation:I

    if-eqz v4, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v4

    neg-int v3, v4

    .line 157
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 158
    iget v4, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTipLocation:I

    if-ne v4, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 164
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    invoke-virtual {v4, p0, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 167
    .end local v0    # "message":Landroid/widget/TextView;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const v2, 0x3f266666    # 0.65f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setSelected(Z)V

    .line 169
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->cancel()V

    .line 172
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->sendAccessibilityEvent(I)V

    .line 173
    return-void
.end method

.method public final onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 182
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->hideTooltip()V

    .line 184
    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setSelected(Z)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 190
    :goto_0
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 178
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 194
    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isKeyboardDrag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    iput-boolean v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setupItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 198
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->supportsDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    .line 200
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setVisibility(I)V

    .line 202
    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mAccessibleDrag:Z

    .line 203
    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 18
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v2, Lcom/android/launcher3/dragndrop/DragOptions;->isFlingToDelete:Z

    if-eqz v3, :cond_0

    .line 241
    return-void

    .line 244
    :cond_0
    iget-object v3, v0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    invoke-virtual {v3}, Lcom/android/launcher3/DropTargetHandler;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    .line 245
    .local v3, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    iget-object v15, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 246
    .local v15, "dragView":Lcom/android/launcher3/dragndrop/DragView;
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/ButtonDropTarget;->getIconRect(Lcom/android/launcher3/DropTarget$DragObject;)Landroid/graphics/Rect;

    move-result-object v16

    .line 247
    .local v16, "to":Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v15}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v17, v4, v5

    .line 248
    .local v17, "scale":F
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    .line 250
    iget-object v4, v0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {v4}, Lcom/android/launcher3/DropTargetBar;->deferOnDragEnd()V

    .line 252
    new-instance v12, Lcom/android/launcher3/ButtonDropTarget$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0, v1}, Lcom/android/launcher3/ButtonDropTarget$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 259
    .local v12, "onAnimationEndRunnable":Ljava/lang/Runnable;
    iget-object v5, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3dcccccd    # 0.1f

    const/16 v10, 0x11d

    sget-object v11, Lcom/android/app/animation/Interpolators;->DECELERATE_2:Landroid/view/animation/Interpolator;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v4, v3

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v4 .. v14}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 263
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 383
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 384
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->centerIcon()V

    .line 385
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    .line 268
    return-void
.end method

.method public resizeTextToFit()F
    .locals 6

    .line 446
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->button_drop_target_min_text_size:I

    .line 447
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 446
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->pxToSp(F)F

    move-result v0

    .line 448
    .local v0, "minSize":F
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->button_drop_target_resize_text_increment:I

    .line 449
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 448
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->pxToSp(F)F

    move-result v1

    .line 450
    .local v1, "step":F
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getTextSize()F

    move-result v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->pxToSp(F)F

    move-result v2

    .line 452
    .local v2, "textSize":F
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v3

    .line 453
    .local v3, "availableWidth":I
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v4

    .line 455
    .local v4, "availableHeight":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/launcher3/ButtonDropTarget;->isTextTruncated(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/ButtonDropTarget;->isTextClippedVertically(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 456
    :cond_0
    sub-float/2addr v2, v1

    .line 457
    cmpg-float v5, v2, v0

    if-gez v5, :cond_2

    .line 458
    move v2, v0

    .line 459
    invoke-virtual {p0, v2}, Lcom/android/launcher3/ButtonDropTarget;->setTextSize(F)V

    .line 460
    nop

    .line 464
    :cond_1
    return v2

    .line 462
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/ButtonDropTarget;->setTextSize(F)V

    goto :goto_0
.end method

.method protected setDrawable(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 129
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->updateIconVisibility()V

    .line 130
    return-void
.end method

.method public setDropTargetBar(Lcom/android/launcher3/DropTargetBar;)V
    .locals 0
    .param p1, "dropTargetBar"    # Lcom/android/launcher3/DropTargetBar;

    .line 133
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    .line 134
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 367
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    if-eq v0, p1, :cond_0

    .line 368
    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mIconVisible:Z

    .line 369
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->updateIconVisibility()V

    .line 371
    :cond_0
    return-void
.end method

.method public setTextMultiLine(Z)V
    .locals 2
    .param p1, "isMultiLine"    # Z

    .line 346
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextMultiLine:Z

    if-eq v0, p1, :cond_2

    .line 347
    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextMultiLine:Z

    .line 348
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setSingleLine(Z)V

    .line 349
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setMaxLines(I)V

    .line 350
    const/4 v0, 0x1

    .line 351
    .local v0, "inputType":I
    if-eqz p1, :cond_1

    .line 352
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 355
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setInputType(I)V

    .line 357
    .end local v0    # "inputType":I
    :cond_2
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 334
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 335
    .local v0, "newText":Ljava/lang/CharSequence;
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 336
    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->updateIconVisibility()V

    .line 340
    :cond_2
    return-void
.end method

.method public setToolTipLocation(I)V
    .locals 0
    .param p1, "location"    # I

    .line 388
    iput p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTipLocation:I

    .line 389
    invoke-direct {p0}, Lcom/android/launcher3/ButtonDropTarget;->hideTooltip()V

    .line 390
    return-void
.end method

.method protected abstract setupItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
.end method

.method public abstract supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
.end method

.method protected abstract supportsDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z
.end method

.method protected updateText(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setText(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method protected updateText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method
