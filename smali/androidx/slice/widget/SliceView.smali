.class public Landroidx/slice/widget/SliceView;
.super Landroid/view/ViewGroup;
.source "SliceView.java"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceView$SliceMode;,
        Landroidx/slice/widget/SliceView$OnSliceActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final MODE_LARGE:I = 0x2

.field public static final MODE_SHORTCUT:I = 0x3

.field public static final MODE_SMALL:I = 0x1

.field private static final REFRESH_LAST_UPDATED_IN_MILLIS:I = 0xea60

.field public static final SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SliceView"


# instance fields
.field private mActionRow:Landroidx/slice/widget/ActionRow;

.field private mActionRowHeight:I

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field mClickInfo:[I

.field private mCurrentSlice:Landroidx/slice/Slice;

.field private mCurrentSliceLoggedVisible:Z

.field private mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

.field mCurrentView:Landroidx/slice/widget/SliceChildView;

.field private mDownX:I

.field private mDownY:I

.field mHandler:Landroid/os/Handler;

.field mInLongpress:Z

.field private mIsScrollable:Z

.field private mLargeHeight:I

.field mListContent:Landroidx/slice/widget/ListContent;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field mLongpressCheck:Ljava/lang/Runnable;

.field private mMinTemplateHeight:I

.field private mMode:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field mPressing:Z

.field mRefreshLastUpdated:Ljava/lang/Runnable;

.field private mShortcutSize:I

.field private mShowActions:Z

.field private mShowLastUpdated:Z

.field private mSliceMetadata:Landroidx/slice/SliceMetadata;

.field private mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field private mThemeTintColor:I

.field private mTouchSlopSquared:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 899
    new-instance v0, Landroidx/slice/widget/SliceView$3;

    invoke-direct {v0}, Landroidx/slice/widget/SliceView$3;-><init>()V

    sput-object v0, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 185
    sget v0, Landroidx/slice/view/R$attr;->sliceViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    const/4 v0, 0x2

    iput v0, p0, Landroidx/slice/widget/SliceView;->mMode:I

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    .line 160
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    .line 161
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 795
    new-instance v0, Landroidx/slice/widget/SliceView$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$1;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    .line 884
    new-instance v0, Landroidx/slice/widget/SliceView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$2;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    .line 190
    sget v0, Landroidx/slice/view/R$style;->Widget_SliceView:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/slice/widget/SliceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 195
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 151
    const/4 v0, 0x2

    iput v0, p0, Landroidx/slice/widget/SliceView;->mMode:I

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    .line 160
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    .line 161
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 795
    new-instance v0, Landroidx/slice/widget/SliceView$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$1;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    .line 884
    new-instance v0, Landroidx/slice/widget/SliceView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$2;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 197
    return-void
.end method

.method private applyConfigurations()V
    .locals 2

    .line 718
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 719
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    instance-of v1, v0, Landroidx/slice/widget/LargeTemplateView;

    if-eqz v1, :cond_0

    .line 720
    check-cast v0, Landroidx/slice/widget/LargeTemplateView;

    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    invoke-virtual {v0, v1}, Landroidx/slice/widget/LargeTemplateView;->setScrollable(Z)V

    .line 722
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    .line 723
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 725
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    goto :goto_0

    .line 728
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    .line 730
    :goto_0
    return-void
.end method

.method private getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 769
    instance-of v0, p1, Landroidx/slice/widget/ShortcutView;

    if-eqz v0, :cond_0

    .line 770
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0

    .line 772
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getHeightForMode(I)I
    .locals 3
    .param p1, "maxHeight"    # I

    .line 337
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 340
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    .line 341
    .local v0, "mode":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 342
    iget v1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    return v1

    .line 344
    :cond_1
    if-lez p1, :cond_2

    iget v2, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    if-gt p1, v2, :cond_2

    .line 345
    iget p1, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    .line 346
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/ListContent;->setMaxSmallHeight(I)V

    .line 347
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget v2, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setMaxSmallHeight(I)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2, v1}, Landroidx/slice/widget/ListContent;->setMaxSmallHeight(I)V

    .line 350
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2, v1}, Landroidx/slice/widget/SliceChildView;->setMaxSmallHeight(I)V

    .line 352
    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-boolean v2, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    .line 353
    invoke-virtual {v1, p1, v2}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 354
    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getSmallHeight()I

    move-result v1

    :goto_1
    return v1

    .line 338
    .end local v0    # "mode":I
    :cond_4
    :goto_2
    return v1
