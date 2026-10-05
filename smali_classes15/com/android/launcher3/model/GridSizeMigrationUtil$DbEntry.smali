.class public Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "GridSizeMigrationUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/GridSizeMigrationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DbEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "Ljava/lang/Comparable<",
        "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mFolderItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIntent:Ljava/lang/String;

.field private mProvider:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$LGja1cTyqJSYS0n7yszU1HKypTg(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->lambda$getFolderMigrationId$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->mFolderItems:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntent(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->mIntent:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProvider(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->mProvider:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIntent(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->mIntent:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProvider(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->mProvider:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 659
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 663
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->mFolderItems:Ljava/util/Map;

    return-void
.end method

.method private cleanIntentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "intentStr"    # Ljava/lang/String;

    .line 742
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 743
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 744
    invoke-virtual {v0}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 745
    .end local v0    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v1, "GridSizeMigrationUtil"

    const-string v2, "Unable to parse Intent string"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    return-object p1
.end method

.method private getFolderMigrationId()Ljava/lang/String;
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->mFolderItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)V

    .line 729
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 731
    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    .line 732
    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 728
    return-object v0
.end method

.method private synthetic lambda$getFolderMigrationId$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "intentString"    # Ljava/lang/String;

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->mFolderItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 730
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cleanIntentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)I
    .locals 2
    .param p1, "another"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    .line 668
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    if-eq v0, v1, :cond_0

    .line 669
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 671
    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellY:I

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellY:I

    if-eq v0, v1, :cond_1

    .line 672
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellY:I

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellY:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 674
    :cond_1
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellX:I

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellX:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 659
    check-cast p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->compareTo(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 679
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 680
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 681
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    .line 682
    .local v0, "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    invoke-virtual {p0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->getEntryMigrationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->getEntryMigrationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 680
    .end local v0    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEntryMigrationId()Ljava/lang/String;
    .locals 3

    .line 703
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->itemType:I

    sparse-switch v0, :sswitch_data_0

    .line 718
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->mIntent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cleanIntentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 708
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->mProvider:Ljava/lang/String;

    return-object v0

    .line 706
    :sswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->getFolderMigrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 710
    :sswitch_2
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->mIntent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cleanIntentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "intentStr":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 713
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 714
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 715
    .local v1, "e":Ljava/lang/Exception;
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 1

    .line 687
    invoke-virtual {p0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->getEntryMigrationId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public updateContentValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 691
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->spanX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    return-void
.end method
