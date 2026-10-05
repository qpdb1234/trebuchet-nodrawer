.class public Lcom/android/launcher3/shortcuts/DeepShortcutTextView;
.super Lcom/android/launcher3/BubbleTextView;
.source "DeepShortcutTextView.java"


# instance fields
.field private final mLoadingStateBounds:Landroid/graphics/Rect;

.field private mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

.field private mShowLoadingState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStateBounds:Landroid/graphics/Rect;

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->showLoadingState(Z)V

    .line 50
    return-void
.end method

.method private setLoadingBounds()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStateBounds:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 62
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStateBounds:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getPaddingEnd()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getPaddingStart()I

    move-result v1

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStateBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 73
    return-void
.end method

.method private showLoadingState(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .line 112
    iget-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowLoadingState:Z

    if-ne p1, v0, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowLoadingState:Z

    .line 118
    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$drawable;->deep_shortcuts_text_placeholder:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-direct {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->setLoadingBounds()V

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->invalidate()V

    .line 127
    return-void
.end method


# virtual methods
.method protected applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 78
    return-void
.end method

.method protected drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 109
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 97
    iget-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowLoadingState:Z

    if-nez v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mLoadingStatePlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->onMeasure(II)V

    .line 55
    invoke-direct {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->setLoadingBounds()V

    .line 56
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->showLoadingState(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method protected shouldIgnoreTouchDown(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 92
    const/4 v0, 0x0

    return v0
.end method