.end method

.method private getTimeToExpiry()J
    .locals 9

    .line 516
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 517
    return-wide v1

    .line 519
    :cond_0
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getExpiry()J

    move-result-wide v3

    .line 520
    .local v3, "expiry":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 521
    .local v5, "now":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-eqz v0, :cond_2

    cmp-long v0, v5, v3

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    sub-long v1, v3, v5

    :cond_2
    :goto_0
    return-wide v1
.end method

.method private getTintColor()I
    .locals 3

    .line 756
    iget v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 758
    return v0

    .line 760
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    const-string v1, "int"

    const-string v2, "color"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 762
    .local v0, "colorItem":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_1

    .line 763
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    goto :goto_0

    .line 764
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    :goto_0
    return v1
.end method

.method private handleTouchForLongpress(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 306
    .local v0, "action":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 317
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    sub-int/2addr v2, v3

    .line 318
    .local v2, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    sub-int/2addr v3, v4

    .line 319
    .local v3, "deltaY":I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    .line 320
    .local v4, "distance":I
    iget v5, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    if-le v4, v5, :cond_0

    .line 321
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 322
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 328
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "distance":I
    :pswitch_1
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 329
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 330
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    .line 311
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 312
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 313
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    nop

    .line 333
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 200
    new-instance v0, Landroidx/slice/widget/SliceStyle;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceStyle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 201
    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getTintColor()I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 202
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_shortcut_size:I

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    .line 204
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    .line 206
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    .line 207
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_action_row_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    .line 210
    new-instance v0, Landroidx/slice/widget/LargeTemplateView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/widget/LargeTemplateView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 211
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setMode(I)V

    .line 212
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    .line 216
    new-instance v0, Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/slice/widget/ActionRow;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 217
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x111112

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/slice/widget/ActionRow;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 221
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 222
    .local v0, "slop":I
    mul-int v1, v0, v0

    iput v1, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    .line 223
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    .line 225
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingEnd()I

    move-result v4

    .line 226
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v5

    .line 225
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 227
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->setClipToPadding(Z)V

    .line 229
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method private initSliceMetrics(Landroidx/slice/Slice;)V
    .locals 3
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 839
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 843
    :cond_1
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 844
    nop

    .line 845
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceMetrics;->getInstance(Landroid/content/Context;Landroid/net/Uri;)Landroidx/slice/widget/SliceMetrics;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    goto :goto_1

    .line 840
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    .line 847
    :cond_3
    :goto_1
    return-void
.end method

.method private isNeverExpired()Z
    .locals 6

    .line 499
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 500
    return v1

    .line 502
    :cond_0
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getExpiry()J

    move-result-wide v2

    .line 503
    .local v2, "expiry":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    .locals 3
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "info"    # Landroidx/slice/widget/EventInfo;

    .line 863
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    iget v1, p2, Landroidx/slice/widget/EventInfo;->actionType:I

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 867
    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 865
    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/SliceMetrics;->logTouch(ILandroid/net/Uri;)V

    .line 870
    :cond_0
    return-void
.end method

.method private logSliceMetricsVisibilityChange(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .line 850
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    if-eqz v0, :cond_1

    .line 851
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-nez v1, :cond_0

    .line 852
    invoke-virtual {v0}, Landroidx/slice/widget/SliceMetrics;->logVisible()V

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 855
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceMetrics;->logHidden()V

    .line 857
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 860
    :cond_1
    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 783
    packed-switch p0, :pswitch_data_0

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 785
    :pswitch_0
    const-string v0, "MODE SHORTCUT"

    return-object v0

    .line 789
    :pswitch_1
    const-string v0, "MODE LARGE"

    return-object v0

    .line 787
    :pswitch_2
    const-string v0, "MODE SMALL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshLastUpdatedLabel(Z)V
    .locals 7
    .param p1, "visibility"    # Z

    .line 873
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->isNeverExpired()Z

    move-result v0

    if-nez v0, :cond_2

    .line 874
    if-eqz p1, :cond_1

    .line 875
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isExpired()Z

    move-result v2

    const-wide/32 v3, 0xea60

    if-eqz v2, :cond_0

    goto :goto_0

    .line 877
    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTimeToExpiry()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 875
    :goto_0
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 879
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 882
    :cond_2
    :goto_1
    return-void
.end method

.method private updateActions()V
    .locals 5

    .line 733
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0, v2}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 737
    return-void

    .line 740
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 741
    .local v0, "sortedActions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    sget-object v3, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 742
    iget-boolean v3, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroidx/slice/widget/SliceView;->mMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 744
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroidx/slice/widget/ActionRow;->setActions(Ljava/util/List;I)V

    .line 745
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 747
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    goto :goto_0

    .line 750
    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v1, v0}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 751
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 753
    :goto_0
    return-void
