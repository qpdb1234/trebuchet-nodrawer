.class public Landroidx/slice/widget/LargeSliceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LargeSliceAdapter.java"

# interfaces
.implements Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;,
        Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;,
        Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;",
        ">;",
        "Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;"
    }
.end annotation


# static fields
.field static final HEADER_INDEX:I = 0x0

.field static final TYPE_DEFAULT:I = 0x1

.field static final TYPE_GRID:I = 0x3

.field static final TYPE_HEADER:I = 0x2

.field static final TYPE_MESSAGE:I = 0x4

.field static final TYPE_MESSAGE_LOCAL:I = 0x5


# instance fields
.field mAllowTwoLines:Z

.field mColor:I

.field final mContext:Landroid/content/Context;

.field private final mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

.field mInsetBottom:I

.field mInsetEnd:I

.field mInsetStart:I

.field mInsetTop:I

.field mLastUpdated:J

.field mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field mMaxSmallHeight:I

.field mParent:Landroidx/slice/widget/SliceView;

.field mShowLastUpdated:Z

.field mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field private mSlices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mTemplateView:Landroidx/slice/widget/LargeTemplateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    new-instance v0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    invoke-direct {v0}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    .line 101
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeSliceAdapter;->setHasStableIds(Z)V

    .line 103
    return-void
.end method

.method private inflateForType(I)Landroid/view/View;
    .locals 4
    .param p1, "viewType"    # I

    .line 268
    new-instance v0, Landroidx/slice/widget/RowView;

    iget-object v1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/slice/widget/RowView;-><init>(Landroid/content/Context;)V

    .line 269
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 277
    :pswitch_0
    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroidx/slice/view/R$layout;->abc_slice_message_local:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroidx/slice/view/R$layout;->abc_slice_message:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 275
    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroidx/slice/view/R$layout;->abc_slice_grid:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 272
    nop

    .line 281
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyHeaderChanged()V
    .locals 1

    .line 262
    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyItemChanged(I)V

    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 252
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 247
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    iget-wide v0, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mId:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 242
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    iget v0, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mType:I

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

    .line 202
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 52
    check-cast p1, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/LargeSliceAdapter;->onBindViewHolder(Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;
    .param p2, "position"    # I

    .line 257
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    .line 258
    .local v0, "slice":Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1, v1, p2}, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->bind(Landroidx/slice/SliceItem;I)V

    .line 259
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/LargeSliceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 225
    invoke-direct {p0, p2}, Landroidx/slice/widget/LargeSliceAdapter;->inflateForType(I)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v1, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;

    invoke-direct {v1, p0, v0}, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;-><init>(Landroidx/slice/widget/LargeSliceAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public onSliceActionLoading(Landroidx/slice/SliceItem;I)V
    .locals 1
    .param p1, "actionItem"    # Landroidx/slice/SliceItem;
    .param p2, "position"    # I

    .line 207
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 209
    invoke-virtual {p0, p2}, Landroidx/slice/widget/LargeSliceAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyDataSetChanged()V

    .line 213
    :goto_0
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 0
    .param p1, "allowTwoLines"    # Z

    .line 219
    iput-boolean p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mAllowTwoLines:Z

    .line 220
    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    .line 221
    return-void
.end method

.method public setInsets(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 119
    iput p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mInsetStart:I

    .line 120
    iput p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mInsetTop:I

    .line 121
    iput p3, p0, Landroidx/slice/widget/LargeSliceAdapter;->mInsetEnd:I

    .line 122
    iput p4, p0, Landroidx/slice/widget/LargeSliceAdapter;->mInsetBottom:I

    .line 123
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 2
    .param p1, "lastUpdated"    # J

    .line 180
    iget-wide v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLastUpdated:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 181
    iput-wide p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLastUpdated:J

    .line 182
    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    .line 184
    :cond_0
    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "actions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    if-nez p1, :cond_0

    .line 191
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 193
    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    .line 195
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyDataSetChanged()V

    .line 196
    return-void
.end method

.method public setMaxSmallHeight(I)V
    .locals 1
    .param p1, "maxSmallHeight"    # I

    .line 234
    iget v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mMaxSmallHeight:I

    if-eq v0, p1, :cond_0

    .line 235
    iput p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mMaxSmallHeight:I

    .line 236
    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    .line 238
    :cond_0
    return-void
.end method

.method public setParents(Landroidx/slice/widget/SliceView;Landroidx/slice/widget/LargeTemplateView;)V
    .locals 0
    .param p1, "parent"    # Landroidx/slice/widget/SliceView;
    .param p2, "templateView"    # Landroidx/slice/widget/LargeTemplateView;

    .line 109
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    .line 110
    iput-object p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mTemplateView:Landroidx/slice/widget/LargeTemplateView;

    .line 111
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1
    .param p1, "showLastUpdated"    # Z

    .line 170
    iget-boolean v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mShowLastUpdated:Z

    if-eq v0, p1, :cond_0

    .line 171
    iput-boolean p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mShowLastUpdated:Z

    .line 172
    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    .line 174
    :cond_0
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

    .line 136
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceActions:Ljava/util/List;

    .line 137
    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    .line 138
    return-void
.end method

.method public setSliceItems(Ljava/util/List;II)V
    .locals 5
    .param p2, "color"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;II)V"
        }
    .end annotation

    .line 144
    .local p1, "slices":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    if-nez p1, :cond_0

    .line 145
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 146
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 148
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    invoke-virtual {v0}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->resetUsage()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    .line 151
    .local v1, "s":Landroidx/slice/SliceItem;
    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    new-instance v3, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    invoke-direct {v3, v1, v4, p3}, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;-><init>(Landroidx/slice/SliceItem;Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v1    # "s":Landroidx/slice/SliceItem;
    goto :goto_0

    .line 154
    :cond_1
    :goto_1
    iput p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mColor:I

    .line 155
    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyDataSetChanged()V

    .line 156
    return-void
.end method

.method public setSliceObserver(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0
    .param p1, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 129
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 130
    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;)V
    .locals 0
    .param p1, "style"    # Landroidx/slice/widget/SliceStyle;

    .line 162
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 163
    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyDataSetChanged()V

    .line 164
    return-void
.end method
