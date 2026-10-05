.class public Landroidx/slice/widget/ShortcutContent;
.super Ljava/lang/Object;
.source "ShortcutContent.java"


# instance fields
.field private mActionItem:Landroidx/slice/SliceItem;

.field private mColorItem:Landroidx/slice/SliceItem;

.field private final mHasTopLevelColorItem:Z

.field private mIcon:Landroidx/slice/SliceItem;

.field private mLabel:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/ListContent;)V
    .locals 9
    .param p1, "content"    # Landroidx/slice/widget/ListContent;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    .line 51
    .local v0, "slice":Landroidx/slice/Slice;
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getColorItem()Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutContent;->mColorItem:Landroidx/slice/SliceItem;

    .line 52
    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/slice/widget/ShortcutContent;->mHasTopLevelColorItem:Z

    .line 53
    if-nez v1, :cond_1

    .line 54
    const-string v1, "int"

    const-string v2, "color"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutContent;->mColorItem:Landroidx/slice/SliceItem;

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 59
    .local v1, "primaryAction":Landroidx/slice/SliceItem;
    const-string/jumbo v2, "text"

    const-string/jumbo v3, "title"

    const-string v4, "image"

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 60
    new-instance v6, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v6, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 61
    .local v6, "sliceAction":Landroidx/slice/core/SliceActionImpl;
    invoke-virtual {v6}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v7

    iput-object v7, p0, Landroidx/slice/widget/ShortcutContent;->mActionItem:Landroidx/slice/SliceItem;

    .line 62
    invoke-virtual {v6}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v7

    invoke-static {v7, v4, v3, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    iput-object v7, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    .line 63
    invoke-virtual {v6}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v2, v5, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    iput-object v7, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    .line 65
    .end local v6    # "sliceAction":Landroidx/slice/core/SliceActionImpl;
    :cond_2
    iget-object v6, p0, Landroidx/slice/widget/ShortcutContent;->mActionItem:Landroidx/slice/SliceItem;

    if-nez v6, :cond_3

    .line 67
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    const-string v6, "action"

    invoke-static {v0, v6, v5, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    iput-object v6, p0, Landroidx/slice/widget/ShortcutContent;->mActionItem:Landroidx/slice/SliceItem;

    .line 71
    :cond_3
    iget-object v6, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    if-nez v6, :cond_5

    .line 72
    :cond_4
    invoke-static {v0, v4, v3, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    iput-object v6, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    .line 74
    :cond_5
    iget-object v6, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    if-nez v6, :cond_6

    .line 75
    invoke-static {v0, v2, v3, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    .line 79
    :cond_6
    iget-object v3, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    if-nez v3, :cond_8

    .line 80
    :cond_7
    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v4, v5, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    .line 82
    :cond_8
    iget-object v3, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    if-nez v3, :cond_9

    .line 83
    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v2, v5, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    .line 85
    :cond_9
    return-void
.end method


# virtual methods
.method public buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 2
    .param p1, "s"    # Landroidx/slice/Slice$Builder;

    .line 107
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 108
    .local v0, "slice":Landroidx/slice/Slice$Builder;
    iget-object v1, p0, Landroidx/slice/widget/ShortcutContent;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 111
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 114
    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 118
    :cond_2
    iget-boolean v1, p0, Landroidx/slice/widget/ShortcutContent;->mHasTopLevelColorItem:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/slice/widget/ShortcutContent;->mColorItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 121
    :cond_3
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    return-object v1
.end method

.method public getActionItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/slice/widget/ShortcutContent;->mActionItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getColorItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/slice/widget/ShortcutContent;->mColorItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getIcon()Landroidx/slice/SliceItem;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getLabel()Landroidx/slice/SliceItem;
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    return-object v0
.end method