.end method

.method private updateViewConfig()V
    .locals 9

    .line 683
    const/4 v0, 0x0

    .line 686
    .local v0, "newView":Z
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v1

    .line 687
    .local v1, "mode":I
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    instance-of v3, v2, Landroidx/slice/widget/ShortcutView;

    .line 688
    .local v3, "isCurrentViewShortcut":Z
    invoke-virtual {v2}, Landroidx/slice/widget/SliceChildView;->getLoadingActions()Ljava/util/Set;

    move-result-object v2

    .line 689
    .local v2, "loadingActions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    if-nez v3, :cond_0

    .line 690
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v4}, Landroidx/slice/widget/SliceView;->removeView(Landroid/view/View;)V

    .line 691
    new-instance v4, Landroidx/slice/widget/ShortcutView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/slice/widget/ShortcutView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 692
    invoke-direct {p0, v4}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    const/4 v0, 0x1

    goto :goto_0

    .line 694
    :cond_0
    if-eq v1, v4, :cond_1

    if-eqz v3, :cond_1

    .line 695
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v4}, Landroidx/slice/widget/SliceView;->removeView(Landroid/view/View;)V

    .line 696
    new-instance v4, Landroidx/slice/widget/LargeTemplateView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/slice/widget/LargeTemplateView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 697
    invoke-direct {p0, v4}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    const/4 v0, 0x1

    .line 702
    :cond_1
    :goto_0
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v4, v1}, Landroidx/slice/widget/SliceChildView;->setMode(I)V

    .line 705
    if-eqz v0, :cond_3

    .line 706
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingStart()I

    move-result v5

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingEnd()I

    move-result v7

    .line 707
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v8

    .line 706
    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 708
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    .line 709
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 710
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v4, v5}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    .line 712
    :cond_2
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v4, v2}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 714
    :cond_3
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 715
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 655
    iget v0, p0, Landroidx/slice/widget/SliceView;->mMode:I

    return v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 1

    .line 529
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    return-object v0
.end method

.method public getSliceActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const/4 v0, 0x0

    return-object v0

    .line 544
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    return-object v0
.end method

.method isExpired()Z
    .locals 8

    .line 507
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 508
    return v1

    .line 510
    :cond_0
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getExpiry()J

    move-result-wide v2

    .line 511
    .local v2, "expiry":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 512
    .local v4, "now":J
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isScrollable()Z
    .locals 1

    .line 598
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    return v0
.end method

.method public isShowingActionRow()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    return v0
.end method

