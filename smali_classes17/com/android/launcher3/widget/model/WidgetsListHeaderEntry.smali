.class public final Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
.super Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
.source "WidgetsListHeaderEntry.java"


# static fields
.field private static final SUBTITLE_DEFAULT:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUBTITLE_SEARCH:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsSearchEntry:Z

.field private final mIsWidgetListShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->SUBTITLE_SEARCH:Ljava/util/function/BiFunction;

    .line 39
    new-instance v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->SUBTITLE_DEFAULT:Ljava/util/function/BiFunction;

    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 0
    .param p1, "pkgItem"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p2, "titleSectionName"    # Ljava/lang/String;
    .param p4, "isSearchEntry"    # Z
    .param p5, "isWidgetListShown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;ZZ)V"
        }
    .end annotation

    .line 73
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    .line 74
    iput-boolean p4, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    .line 75
    iput-boolean p5, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsWidgetListShown:Z

    .line 76
    return-void
.end method

.method public static create(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    .locals 7
    .param p0, "pkgItem"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p1, "titleSectionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)",
            "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;"
        }
    .end annotation

    .line 121
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    new-instance v6, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;ZZ)V

    return-object v6
.end method

.method public static createForSearch(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    .locals 7
    .param p0, "pkgItem"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p1, "titleSectionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)",
            "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;"
        }
    .end annotation

    .line 131
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    new-instance v6, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;ZZ)V

    return-object v6
.end method

.method static synthetic lambda$static$0(Lcom/android/launcher3/model/WidgetItem;)Ljava/lang/String;
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$static$1(Landroid/content/Context;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    .line 37
    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mWidgets:Ljava/util/List;

    .line 36
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry$$ExternalSyntheticLambda0;-><init>()V

    .line 37
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$static$2(Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$3(Landroid/content/Context;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    .line 41
    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mWidgets:Ljava/util/List;

    .line 42
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    long-to-int v1, v1

    .line 43
    .local v1, "wc":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 45
    .local v2, "sc":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 46
    .local v3, "resources":Landroid/content/res/Resources;
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 47
    const/4 v4, 0x0

    return-object v4

    .line 51
    :cond_0
    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 52
    sget v4, Lcom/android/launcher3/R$string;->widgets_count:I

    invoke-static {p0, v4, v1}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "widgetsCount":Ljava/lang/String;
    sget v5, Lcom/android/launcher3/R$string;->shortcuts_count:I

    invoke-static {p0, v5, v2}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "shortcutsCount":Ljava/lang/String;
    sget v6, Lcom/android/launcher3/R$string;->widgets_and_shortcuts_count:I

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .end local v5    # "shortcutsCount":Ljava/lang/String;
    .local v4, "subtitle":Ljava/lang/String;
    goto :goto_0

    .end local v4    # "subtitle":Ljava/lang/String;
    :cond_1
    if-lez v1, :cond_2

    .line 59
    sget v4, Lcom/android/launcher3/R$string;->widgets_count:I

    invoke-static {p0, v4, v1}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "subtitle":Ljava/lang/String;
    goto :goto_0

    .line 62
    .end local v4    # "subtitle":Ljava/lang/String;
    :cond_2
    sget v4, Lcom/android/launcher3/R$string;->shortcuts_count:I

    invoke-static {p0, v4, v2}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 65
    .restart local v4    # "subtitle":Ljava/lang/String;
    :goto_0
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 101
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    .line 102
    .local v0, "otherEntry":Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mWidgets:Ljava/util/List;

    iget-object v3, v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mWidgets:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v3, v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/data/PackageItemInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mTitleSectionName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mTitleSectionName:Ljava/lang/String;

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsWidgetListShown:Z

    iget-boolean v3, v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsWidgetListShown:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    iget-boolean v3, v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 102
    :goto_0
    return v1
.end method

.method public getSubtitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    iget-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->SUBTITLE_SEARCH:Ljava/util/function/BiFunction;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->SUBTITLE_DEFAULT:Ljava/util/function/BiFunction;

    :goto_0
    invoke-interface {v0, p1, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    return-object v0
.end method

.method public isSearchEntry()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    return v0
.end method

.method public isWidgetListShown()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsWidgetListShown:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withWidgetListShown()Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    .locals 7

    .line 110
    iget-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsWidgetListShown:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 111
    :cond_0
    new-instance v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mTitleSectionName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mWidgets:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mIsSearchEntry:Z

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;ZZ)V

    return-object v0
.end method
