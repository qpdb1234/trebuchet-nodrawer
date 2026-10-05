.class public abstract Landroidx/slice/widget/SliceChildView;
.super Landroid/widget/FrameLayout;
.source "SliceChildView.java"


# instance fields
.field protected mInsetBottom:I

.field protected mInsetEnd:I

.field protected mInsetStart:I

.field protected mInsetTop:I

.field protected mLastUpdated:J

.field protected mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

.field protected mMode:I

.field protected mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field protected mShowLastUpdated:Z

.field protected mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field protected mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getLoadingActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 130
    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mMode:I

    return v0
.end method

.method public getSmallHeight()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public abstract resetView()V
.end method

.method public setActionLoading(Landroidx/slice/SliceItem;)V
    .locals 0
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 172
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 0
    .param p1, "allowTwoLines"    # Z

    .line 184
    return-void
.end method

.method public setInsets(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 77
    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    .line 78
    iput p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 79
    iput p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    .line 80
    iput p4, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    .line 81
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 0
    .param p1, "lastUpdated"    # J

    .line 151
    iput-wide p1, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    .line 152
    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "loadingActions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    return-void
.end method

.method public setMaxSmallHeight(I)V
    .locals 0
    .param p1, "maxSmallHeight"    # I

    .line 116
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 122
    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mMode:I

    .line 123
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 0
    .param p1, "showLastUpdated"    # Z

    .line 144
    iput-boolean p1, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    .line 145
    return-void
.end method

.method public setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0
    .param p1, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 158
    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 159
    return-void
.end method

.method public setSliceActionLoadingListener(Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    .line 165
    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    .line 166
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 0
    .param p1, "content"    # Landroidx/slice/widget/ListContent;

    .line 71
    return-void
.end method

.method public setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0
    .param p1, "slice"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z
    .param p3, "rowIndex"    # I
    .param p4, "rowCount"    # I
    .param p5, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 89
    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;)V
    .locals 0
    .param p1, "styles"    # Landroidx/slice/widget/SliceStyle;

    .line 194
    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 195
    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1, "tintColor"    # I

    .line 137
    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 138
    return-void
.end method
