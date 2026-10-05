.class public Landroidx/slice/SliceUtils;
.super Ljava/lang/Object;
.source "SliceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceUtils$SliceParseException;,
        Landroidx/slice/SliceUtils$SliceActionListener;,
        Landroidx/slice/SliceUtils$SerializeOptions;
    }
.end annotation


# static fields
.field public static final LOADING_ALL:I = 0x0

.field public static final LOADING_COMPLETE:I = 0x2

.field public static final LOADING_PARTIAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static convert(Landroid/content/Context;Landroidx/core/graphics/drawable/IconCompat;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;

    .line 294
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    invoke-static {p1, p0, p2}, Landroidx/slice/SliceXml;->convertToBytes(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)[B

    move-result-object v0

    .line 299
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithData([BII)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    return-object v1

    .line 296
    .end local v0    # "data":[B
    :pswitch_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slice"    # Landroidx/slice/Slice;
    .param p2, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;

    .line 228
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 229
    .local v0, "builder":Landroidx/slice/Slice$Builder;
    invoke-virtual {p1}, Landroidx/slice/Slice;->getSpec()Landroidx/slice/SliceSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->setSpec(Landroidx/slice/SliceSpec;)Landroidx/slice/Slice$Builder;

    .line 230
    invoke-virtual {p1}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 231
    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    .line 232
    .local v2, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, "slice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string v4, "input"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_2
    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_3
    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_4
    const-string v4, "long"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_5
    const-string v4, "int"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_6
    const-string v4, "action"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    .line 282
    :pswitch_0
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_5

    .line 279
    :pswitch_1
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 280
    goto/16 :goto_5

    .line 276
    :pswitch_2
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 277
    goto/16 :goto_5

    .line 257
    :pswitch_3
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_3

    .line 264
    :pswitch_4
    new-instance v3, Landroidx/slice/SliceUtils$1;

    invoke-direct {v3}, Landroidx/slice/SliceUtils$1;-><init>()V

    .line 270
    .local v3, "action":Landroidx/slice/SliceItem$ActionHandler;
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-static {p0, v4, p2}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;

    move-result-object v4

    .line 271
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addAction(Landroidx/slice/SliceItem$ActionHandler;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_3

    .line 262
    .end local v3    # "action":Landroidx/slice/SliceItem$ActionHandler;
    :pswitch_5
    goto :goto_3

    .line 259
    :pswitch_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot serialize action"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :goto_3
    goto :goto_5

    .line 251
    :pswitch_7
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result v3

    if-nez v3, :cond_1

    .line 252
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    .line 252
    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto :goto_5

    .line 238
    :pswitch_8
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getImageMode()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    goto :goto_4

    .line 245
    :pswitch_9
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-static {p0, v3, p2}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/core/graphics/drawable/IconCompat;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    .line 246
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    .line 245
    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto :goto_4

    .line 243
    :pswitch_a
    goto :goto_4

    .line 240
    :pswitch_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot serialize icon"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :goto_4
    goto :goto_5

    .line 234
    :pswitch_c
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    invoke-static {p0, v3, p2}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;

    move-result-object v3

    .line 235
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-virtual {v0, v3, v4}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 236
    nop

    .line 285
    .end local v2    # "item":Landroidx/slice/SliceItem;
    :cond_1
    :goto_5
    goto/16 :goto_0

    .line 286
    :cond_2
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private static copyMetadata(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;
    .locals 12
    .param p0, "s"    # Landroidx/slice/Slice;

    .line 134
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 137
    .local v0, "slice":Landroidx/slice/Slice$Builder;
    const-string v1, "long"

    const-string/jumbo v2, "ttl"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    .line 138
    .local v4, "ttlItem":Landroidx/slice/SliceItem;
    const-string v5, "millis"

    if-eqz v4, :cond_0

    .line 139
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v6

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v7, v5, v2}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 143
    :cond_0
    const-string v2, "last_updated"

    invoke-static {p0, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 145
    .local v1, "updatedItem":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v6

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v7, v5, v2}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 150
    :cond_1
    const-string v2, "int"

    const-string v5, "color"

    invoke-static {p0, v2, v5, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    .line 151
    .local v6, "colorItem":Landroidx/slice/SliceItem;
    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 152
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getInt()I

    move-result v8

    new-array v9, v7, [Ljava/lang/String;

    invoke-virtual {v0, v8, v5, v9}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 156
    :cond_2
    const-string v5, "layout_direction"

    invoke-static {p0, v2, v5, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 158
    .local v2, "layoutDirItem":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v8

    new-array v9, v7, [Ljava/lang/String;

    invoke-virtual {v0, v8, v5, v9}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 163
    :cond_3
    invoke-static {p0}, Landroidx/slice/SliceUtils;->getSliceKeywords(Landroidx/slice/Slice;)Ljava/util/List;

    move-result-object v5

    .line 164
    .local v5, "keyWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 165
    new-instance v8, Landroidx/slice/Slice$Builder;

    invoke-direct {v8, v0}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 166
    .local v8, "sb":Landroidx/slice/Slice$Builder;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 167
    .local v10, "keyword":Ljava/lang/String;
    new-array v11, v7, [Ljava/lang/String;

    invoke-virtual {v8, v10, v3, v11}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 168
    .end local v10    # "keyword":Ljava/lang/String;
    goto :goto_0

    .line 169
    :cond_4
    const-string v3, "keywords"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 173
    .end local v8    # "sb":Landroidx/slice/Slice$Builder;
    :cond_5
    invoke-virtual {p0}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 175
    invoke-virtual {v0, v3}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 177
    :cond_6
    return-object v0
.end method

.method private static doesStreamStartWith(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z
    .locals 4
    .param p0, "parcelName"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 357
    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 358
    .local v0, "data":[B
    array-length v1, v0

    new-array v1, v1, [B

    .line 361
    .local v1, "buf":[B
    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    .line 362
    return v3

    .line 364
    :cond_0
    array-length v2, v1

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_1

    .line 365
    return v3

    .line 367
    :cond_1
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 368
    :catch_0
    move-exception v2

    .line 369
    .local v2, "e":Ljava/io/IOException;
    return v3
.end method

.method public static getLoadingState(Landroidx/slice/Slice;)I
    .locals 4
    .param p0, "slice"    # Landroidx/slice/Slice;

    .line 568
    nop

    .line 569
    const/4 v0, 0x0

    const-string v1, "partial"

    invoke-static {p0, v0, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 570
    .local v0, "hasHintPartial":Z
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 572
    return v2

    .line 573
    :cond_1
    if-eqz v0, :cond_2

    .line 575
    return v1

    .line 578
    :cond_2
    const/4 v1, 0x2

    return v1
.end method

.method public static getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;
    .locals 5
    .param p0, "slice"    # Landroidx/slice/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 590
    const-string/jumbo v0, "slice"

    const-string v1, "actions"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 591
    .local v3, "actionGroup":Landroidx/slice/SliceItem;
    const-string/jumbo v4, "shortcut"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "hints":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 593
    invoke-static {v3, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return-object v2
.end method

.method public static getSliceKeywords(Landroidx/slice/Slice;)Ljava/util/List;
    .locals 6
    .param p0, "slice"    # Landroidx/slice/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 606
    const-string/jumbo v0, "slice"

    const-string v1, "keywords"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 607
    .local v0, "keywordGroup":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_2

    .line 608
    const-string/jumbo v1, "text"

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 609
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    if-eqz v1, :cond_2

    .line 610
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v2, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 612
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 613
    .local v4, "keyword":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 614
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    .end local v4    # "keyword":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 617
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 620
    .end local v1    # "itemList":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v2    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v2
.end method

.method public static parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "listener"    # Landroidx/slice/SliceUtils$SliceActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/slice/SliceUtils$SliceParseException;
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 319
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const-class v1, Landroidx/slice/Slice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "parcelName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 322
    invoke-static {v1, v0}, Landroidx/slice/SliceUtils;->doesStreamStartWith(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z

    move-result v2

    .line 323
    .local v2, "usesParcel":Z
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 324
    if-eqz v2, :cond_0

    .line 325
    invoke-static {v0}, Landroidx/versionedparcelable/ParcelUtils;->fromInputStream(Ljava/io/InputStream;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v3

    check-cast v3, Landroidx/slice/Slice;

    .line 326
    .local v3, "slice":Landroidx/slice/Slice;
    new-instance v4, Landroidx/slice/SliceUtils$2;

    invoke-direct {v4, p3}, Landroidx/slice/SliceUtils$2;-><init>(Landroidx/slice/SliceUtils$SliceActionListener;)V

    invoke-static {v3, v4, p0}, Landroidx/slice/SliceUtils;->setActionsAndUpdateIcons(Landroidx/slice/Slice;Landroidx/slice/SliceItem$ActionHandler;Landroid/content/Context;)V

    .line 332
    return-object v3

    .line 334
    .end local v3    # "slice":Landroidx/slice/Slice;
    :cond_0
    invoke-static {p0, v0, p2, p3}, Landroidx/slice/SliceXml;->parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;

    move-result-object v3

    return-object v3
.end method

.method public static serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 1
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 218
    invoke-static {p1, p0, p3}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;

    move-result-object v0

    .line 219
    .local v0, "converted":Landroidx/slice/Slice;
    invoke-static {v0, p2}, Landroidx/versionedparcelable/ParcelUtils;->toOutputStream(Landroidx/versionedparcelable/VersionedParcelable;Ljava/io/OutputStream;)V

    .line 220
    return-void
.end method

.method public static serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 0
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 199
    invoke-static {p0, p1, p2, p4}, Landroidx/slice/SliceUtils;->serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Landroidx/slice/SliceUtils$SerializeOptions;)V

    .line 200
    return-void
.end method

.method private static setActionsAndUpdateIcons(Landroidx/slice/Slice;Landroidx/slice/SliceItem$ActionHandler;Landroid/content/Context;)V
    .locals 4
    .param p0, "slice"    # Landroidx/slice/Slice;
    .param p1, "listener"    # Landroidx/slice/SliceItem$ActionHandler;
    .param p2, "context"    # Landroid/content/Context;

    .line 339
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    .line 340
    .local v1, "sliceItem":Landroidx/slice/SliceItem;
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string/jumbo v3, "slice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_1
    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_2
    const-string v3, "action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 350
    :pswitch_0
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroidx/slice/SliceUtils;->setActionsAndUpdateIcons(Landroidx/slice/Slice;Landroidx/slice/SliceItem$ActionHandler;Landroid/content/Context;)V

    goto :goto_3

    .line 345
    :pswitch_1
    new-instance v2, Landroidx/core/util/Pair;

    iget-object v3, v1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v3, Landroidx/core/util/Pair;

    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v2, p1, v3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 347
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroidx/slice/SliceUtils;->setActionsAndUpdateIcons(Landroidx/slice/Slice;Landroidx/slice/SliceItem$ActionHandler;Landroid/content/Context;)V

    .line 348
    goto :goto_3

    .line 342
    :pswitch_2
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    .line 343
    nop

    .line 353
    .end local v1    # "sliceItem":Landroidx/slice/SliceItem;
    :goto_3
    goto :goto_0

    .line 354
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static stripSlice(Landroidx/slice/Slice;IZ)Landroidx/slice/Slice;
    .locals 8
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "mode"    # I
    .param p2, "isScrollable"    # Z

    .line 103
    new-instance v6, Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V

    .line 104
    .local v0, "listContent":Landroidx/slice/widget/ListContent;
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-static {p0}, Landroidx/slice/SliceUtils;->copyMetadata(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    .line 106
    .local v1, "slice":Landroidx/slice/Slice$Builder;
    packed-switch p1, :pswitch_data_0

    .line 124
    :pswitch_0
    return-object p0

    .line 108
    :pswitch_1
    new-instance v2, Landroidx/slice/widget/ShortcutContent;

    invoke-direct {v2, v0}, Landroidx/slice/widget/ShortcutContent;-><init>(Landroidx/slice/widget/ListContent;)V

    invoke-virtual {v2, v1}, Landroidx/slice/widget/ShortcutContent;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v2

    return-object v2

    .line 110
    :pswitch_2
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getHeaderItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 111
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getSliceActions()Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 113
    new-instance v3, Landroidx/slice/Slice$Builder;

    invoke-direct {v3, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 114
    .local v3, "sb":Landroidx/slice/Slice$Builder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "actions"

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/core/SliceAction;

    .line 115
    .local v5, "action":Landroidx/slice/core/SliceAction;
    new-instance v7, Landroidx/slice/Slice$Builder;

    invoke-direct {v7, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v6

    .line 116
    .local v6, "b":Landroidx/slice/Slice$Builder;
    move-object v7, v5

    check-cast v7, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v7, v6}, Landroidx/slice/core/SliceActionImpl;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 117
    .end local v5    # "action":Landroidx/slice/core/SliceAction;
    .end local v6    # "b":Landroidx/slice/Slice$Builder;
    goto :goto_0

    .line 118
    :cond_0
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 120
    .end local v3    # "sb":Landroidx/slice/Slice$Builder;
    :cond_1
    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v3

    return-object v3

    .line 127
    .end local v1    # "slice":Landroidx/slice/Slice$Builder;
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    :cond_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
