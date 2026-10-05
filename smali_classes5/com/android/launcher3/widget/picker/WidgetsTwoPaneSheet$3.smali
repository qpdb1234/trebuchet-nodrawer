.class Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;
.super Ljava/lang/Object;
.source "WidgetsTwoPaneSheet.java"

# interfaces
.implements Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getHeaderChangeListener()Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;


# direct methods
.method public static synthetic $r8$lambda$R0Va2qJdVEtyyQx3zzb652C_0n4(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->lambda$onHeaderChanged$0(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;Landroid/util/Pair;)V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    .line 305
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onHeaderChanged$0(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;Landroid/util/Pair;)V
    .locals 3
    .param p1, "widgetsRowViewHolder"    # Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    .param p2, "contentEntryToBind"    # Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    .param p3, "data"    # Landroid/util/Pair;

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fgetmWidgetsListTableViewHolderBinder(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    move-result-object v0

    .line 339
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 336
    const/4 v2, 0x3

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;ILjava/util/List;)V

    .line 340
    return-void
.end method


# virtual methods
.method public onHeaderChanged(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 7
    .param p1, "selectedHeader"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fputmSelectedHeader(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;Lcom/android/launcher3/util/PackageUserKey;)V

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$000(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    .line 310
    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getSelectedAppWidgets(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    move-result-object v0

    .line 312
    .local v0, "contentEntry":Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fgetmRightPane(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fgetmSuggestedWidgetsHeader(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fgetmSuggestedWidgetsHeader(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    .line 321
    :cond_1
    invoke-static {}, Lcom/android/launcher3/Flags;->enableCategorizedWidgetSuggestions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    iget v1, v1, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mMaxSpanPerRow:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->withMaxSpanSize(I)Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    move-result-object v1

    .local v1, "contentEntryToBind":Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    goto :goto_0

    .line 326
    .end local v1    # "contentEntryToBind":Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    :cond_2
    move-object v1, v0

    .line 329
    .restart local v1    # "contentEntryToBind":Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v3}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fgetmWidgetsListTableViewHolderBinder(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v4}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fgetmRightPane(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 330
    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    move-result-object v3

    .line 331
    .local v3, "widgetsRowViewHolder":Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v4}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fgetmWidgetsListTableViewHolderBinder(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    move-result-object v4

    const/4 v5, 0x3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v4, v3, v1, v5, v6}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;ILjava/util/List;)V

    .line 335
    new-instance v4, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;)V

    iput-object v4, v3, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->mDataCallback:Ljava/util/function/Consumer;

    .line 341
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v4}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fgetmRightPane(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 342
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v4}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fgetmRightPane(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, v3, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v4}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fgetmRightPaneScrollView(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 344
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v2}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->-$$Nest$fgetmRightPane(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    .line 345
    invoke-virtual {v4}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$string;->widget_picker_right_pane_accessibility_title:I

    iget-object v6, v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 348
    return-void

    .line 313
    .end local v1    # "contentEntryToBind":Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    .end local v3    # "widgetsRowViewHolder":Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    :cond_3
    :goto_1
    return-void
.end method
