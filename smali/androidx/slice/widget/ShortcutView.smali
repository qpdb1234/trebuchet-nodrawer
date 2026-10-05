.class public Landroidx/slice/widget/ShortcutView;
.super Landroidx/slice/widget/SliceChildView;
.source "ShortcutView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutView"


# instance fields
.field private mActionItem:Landroidx/slice/SliceItem;

.field private mIcon:Landroidx/slice/SliceItem;

.field private mLabel:Landroidx/slice/SliceItem;

.field private mLargeIconSize:I

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallIconSize:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    .line 72
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_shortcut_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    .line 73
    return-void
.end method

.method private useAppDataAsFallbackItems(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 158
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    .line 159
    .local v0, "slice":Landroidx/slice/Slice;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 160
    .local v1, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 161
    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 160
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 162
    .local v2, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 163
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_3

    .line 164
    iget-object v5, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    if-nez v5, :cond_1

    .line 165
    :cond_0
    new-instance v5, Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 166
    .local v5, "sb":Landroidx/slice/Slice$Builder;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 167
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Landroidx/slice/widget/SliceViewUtil;->createIconFromDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    const-string v8, "large"

    new-array v9, v3, [Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 168
    invoke-virtual {v5}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/SliceItem;

    iput-object v7, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    .line 170
    .end local v5    # "sb":Landroidx/slice/Slice$Builder;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v5, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-nez v5, :cond_2

    .line 171
    new-instance v5, Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 172
    .restart local v5    # "sb":Landroidx/slice/Slice$Builder;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v3, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 173
    invoke-virtual {v5}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    iput-object v6, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    .line 175
    .end local v5    # "sb":Landroidx/slice/Slice$Builder;
    :cond_2
    iget-object v5, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-nez v5, :cond_3

    .line 176
    new-instance v5, Landroidx/slice/SliceItem;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 177
    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 176
    invoke-static {p1, v3, v6, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v3, Landroidx/slice/Slice$Builder;

    .line 178
    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v6}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v8

    const-string v9, "action"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v5, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 182
    :cond_3
    return-void
.end method


# virtual methods
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

    .line 191
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mLoadingActions:Ljava/util/Set;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 120
    const/4 v0, 0x3

    return v0
.end method

.method public performClick()Z
    .locals 7

    .line 125
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 126
    return v1

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->callOnClick()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 130
    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0, v3, v3}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 137
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_3

    .line 138
    new-instance v0, Landroidx/slice/widget/EventInfo;

    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-direct {v0, v4, v2, v5, v1}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 141
    .local v0, "ei":Landroidx/slice/widget/EventInfo;
    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/slice/SliceItem;

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 143
    invoke-virtual {v4}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string/jumbo v5, "slice"

    iget-object v6, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 144
    invoke-virtual {v6}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v4, v5, v3, v6}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    nop

    .line 145
    .local v1, "interactedItem":Landroidx/slice/SliceItem;
    iget-object v3, p0, Landroidx/slice/widget/ShortcutView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {v3, v0, v1}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "ei":Landroidx/slice/widget/EventInfo;
    .end local v1    # "interactedItem":Landroidx/slice/SliceItem;
    :cond_3
    goto :goto_2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "ShortcutView"

    const-string v3, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_4
    :goto_2
    return v2
.end method

.method public resetView()V
    .locals 1

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 197
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    .line 198
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 199
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    .line 200
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    .line 201
    invoke-virtual {p0, v0}, Landroidx/slice/widget/ShortcutView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->removeAllViews()V

    .line 203
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

    .line 186
    .local p1, "actions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mLoadingActions:Ljava/util/Set;

    .line 187
    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 9
    .param p1, "sliceContent"    # Landroidx/slice/widget/ListContent;

    .line 77
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->resetView()V

    .line 78
    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 79
    if-nez p1, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroidx/slice/widget/ShortcutContent;

    invoke-direct {v0, p1}, Landroidx/slice/widget/ShortcutContent;-><init>(Landroidx/slice/widget/ListContent;)V

    .line 83
    .local v0, "shortcutContent":Landroidx/slice/widget/ShortcutContent;
    invoke-virtual {v0}, Landroidx/slice/widget/ShortcutContent;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 84
    invoke-virtual {v0}, Landroidx/slice/widget/ShortcutContent;->getIcon()Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    .line 85
    invoke-virtual {v0}, Landroidx/slice/widget/ShortcutContent;->getLabel()Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    .line 86
    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-nez v1, :cond_2

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/slice/widget/ShortcutView;->useAppDataAsFallbackItems(Landroid/content/Context;)V

    .line 89
    :cond_2
    invoke-virtual {v0}, Landroidx/slice/widget/ShortcutContent;->getColorItem()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 90
    .local v1, "colorItem":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    :goto_0
    nop

    .line 93
    .local v2, "color":I
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 94
    .local v3, "circle":Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 95
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v4, "iv":Landroid/widget/ImageView;
    iget-object v5, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    const-string v6, "no_tint"

    if-eqz v5, :cond_4

    invoke-virtual {v5, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 98
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_4
    invoke-virtual {p0, v4}, Landroidx/slice/widget/ShortcutView;->addView(Landroid/view/View;)V

    .line 101
    iget-object v5, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v5, :cond_6

    .line 102
    invoke-virtual {v5, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    .line 103
    .local v5, "isImage":Z
    if-eqz v5, :cond_5

    iget v6, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    goto :goto_1

    :cond_5
    iget v6, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    .line 104
    .local v6, "iconSize":I
    :goto_1
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    invoke-static {v7, v6, v8, v5, p0}, Landroidx/slice/widget/SliceViewUtil;->createCircledIcon(Landroid/content/Context;ILandroidx/core/graphics/drawable/IconCompat;ZLandroid/view/ViewGroup;)V

    .line 106
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    .line 107
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroidx/slice/widget/ShortcutView;->setClickable(Z)V

    .line 108
    .end local v5    # "isImage":Z
    .end local v6    # "iconSize":I
    goto :goto_2

    .line 109
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroidx/slice/widget/ShortcutView;->setClickable(Z)V

    .line 113
    :goto_2
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    invoke-virtual {p0, v5}, Landroidx/slice/widget/ShortcutView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method
