.class public Landroidx/slice/SliceMetadata;
.super Ljava/lang/Object;
.source "SliceMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceMetadata$SliceLoadingState;
    }
.end annotation


# static fields
.field public static final LOADED_ALL:I = 0x2

.field public static final LOADED_NONE:I = 0x0

.field public static final LOADED_PARTIAL:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpiry:J

.field private mHeaderItem:Landroidx/slice/SliceItem;

.field private mLastUpdated:J

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

.field private mSlice:Landroidx/slice/Slice;

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateType:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slice"    # Landroidx/slice/Slice;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    .line 130
    iput-object p1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    .line 131
    const-string v0, "long"

    const-string/jumbo v1, "ttl"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 132
    .local v1, "ttlItem":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    .line 135
    :cond_0
    const-string v3, "last_updated"

    invoke-static {p2, v0, v3, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 136
    .local v0, "updatedItem":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    .line 140
    :cond_1
    new-instance v2, Landroidx/slice/widget/ListContent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    .line 141
    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getHeaderItem()Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    .line 142
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getHeaderTemplateType()I

    move-result v2

    iput v2, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    .line 143
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 144
    .local v2, "action":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_2

    .line 145
    new-instance v3, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v3, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v3, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    .line 148
    :cond_2
    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->getSliceActions()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    .line 149
    if-nez v3, :cond_5

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v3, :cond_5

    const-string v4, "list_item"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-static {v3, v4}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const-string v4, "horizontal"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-static {v3, v4}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 153
    new-instance v3, Landroidx/slice/widget/RowContent;

    iget-object v4, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 154
    .local v3, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getEndItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 155
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v5, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 157
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/SliceItem;

    const-string v8, "action"

    invoke-static {v7, v8}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 158
    new-instance v7, Landroidx/slice/core/SliceActionImpl;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/slice/SliceItem;

    invoke-direct {v7, v8}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 161
    .end local v6    # "i":I
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 162
    iput-object v5, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    .line 165
    .end local v3    # "rc":Landroidx/slice/widget/RowContent;
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v5    # "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    :cond_5
    return-void
.end method

.method public static from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 118
    new-instance v0, Landroidx/slice/SliceMetadata;

    invoke-direct {v0, p0, p1}, Landroidx/slice/SliceMetadata;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    return-object v0
.end method

.method public static getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;
    .locals 7
    .param p0, "slice"    # Landroidx/slice/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 471
    const-string/jumbo v0, "slice"

    const-string v1, "actions"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 472
    .local v3, "actionGroup":Landroidx/slice/SliceItem;
    const-string/jumbo v4, "shortcut"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "hints":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 474
    invoke-static {v3, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 476
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 477
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 478
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 479
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    .line 480
    .local v5, "item":Landroidx/slice/SliceItem;
    new-instance v6, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v6, v5}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    .end local v5    # "item":Landroidx/slice/SliceItem;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 482
    .end local v4    # "i":I
    :cond_1
    return-object v2

    .line 484
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getExpiry()J
    .locals 2

    .line 431
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    return-wide v0
.end method

.method public getHeaderType()I
    .locals 1

    .line 239
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    return v0
.end method

.method public getInputRangeAction()Landroid/app/PendingIntent;
    .locals 4

    .line 302
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 303
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 304
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 305
    .local v1, "range":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    .line 309
    .end local v0    # "rc":Landroidx/slice/widget/RowContent;
    .end local v1    # "range":Landroidx/slice/SliceItem;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    .line 439
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    return-wide v0
.end method

.method public getLoadingState()I
    .locals 4

    .line 409
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const/4 v1, 0x0

    const-string v2, "partial"

    invoke-static {v0, v1, v2, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 410
    .local v0, "hasHintPartial":Z
    :goto_0
    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 412
    return v2

    .line 413
    :cond_1
    if-eqz v0, :cond_2

    .line 415
    return v1

    .line 418
    :cond_2
    const/4 v1, 0x2

    return v1
.end method

.method public getPrimaryAction()Landroidx/slice/core/SliceAction;
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    return-object v0
.end method

.method public getRange()Landroidx/core/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 345
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 347
    :cond_1
    :goto_0
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 348
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 349
    .local v1, "range":Landroidx/slice/SliceItem;
    const-string v2, "max"

    const-string v3, "int"

    invoke-static {v1, v3, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 350
    .local v2, "maxItem":Landroidx/slice/SliceItem;
    const-string v4, "min"

    invoke-static {v1, v3, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 351
    .local v3, "minItem":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v4

    goto :goto_1

    :cond_2
    const/16 v4, 0x64

    .line 352
    .local v4, "max":I
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getInt()I

    move-result v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 353
    .local v5, "min":I
    :goto_2
    new-instance v6, Landroidx/core/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public getRangeValue()I
    .locals 5

    .line 366
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    return v2

    .line 368
    :cond_1
    :goto_0
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 369
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 370
    .local v1, "range":Landroidx/slice/SliceItem;
    const-string v3, "int"

    const-string/jumbo v4, "value"

    invoke-static {v1, v3, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 371
    .local v3, "currentItem":Landroidx/slice/SliceItem;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    :cond_2
    return v2
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

    .line 224
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    return-object v0
.end method

.method public getSliceKeywords()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string/jumbo v1, "slice"

    const-string v2, "keywords"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 384
    .local v0, "keywordGroup":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_2

    .line 385
    const-string/jumbo v1, "text"

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 386
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    if-eqz v1, :cond_2

    .line 387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v2, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 389
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 390
    .local v4, "keyword":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 391
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v4    # "keyword":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 394
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 397
    .end local v1    # "itemList":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v2    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 4

    .line 196
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    const-string v1, "horizontal"

    invoke-virtual {v0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 198
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 202
    .end local v0    # "rc":Landroidx/slice/widget/RowContent;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 210
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    const-string v1, "horizontal"

    invoke-virtual {v0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 212
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 216
    .end local v0    # "rc":Landroidx/slice/widget/RowContent;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 5

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    .line 174
    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    new-instance v1, Landroidx/slice/widget/GridContent;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    invoke-direct {v1, v2, v3}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    .line 176
    .local v1, "gc":Landroidx/slice/widget/GridContent;
    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 177
    .end local v1    # "gc":Landroidx/slice/widget/GridContent;
    goto :goto_0

    .line 178
    :cond_0
    new-instance v1, Landroidx/slice/widget/RowContent;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 179
    .local v1, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 184
    .end local v1    # "rc":Landroidx/slice/widget/RowContent;
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 188
    :cond_2
    return-object v0
.end method

.method public getToggles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v0, "toggles":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_0
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 264
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 265
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/core/SliceAction;

    .line 266
    .local v2, "action":Landroidx/slice/core/SliceAction;
    invoke-interface {v2}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v2    # "action":Landroidx/slice/core/SliceAction;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 271
    :cond_3
    new-instance v1, Landroidx/slice/widget/RowContent;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 272
    .local v1, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getToggleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 274
    .end local v1    # "rc":Landroidx/slice/widget/RowContent;
    :goto_1
    return-object v0
.end method

.method public hasLargeMode()Z
    .locals 6

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "isHeaderFullGrid":Z
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v4, "horizontal"

    invoke-virtual {v1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    new-instance v1, Landroidx/slice/widget/GridContent;

    iget-object v4, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    invoke-direct {v1, v4, v5}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    .line 250
    .local v1, "gc":Landroidx/slice/widget/GridContent;
    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getMaxCellLineCount()I

    move-result v4

    if-le v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    move v0, v4

    .line 252
    .end local v1    # "gc":Landroidx/slice/widget/GridContent;
    :cond_1
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method public isErrorSlice()Z
    .locals 2

    .line 461
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermissionSlice()Z
    .locals 2

    .line 451
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "permission_request"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendInputRangeAction(I)Z
    .locals 7
    .param p1, "newValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 319
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 320
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 321
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 322
    .local v1, "range":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p0}, Landroidx/slice/SliceMetadata;->getRange()Landroidx/core/util/Pair;

    move-result-object v2

    .line 325
    .local v2, "validRange":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p1, v4, v5}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v4

    .line 326
    .local v4, "adjustedValue":I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 327
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 328
    const-string v6, "android.app.slice.extra.RANGE_VALUE"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 329
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 330
    return v3

    .line 333
    .end local v0    # "rc":Landroidx/slice/widget/RowContent;
    .end local v1    # "range":Landroidx/slice/SliceItem;
    .end local v2    # "validRange":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "adjustedValue":I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendToggleAction(Landroidx/slice/core/SliceAction;Z)Z
    .locals 8
    .param p1, "toggleAction"    # Landroidx/slice/core/SliceAction;
    .param p2, "toggleValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 286
    if-eqz p1, :cond_0

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 288
    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 290
    const/4 v1, 0x1

    return v1

    .line 292
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