.method public isSliceViewClickable()Z
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 808
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 809
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 811
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    .line 813
    :cond_0
    return-void
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .locals 0
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 432
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    .line 433
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 253
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 255
    :try_start_0
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 256
    .local v0, "sa":Landroidx/slice/core/SliceActionImpl;
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 257
    .local v1, "loading":Z
    if-eqz v1, :cond_0

    .line 258
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/widget/SliceChildView;->setActionLoading(Landroidx/slice/SliceItem;)V

    .line 260
    :cond_0
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    if-eqz v2, :cond_1

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 261
    new-instance v2, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v4

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    const/4 v6, 0x0

    aget v6, v5, v6

    aget v3, v5, v3

    const/4 v5, 0x3

    invoke-direct {v2, v4, v5, v6, v3}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 263
    .local v2, "eventInfo":Landroidx/slice/widget/EventInfo;
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v3

    .line 264
    .local v3, "sliceItem":Landroidx/slice/SliceItem;
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {v4, v2, v3}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    .line 265
    invoke-direct {p0, v3, v2}, Landroidx/slice/widget/SliceView;->logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    .end local v0    # "sa":Landroidx/slice/core/SliceActionImpl;
    .end local v1    # "loading":Z
    .end local v2    # "eventInfo":Landroidx/slice/widget/EventInfo;
    .end local v3    # "sliceItem":Landroidx/slice/SliceItem;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SliceView"

    const-string v2, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :goto_0
    goto :goto_1

    .line 270
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    .line 271
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 273
    :cond_3
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 817
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 818
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 819
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    .line 820
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 288
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 289
    .local v0, "ret":Z
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_0

    .line 290
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 292
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 417
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 418
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 419
    .local v1, "left":I
    const/4 v2, 0x0

    .line 420
    .local v2, "top":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x0

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    .line 421
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 420
    invoke-virtual {v0, v4, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 422
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v3}, Landroidx/slice/widget/ActionRow;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_0

    .line 423
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 424
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 425
    invoke-virtual {v6}, Landroidx/slice/widget/ActionRow;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    .line 426
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v8}, Landroidx/slice/widget/ActionRow;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 423
    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/slice/widget/ActionRow;->layout(IIII)V

    .line 428
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 359
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 360
    .local v1, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 361
    .local v2, "childWidth":I
    iget v3, v0, Landroidx/slice/widget/SliceView;->mMode:I

    const/4 v4, 0x3

    if-ne v4, v3, :cond_0

    .line 363
    iget v2, v0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    .line 364
    iget v3, v0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingRight()I

    move-result v5

    add-int v1, v3, v5

    .line 366
    :cond_0
    iget-object v3, v0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v3}, Landroidx/slice/widget/ActionRow;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    iget v3, v0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 369
    .local v3, "actionHeight":I
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 370
    .local v5, "heightAvailable":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 371
    .local v6, "heightMode":I
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 372
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_2

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_3

    :cond_2
    if-nez v6, :cond_4

    :cond_3
    const/4 v8, -0x1

    goto :goto_1

    :cond_4
    move v8, v5

    .line 376
    .local v8, "maxHeight":I
    :goto_1
    invoke-direct {v0, v8}, Landroidx/slice/widget/SliceView;->getHeightForMode(I)I

    move-result v9

    .line 378
    .local v9, "sliceHeight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v10

    sub-int v10, v5, v10

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    .line 379
    .local v10, "height":I
    add-int v11, v9, v3

    const/high16 v12, 0x40000000    # 2.0f

    if-ge v5, v11, :cond_8

    if-nez v6, :cond_5

    goto :goto_2

    .line 389
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_6

    iget v11, v0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    add-int/2addr v11, v3

    if-lt v5, v11, :cond_6

    .line 391
    move v10, v9

    goto :goto_3

    .line 392
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v11

    if-ne v11, v4, :cond_7

    .line 394
    iget v10, v0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    goto :goto_3

    .line 395
    :cond_7
    iget v4, v0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    if-gt v10, v4, :cond_a

    .line 396
    move v10, v9

    goto :goto_3

    .line 382
    :cond_8
    :goto_2
    if-ne v6, v12, :cond_9

    .line 383
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_3

    .line 385
    :cond_9
    move v10, v9

    .line 400
    :cond_a
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v10

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v4, v11

    .line 401
    .local v4, "childHeight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingLeft()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingRight()I

    move-result v13

    add-int/2addr v11, v13

    .line 402
    .end local v2    # "childWidth":I
    .local v11, "childWidth":I
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 403
    .local v2, "childWidthMeasureSpec":I
    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 404
    .local v13, "childHeightMeasureSpec":I
    iget-object v14, v0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v14, v2, v13}, Landroidx/slice/widget/SliceView;->measureChild(Landroid/view/View;II)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v14

    add-int/2addr v14, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    .line 407
    .local v14, "actionPaddedHeight":I
    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 408
    .local v12, "actionHeightSpec":I
    iget-object v15, v0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0, v15, v2, v12}, Landroidx/slice/widget/SliceView;->measureChild(Landroid/view/View;II)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v15

    add-int/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v10, v15

    .line 412
    invoke-virtual {v0, v1, v10}, Landroidx/slice/widget/SliceView;->setMeasuredDimension(II)V

    .line 413
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 297
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 298
    .local v0, "ret":Z
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_0

    .line 299
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 301
    :cond_0
    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 824
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 825
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0, v2}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 827
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    .line 829
    :cond_2
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 833
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 834
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0, v2}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 835
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    .line 836
    return-void
.end method

.method public setAccentColor(I)V
    .locals 2
    .param p1, "accentColor"    # I

    .line 626
    iput p1, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 627
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceStyle;->setTintColor(I)V

    .line 628
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 629
    return-void
.end method

