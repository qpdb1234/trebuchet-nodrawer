.class public Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LargeSliceAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/LargeSliceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliceViewHolder"
.end annotation


# instance fields
.field public final mSliceChildView:Landroidx/slice/widget/SliceChildView;

.field final synthetic this$0:Landroidx/slice/widget/LargeSliceAdapter;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/LargeSliceAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/slice/widget/LargeSliceAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 321
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    .line 322
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 323
    instance-of v0, p2, Landroidx/slice/widget/SliceChildView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/slice/widget/SliceChildView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 324
    return-void
.end method


# virtual methods
.method bind(Landroidx/slice/SliceItem;I)V
    .locals 18
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "position"    # I

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v1, :cond_a

    if-nez v7, :cond_0

    goto/16 :goto_8

    .line 331
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/slice/widget/SliceChildView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v1, v0}, Landroidx/slice/widget/SliceChildView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setSliceActionLoadingListener(Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    .line 339
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_1

    move v1, v9

    goto :goto_0

    :cond_1
    move v1, v10

    :goto_0
    move v11, v1

    .line 340
    .local v11, "isFirstPosition":Z
    invoke-static/range {p1 .. p1}, Landroidx/slice/widget/ListContent;->isValidHeader(Landroidx/slice/SliceItem;)Z

    move-result v12

    .line 341
    .local v12, "isHeader":Z
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v1, v1, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    const/4 v13, 0x2

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v1, v1, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    move v14, v1

    .line 342
    .local v14, "mode":I
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v2, v2, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 343
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v1, v14}, Landroidx/slice/widget/SliceChildView;->setMode(I)V

    .line 344
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget v2, v2, Landroidx/slice/widget/LargeSliceAdapter;->mMaxSmallHeight:I

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setMaxSmallHeight(I)V

    .line 345
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget v2, v2, Landroidx/slice/widget/LargeSliceAdapter;->mColor:I

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 346
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v2, v2, Landroidx/slice/widget/LargeSliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    .line 347
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v11, :cond_3

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-boolean v2, v2, Landroidx/slice/widget/LargeSliceAdapter;->mShowLastUpdated:Z

    if-eqz v2, :cond_3

    move v2, v9

    goto :goto_2

    :cond_3
    move v2, v10

    :goto_2
    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 348
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v11, :cond_4

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-wide v2, v2, Landroidx/slice/widget/LargeSliceAdapter;->mLastUpdated:J

    goto :goto_3

    :cond_4
    const-wide/16 v2, -0x1

    :goto_3
    invoke-virtual {v1, v2, v3}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 350
    if-nez v8, :cond_5

    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget v1, v1, Landroidx/slice/widget/LargeSliceAdapter;->mInsetTop:I

    goto :goto_4

    :cond_5
    move v1, v10

    :goto_4
    move v15, v1

    .line 351
    .local v15, "top":I
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v1}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v9

    if-ne v8, v1, :cond_6

    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget v1, v1, Landroidx/slice/widget/LargeSliceAdapter;->mInsetBottom:I

    goto :goto_5

    :cond_6
    move v1, v10

    :goto_5
    move v6, v1

    .line 352
    .local v6, "bottom":I
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget v2, v2, Landroidx/slice/widget/LargeSliceAdapter;->mInsetStart:I

    iget-object v3, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget v3, v3, Landroidx/slice/widget/LargeSliceAdapter;->mInsetEnd:I

    invoke-virtual {v1, v2, v15, v3, v6}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 353
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    instance-of v2, v1, Landroidx/slice/widget/RowView;

    if-eqz v2, :cond_8

    .line 354
    check-cast v1, Landroidx/slice/widget/RowView;

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v2}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v2

    if-ne v2, v9, :cond_7

    move v2, v9

    goto :goto_6

    :cond_7
    move v2, v10

    :goto_6
    invoke-virtual {v1, v2}, Landroidx/slice/widget/RowView;->setSingleItem(Z)V

    .line 356
    :cond_8
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-boolean v2, v2, Landroidx/slice/widget/LargeSliceAdapter;->mAllowTwoLines:Z

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setAllowTwoLines(Z)V

    .line 357
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v11, :cond_9

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v2, v2, Landroidx/slice/widget/LargeSliceAdapter;->mSliceActions:Ljava/util/List;

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 358
    iget-object v1, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v2}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v5

    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v4, v2, Landroidx/slice/widget/LargeSliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    move-object/from16 v2, p1

    move v3, v12

    move-object/from16 v16, v4

    move/from16 v4, p2

    move/from16 v17, v6

    .end local v6    # "bottom":I
    .local v17, "bottom":I
    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroidx/slice/widget/SliceChildView;->setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 359
    new-array v1, v13, [I

    .line 360
    .local v1, "info":[I
    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v2, v2, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v3, v3, Landroidx/slice/widget/LargeSliceAdapter;->mSliceActions:Ljava/util/List;

    invoke-static {v2, v7, v12, v3}, Landroidx/slice/widget/ListContent;->getRowType(Landroid/content/Context;Landroidx/slice/SliceItem;ZLjava/util/List;)I

    move-result v2

    aput v2, v1, v10

    .line 361
    aput v8, v1, v9

    .line 362
    iget-object v2, v0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2, v1}, Landroidx/slice/widget/SliceChildView;->setTag(Ljava/lang/Object;)V

    .line 363
    return-void

    .line 328
    .end local v1    # "info":[I
    .end local v11    # "isFirstPosition":Z
    .end local v12    # "isHeader":Z
    .end local v14    # "mode":I
    .end local v15    # "top":I
    .end local v17    # "bottom":I
    :cond_a
    :goto_8
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 367
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setClickInfo([I)V

    .line 369
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceView;->performClick()Z

    .line 371
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 375
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/LargeSliceAdapter;->mTemplateView:Landroidx/slice/widget/LargeTemplateView;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/LargeSliceAdapter;->mTemplateView:Landroidx/slice/widget/LargeTemplateView;

    invoke-virtual {v0, p2}, Landroidx/slice/widget/LargeTemplateView;->onForegroundActivated(Landroid/view/MotionEvent;)V

    .line 378
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
