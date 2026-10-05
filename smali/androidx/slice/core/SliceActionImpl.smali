.class public Landroidx/slice/core/SliceActionImpl;
.super Ljava/lang/Object;
.source "SliceActionImpl.java"

# interfaces
.implements Landroidx/slice/core/SliceAction;


# instance fields
.field private mAction:Landroid/app/PendingIntent;

.field private mActionItem:Landroidx/slice/SliceItem;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mImageMode:I

.field private mIsActivity:Z

.field private mIsChecked:Z

.field private mIsToggle:Z

.field private mPriority:I

.field private mSliceItem:Landroidx/slice/SliceItem;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "actionIcon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p3, "imageMode"    # I
    .param p4, "actionTitle"    # Ljava/lang/CharSequence;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 103
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 104
    iput-object p2, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 105
    iput-object p4, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 106
    iput p3, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "actionIcon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p3, "actionTitle"    # Ljava/lang/CharSequence;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "actionIcon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p3, "actionTitle"    # Ljava/lang/CharSequence;
    .param p4, "isChecked"    # Z

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    .line 122
    iput-boolean p4, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "actionTitle"    # Ljava/lang/CharSequence;
    .param p3, "isChecked"    # Z

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 136
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 137
    iput-object p2, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    .line 139
    iput-boolean p3, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 8
    .param p1, "slice"    # Landroidx/slice/SliceItem;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 152
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 153
    const-string v1, "action"

    invoke-static {p1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 154
    .local v1, "actionItem":Landroidx/slice/SliceItem;
    if-nez v1, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    iput-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    .line 159
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 160
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    const-string v3, "image"

    invoke-static {v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 161
    .local v2, "iconItem":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 163
    const-string v3, "no_tint"

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    const-string v3, "large"

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput v3, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 167
    :cond_3
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    const-string/jumbo v4, "title"

    const/4 v5, 0x0

    const-string/jumbo v6, "text"

    invoke-static {v3, v6, v4, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 169
    .local v3, "titleItem":Landroidx/slice/SliceItem;
    if-eqz v3, :cond_4

    .line 170
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 172
    :cond_4
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v5, "content_description"

    invoke-static {v4, v6, v5}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    .line 174
    .local v4, "cdItem":Landroidx/slice/SliceItem;
    if-eqz v4, :cond_5

    .line 175
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 177
    :cond_5
    const-string/jumbo v5, "toggle"

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    .line 178
    if-eqz v5, :cond_6

    .line 179
    const-string v5, "selected"

    invoke-virtual {v1, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    .line 181
    :cond_6
    iget-object v5, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    .line 182
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v5

    const-string v6, "int"

    const-string v7, "priority"

    invoke-static {v5, v6, v7}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    .line 184
    .local v5, "priority":Landroidx/slice/SliceItem;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    :cond_7
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 185
    return-void
.end method

.method private buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;
    .locals 5
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 339
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 340
    .local v0, "sb":Landroidx/slice/Slice$Builder;
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 341
    iget v4, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    if-nez v4, :cond_0

    new-array v4, v3, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, "no_tint"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "hints":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1, v2, v4}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 346
    .end local v4    # "hints":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 347
    const-string/jumbo v4, "title"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 349
    :cond_2
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 350
    const-string v2, "content_description"

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 352
    :cond_3
    iget-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    if-eqz v1, :cond_4

    .line 353
    const-string v1, "selected"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 355
    :cond_4
    iget v1, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 356
    const-string v2, "priority"

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 358
    :cond_5
    iget-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    if-eqz v1, :cond_6

    .line 359
    const-string v1, "activity"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 361
    :cond_6
    return-object v0
.end method


# virtual methods
.method public buildPrimaryActionSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 3
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 333
    invoke-direct {p0, p1}, Landroidx/slice/core/SliceActionImpl;->buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string/jumbo v1, "shortcut"

    const-string/jumbo v2, "title"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 4
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 322
    const-string/jumbo v0, "shortcut"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 323
    invoke-direct {p0, p1}, Landroidx/slice/core/SliceActionImpl;->buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Landroid/app/PendingIntent;
    .locals 1

    .line 222
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getActionItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 230
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 258
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 240
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 290
    iget v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 266
    iget v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    return v0
.end method

.method public getSliceItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 307
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .line 369
    iget-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "toggle"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 249
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isActivity()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    return v0
.end method

.method public isDefaultToggle()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isToggle()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    return v0
.end method

.method public setActivity(Z)V
    .locals 0
    .param p1, "isActivity"    # Z

    .line 373
    iput-boolean p1, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    .line 374
    return-void
.end method

.method public bridge synthetic setChecked(Z)Landroidx/slice/core/SliceAction;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceActionImpl;->setChecked(Z)Landroidx/slice/core/SliceActionImpl;

    move-result-object p1

    return-object p1
.end method

.method public setChecked(Z)Landroidx/slice/core/SliceActionImpl;
    .locals 0
    .param p1, "isChecked"    # Z

    .line 203
    iput-boolean p1, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    .line 204
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/core/SliceAction;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceActionImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/core/SliceActionImpl;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/core/SliceActionImpl;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 193
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 194
    return-object p0
.end method

.method public bridge synthetic setPriority(I)Landroidx/slice/core/SliceAction;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceActionImpl;->setPriority(I)Landroidx/slice/core/SliceActionImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(I)Landroidx/slice/core/SliceActionImpl;
    .locals 0
    .param p1, "priority"    # I

    .line 212
    iput p1, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 213
    return-object p0
.end method
