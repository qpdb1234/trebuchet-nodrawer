.class public Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;
.super Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
.source "WidgetsTwoPaneSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;
    }
.end annotation


# static fields
.field private static final MAXIMUM_WIDTH_LEFT_PANE_FOLDABLE_DP:I = 0x18b

.field private static final MINIMUM_WIDTH_LEFT_PANE_FOLDABLE_DP:I = 0x10c

.field private static final PERSONAL_TAB:I = 0x0

.field private static final SUGGESTIONS_PACKAGE_NAME:Ljava/lang/String; = "widgets_list_suggestions_entry"

.field private static final WORK_TAB:I = 0x1


# instance fields
.field private mActivePage:I

.field private mRightPane:Landroid/widget/LinearLayout;

.field private mRightPaneScrollView:Landroid/widget/ScrollView;

.field private mSelectedHeader:Lcom/android/launcher3/util/PackageUserKey;

.field private mSuggestedWidgetsContainer:Landroid/widget/FrameLayout;

.field private mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

.field private mSuggestedWidgetsPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

.field private final mViewOutlineProviderRightPane:Landroid/view/ViewOutlineProvider;

.field private mWidgetsListTableViewHolderBinder:Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;


# direct methods
.method public static synthetic $r8$lambda$hKvOaCLHPmvCYcRfhCTrOyT-WvE(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;Ljava/lang/String;Lcom/android/launcher3/model/data/PackageItemInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->lambda$setupSuggestedWidgets$0(Ljava/lang/String;Lcom/android/launcher3/model/data/PackageItemInfo;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRightPane(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRightPaneScrollView(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPaneScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuggestedWidgetsHeader(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListHeader;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidgetsListTableViewHolderBinder(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mWidgetsListTableViewHolderBinder:Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSelectedHeader(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSelectedHeader:Lcom/android/launcher3/util/PackageUserKey;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivePage:I

    .line 70
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mViewOutlineProviderRightPane:Landroid/view/ViewOutlineProvider;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivePage:I

    .line 70
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mViewOutlineProviderRightPane:Landroid/view/ViewOutlineProvider;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method private getHeaderChangeListener()Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;
    .locals 1

    .line 305
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;-><init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)V

    return-object v0
.end method

.method private synthetic lambda$setupSuggestedWidgets$0(Ljava/lang/String;Lcom/android/launcher3/model/data/PackageItemInfo;Landroid/view/View;)V
    .locals 2
    .param p1, "suggestionsRightPaneTitle"    # Ljava/lang/String;
    .param p2, "packageItemInfo"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p3, "view"    # Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->resetExpandedHeaders()V

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mWidgetRecommendationsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPaneScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 226
    invoke-static {p2}, Lcom/android/launcher3/util/PackageUserKey;->fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 227
    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSelectedHeader:Lcom/android/launcher3/util/PackageUserKey;

    .line 228
    return-void
.end method

.method private setupSuggestedWidgets(Landroid/view/LayoutInflater;)V
    .locals 7
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    sget v1, Lcom/android/launcher3/R$id;->suggestions_header:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsContainer:Landroid/widget/FrameLayout;

    .line 191
    sget v0, Lcom/android/launcher3/R$layout;->widgets_list_row_header_two_pane:I

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    .line 197
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$2;

    .line 199
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "widgets_list_suggestions_entry"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$2;-><init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 205
    .local v0, "packageItemInfo":Lcom/android/launcher3/model/data/PackageItemInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->suggested_widgets_header_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "suggestionsHeaderTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->widget_picker_right_pane_accessibility_title:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "suggestionsRightPaneTitle":Ljava/lang/String;
    iput-object v1, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    .line 210
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/BaseActivity;

    .line 213
    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupDataProvider;->getRecommendedWidgets()Ljava/util/List;

    move-result-object v3

    .line 210
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->create(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->withWidgetListShown()Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    move-result-object v3

    .line 216
    .local v3, "widgetsListHeaderEntry":Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->applyFromItemInfoWithIcon(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    .line 217
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$drawable;->widget_suggestions_icon:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 217
    invoke-virtual {v4, v5}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    new-instance v5, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2, v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;Ljava/lang/String;Lcom/android/launcher3/model/data/PackageItemInfo;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method


# virtual methods
.method protected getContentView()Landroid/view/View;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getMaxTableHeight(F)F
    .locals 1
    .param p1, "noWidgetsViewHeight"    # F

    .line 236
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0
.end method

.method protected getWidgetListHorizontalMargin()I
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_list_left_pane_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected isTwoPane()Z
    .locals 1

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public onActivePageChanged(I)V
    .locals 2
    .param p1, "currentActivePage"    # I

    .line 241
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onActivePageChanged(I)V

    .line 244
    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivePage:I

    if-ne v0, p1, :cond_0

    .line 245
    return-void

    .line 248
    :cond_0
    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivePage:I

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->selectFirstHeaderEntry()V

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    goto :goto_0

    .line 253
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 254
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->callOnClick()Z

    .line 256
    :cond_3
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 138
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onLayout(ZIIII)V

    .line 139
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/launcher3/Flags;->enableUnfoldedTwoPanePicker()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mContent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/launcher3/R$id;->linear_layout_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 141
    .local v0, "layout":Landroid/widget/LinearLayout;
    sget v1, Lcom/android/launcher3/R$id;->recycler_view_container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 142
    .local v1, "leftPane":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    .line 145
    .local v3, "leftPaneWidth":I
    const/high16 v4, 0x43860000    # 268.0f

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v4

    .line 146
    .local v4, "minLeftPaneWidthPx":I
    const v5, 0x43c58000    # 395.0f

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v5

    .line 147
    .local v5, "maxLeftPaneWidthPx":I
    if-ge v3, v4, :cond_0

    .line 148
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 149
    :cond_0
    if-le v3, v5, :cond_1

    .line 150
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 152
    :cond_1
    const/4 v6, 0x0

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 154
    :goto_0
    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v6, :cond_2

    const v6, 0x3ea8f5c3    # 0.33f

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 155
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->requestApplyInsets()V

    .line 157
    iget-object v6, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSelectedHeader:Lcom/android/launcher3/util/PackageUserKey;

    if-eqz v6, :cond_4

    .line 158
    iget-object v7, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 159
    iget-object v6, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-virtual {v6}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->callOnClick()Z

    goto :goto_2

    .line 161
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getHeaderChangeListener()Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSelectedHeader:Lcom/android/launcher3/util/PackageUserKey;

    invoke-interface {v6, v7}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;->onHeaderChanged(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 165
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    .end local v1    # "leftPane":Landroid/widget/FrameLayout;
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "leftPaneWidth":I
    .end local v4    # "minLeftPaneWidthPx":I
    .end local v5    # "maxLeftPaneWidthPx":I
    :cond_4
    :goto_2
    return-void
.end method

.method public onRecommendedWidgetsBound()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mHasRecommendedWidgets:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->setupSuggestedWidgets(Landroid/view/LayoutInflater;)V

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->callOnClick()Z

    .line 184
    :cond_0
    return-void
.end method

.method public onSearchResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onSearchResults(Ljava/util/List;)V

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->selectFirstHeaderEntry()V

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    .line 273
    return-void
.end method

.method public onWidgetsBound()V
    .locals 2

    .line 169
    invoke-super {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onWidgetsBound()V

    .line 170
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mHasRecommendedWidgets:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSelectedHeader:Lcom/android/launcher3/util/PackageUserKey;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mAdapters:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivePage:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->selectFirstHeaderEntry()V

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mAdapters:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivePage:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    .line 174
    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 354
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setInsets(Landroid/graphics/Rect;)V

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mContent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/launcher3/R$id;->right_pane_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 356
    .local v0, "rightPaneContainer":Landroid/widget/FrameLayout;
    nop

    .line 357
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    .line 358
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    .line 359
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mBottomPadding:I

    .line 356
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->requestLayout()V

    .line 362
    return-void
.end method

.method protected setViewVisibilityBasedOnSearch(Z)V
    .locals 2
    .param p1, "isInSearchMode"    # Z

    .line 284
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setViewVisibilityBasedOnSearch(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 287
    if-nez p1, :cond_0

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->callOnClick()Z

    goto :goto_0

    .line 291
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 293
    :cond_1
    if-nez p1, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mAdapters:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivePage:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->selectFirstHeaderEntry()V

    .line 297
    :cond_2
    :goto_0
    return-void
.end method

.method protected setupSheet()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    .line 97
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getHeaderChangeListener()Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setHeaderChangeListener(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    .line 99
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getHeaderChangeListener()Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setHeaderChangeListener(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getHeaderChangeListener()Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setHeaderChangeListener(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget-boolean v3, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mHasWorkProfile:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/launcher3/R$layout;->widgets_two_pane_sheet_paged_view:I

    goto :goto_0

    .line 106
    :cond_0
    sget v3, Lcom/android/launcher3/R$layout;->widgets_two_pane_sheet_recyclerview:I

    :goto_0
    nop

    .line 107
    .local v3, "contentLayoutRes":I
    sget v4, Lcom/android/launcher3/R$id;->recycler_view_container:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->setupViews()V

    .line 111
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivityContext:Landroid/content/Context;

    invoke-direct {v1, v4, v0, p0, p0}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mWidgetsListTableViewHolderBinder:Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    .line 114
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mContent:Landroid/view/ViewGroup;

    sget v4, Lcom/android/launcher3/R$id;->widget_recommendations_container:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mWidgetRecommendationsContainer:Landroid/widget/LinearLayout;

    .line 116
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mContent:Landroid/view/ViewGroup;

    sget v4, Lcom/android/launcher3/R$id;->widget_recommendations_view:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mWidgetRecommendationsView:Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    .line 118
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mWidgetRecommendationsView:Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mWidgetRecommendationsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->initParentViews(Landroid/view/View;)V

    .line 119
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mWidgetRecommendationsView:Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mWidgetRecommendationsView:Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mContent:Landroid/view/ViewGroup;

    sget v4, Lcom/android/launcher3/R$id;->title:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mHeaderTitle:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mContent:Landroid/view/ViewGroup;

    sget v4, Lcom/android/launcher3/R$id;->right_pane:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    .line 124
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mViewOutlineProviderRightPane:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mContent:Landroid/view/ViewGroup;

    sget v4, Lcom/android/launcher3/R$id;->right_pane_scroll_view:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPaneScrollView:Landroid/widget/ScrollView;

    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->onRecommendedWidgetsBound()V

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->onWidgetsBound()V

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->setUpEducationViewsIfNeeded()V

    .line 133
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setVisibility(I)V

    .line 134
    return-void
.end method

.method protected shouldScroll(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 277
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPaneScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPaneScrollView:Landroid/widget/ScrollView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    goto :goto_0

    .line 279
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->shouldScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 277
    :goto_0
    return v0
.end method

.method protected updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V
    .locals 3
    .param p1, "adapterHolder"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    .line 261
    iget-object v0, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->hasVisibleEntries()Z

    move-result v0

    .line 263
    .local v0, "isWidgetAvailable":Z
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    .line 266
    return-void
.end method
