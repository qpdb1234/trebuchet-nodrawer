.class public Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PrivateAppsSectionDecorator.java"


# static fields
.field private static final PRIVATE_APP_SECTION:Ljava/lang/String; = "private_apps"


# instance fields
.field private final mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "*>;)V"
        }
    .end annotation

    .line 34
    .local p1, "appsList":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<*>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 36
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "deferredDecorations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 44
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 45
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 46
    .local v3, "position":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 47
    .local v4, "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget-object v5, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->decorationInfo:Lcom/android/launcher3/allapps/SectionDecorationInfo;

    .line 48
    .local v5, "info":Lcom/android/launcher3/allapps/SectionDecorationInfo;
    if-nez v5, :cond_0

    .line 49
    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->getDecorationHandler()Lcom/android/launcher3/allapps/SectionDecorationHandler;

    move-result-object v6

    .line 52
    .local v6, "decorationHandler":Lcom/android/launcher3/allapps/SectionDecorationHandler;
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->shouldDecorateItemsTogether()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 53
    new-instance v7, Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;

    .line 57
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v8

    .line 58
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    invoke-direct {v7, v6, v8, v9}, Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;-><init>(Lcom/android/launcher3/allapps/SectionDecorationHandler;II)V

    .line 54
    const-string v8, "private_apps"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;

    .line 59
    .local v7, "unionHandler":Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;
    const/4 v9, 0x1

    invoke-virtual {v7, v6, v2, v9}, Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;->addChild(Lcom/android/launcher3/allapps/SectionDecorationHandler;Landroid/view/View;Z)V

    .line 60
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v7    # "unionHandler":Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v6, p1, v2}, Lcom/android/launcher3/allapps/SectionDecorationHandler;->onFocusDraw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 43
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "position":I
    .end local v4    # "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .end local v5    # "info":Lcom/android/launcher3/allapps/SectionDecorationInfo;
    .end local v6    # "decorationHandler":Lcom/android/launcher3/allapps/SectionDecorationHandler;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;

    .line 67
    .local v2, "decorationHandler":Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;
    invoke-virtual {v2, p1}, Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;->onGroupDecorate(Landroid/graphics/Canvas;)V

    .line 68
    .end local v2    # "decorationHandler":Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;
    goto :goto_2

    .line 69
    :cond_3
    return-void
.end method