.method public setClickInfo([I)V
    .locals 0
    .param p1, "info"    # [I

    .line 248
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    .line 249
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 579
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/widget/SliceView;->setMode(IZ)V

    .line 580
    return-void
.end method

.method public setMode(IZ)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "animate"    # Z

    .line 636
    const-string v0, "SliceView"

    if-eqz p2, :cond_0

    .line 637
    const-string v1, "Animation not supported yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    iget v1, p0, Landroidx/slice/widget/SliceView;->mMode:I

    if-ne v1, p1, :cond_1

    .line 640
    return-void

    .line 642
    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " please use one of MODE_SHORTCUT, MODE_SMALL, MODE_LARGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 p1, 0x2

    .line 647
    :cond_2
    iput p1, p0, Landroidx/slice/widget/SliceView;->mMode:I

    .line 648
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateViewConfig()V

    .line 649
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 277
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 278
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 282
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 283
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 284
    return-void
.end method

.method public setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 1
    .param p1, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 606
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 607
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 608
    return-void
.end method

.method public setScrollable(Z)V
    .locals 2
    .param p1, "isScrollable"    # Z

    .line 586
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    if-eq p1, v0, :cond_0

    .line 587
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    .line 588
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    instance-of v1, v0, Landroidx/slice/widget/LargeTemplateView;

    if-eqz v1, :cond_0

    .line 589
    check-cast v0, Landroidx/slice/widget/LargeTemplateView;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/LargeTemplateView;->setScrollable(Z)V

    .line 592
    :cond_0
    return-void
.end method

.method public setShowActionRow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 665
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    .line 666
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 667
    return-void
.end method

.method public setSlice(Landroidx/slice/Slice;)V
    .locals 8
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 442
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->initSliceMetrics(Landroidx/slice/Slice;)V

    .line 443
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-virtual {v3}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 445
    .local v2, "isUpdate":Z
    :goto_0
    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 447
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-static {v4, v5}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v4

    .line 448
    .local v4, "oldSliceData":Landroidx/slice/SliceMetadata;
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v5

    .line 449
    .local v5, "newSliceData":Landroidx/slice/SliceMetadata;
    invoke-virtual {v4}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 450
    invoke-virtual {v5}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v6

    if-nez v6, :cond_1

    .line 453
    return-void

    .line 455
    .end local v4    # "oldSliceData":Landroidx/slice/SliceMetadata;
    .end local v5    # "newSliceData":Landroidx/slice/SliceMetadata;
    :cond_1
    goto :goto_1

    .line 456
    :cond_2
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v4}, Landroidx/slice/widget/SliceChildView;->resetView()V

    .line 458
    :goto_1
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    .line 459
    new-instance v4, Landroidx/slice/widget/ListContent;

    .line 460
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    iget-object v7, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-direct {v4, v5, v6, v7}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/widget/SliceStyle;)V

    iput-object v4, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 461
    invoke-virtual {v4}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 462
    iput-object v5, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 463
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceChildView;->resetView()V

    .line 464
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 465
    return-void

    .line 468
    :cond_3
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v4, v5}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 471
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-static {v4, v5}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    .line 472
    invoke-virtual {v4}, Landroidx/slice/SliceMetadata;->getSliceActions()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 473
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v4}, Landroidx/slice/SliceMetadata;->getLastUpdatedTime()J

    move-result-wide v4

    .line 474
    .local v4, "lastUpdated":J
    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v6, v4, v5}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 475
    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-boolean v7, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isExpired()Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v6, v0}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 476
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v6}, Landroidx/slice/SliceMetadata;->isPermissionSlice()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/slice/widget/SliceChildView;->setAllowTwoLines(Z)V

    .line 479
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 481
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 482
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    goto :goto_2

    .line 484
    :cond_5
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v3}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    .line 488
    :goto_2
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0, v3}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    .line 489
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 492
    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 495
    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    .line 496
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 559
    .local p1, "newActions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    if-eqz v0, :cond_3

    .line 562
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getSliceActions()Ljava/util/List;

    move-result-object v0

    .line 563
    .local v0, "availableActions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 564
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 565
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to set an action that isn\'t available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 567
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    .end local v1    # "i":I
    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    iput-object v1, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 572
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 573
    return-void

    .line 560
    .end local v0    # "availableActions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to set actions on a view without a slice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTint(I)V
    .locals 0
    .param p1, "tintColor"    # I

    .line 615
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setAccentColor(I)V

    .line 616
    return-void
.end method
