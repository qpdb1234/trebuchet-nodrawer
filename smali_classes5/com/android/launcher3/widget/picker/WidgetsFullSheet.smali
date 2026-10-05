.class public Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
.super Lcom/android/launcher3/widget/BaseWidgetSheet;
.source "WidgetsFullSheet.java"

# interfaces
.implements Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;
.implements Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;
.implements Lcom/android/launcher3/widget/picker/search/SearchModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    }
.end annotation


# static fields
.field private static final EDUCATION_DIALOG_DELAY_MS:J = 0x1f4L

.field private static final EDUCATION_TIP_DELAY_MS:J = 0xc8L

.field private static final FADE_IN_DURATION:J = 0x96L

.field private static final RECOMMENDATION_TABLE_HEIGHT_RATIO:F = 0.75f


# instance fields
.field protected final mAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

.field protected mBottomPadding:I

.field private mCurrentTouchEventRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

.field private final mCurrentUser:Landroid/os/UserHandle;

.field private mCurrentWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

.field protected mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field protected mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field protected mHasRecommendedWidgets:Z

.field protected final mHasWorkProfile:Z

.field protected mHeaderTitle:Landroid/widget/TextView;

.field private mIsInSearchMode:Z

.field private mIsNoWidgetsViewNeeded:Z

.field private mLatestEducationalTip:Lcom/android/launcher3/views/ArrowTipView;

.field private final mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

.field protected mMaxSpanPerRow:I

.field protected mNoWidgetsView:Landroid/widget/TextView;

.field private final mPrimaryWidgetsFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

.field protected mSearchBarContainer:Landroid/view/View;

.field protected mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

.field private final mShowEducationTipTask:Ljava/lang/Runnable;

.field protected mTabBar:Landroid/view/View;

.field private final mTabsHeight:I

.field private final mUserCache:Lcom/android/launcher3/pm/UserCache;

.field private final mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

.field mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

.field protected mWidgetRecommendationsContainer:Landroid/widget/LinearLayout;

.field protected mWidgetRecommendationsView:Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

.field private final mWorkWidgetsFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$B7eOXxN2mAMrjjNkxZISZh9o5mA(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$new$0(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ITt1TxdM1Bx37HtlSelbaR5QPXs(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NHVXXUN2PwINVxrfk4fibBgtlq8(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Nc7MK5UXRCn9E87oVDMUYXfFo-w(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$setUpEducationViewsIfNeeded$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$VagLwKZB3As5IeXxQs-issfuGh0(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Landroid/os/UserHandle;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$new$2(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VekJ3UZ4zic3zs__5S6YCT_WnaM(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$open$7(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$caKhY4ATWqc-BWCNbCZrQ5dq2jI(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$new$3(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eTRsnS0UOs8RDu1leXg417m1u7I(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$setUpEducationViewsIfNeeded$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$hS6aYP06kL2rB1f253GAR0fi3rQ(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$setupViews$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i5DXSq1BOgNspGW7tDcRBF6ul5I(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$setupViews$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lE-zGASD9LlLNzqtLso25Q_XjE0(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Landroid/os/UserHandle;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$updateRecyclerViewVisibility$6(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBindScrollbarInSearchMode(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/View$OnAttachStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInSearchMode(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryWidgetsFilter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mPrimaryWidgetsFilter:Ljava/util/function/Predicate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowEducationTipTask(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mShowEducationTipTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkWidgetsFilter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWorkWidgetsFilter:Ljava/util/function/Predicate;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/BaseWidgetSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    new-instance v0, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v0}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    .line 105
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentUser:Landroid/os/UserHandle;

    .line 106
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mPrimaryWidgetsFilter:Ljava/util/function/Predicate;

    .line 111
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 113
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    .line 131
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mShowEducationTipTask:Ljava/lang/Runnable;

    .line 142
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    .line 181
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 182
    sget-object v2, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/UserCache;

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    .line 183
    invoke-virtual {v2}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 184
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    .line 185
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    .line 186
    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWorkWidgetsFilter:Ljava/util/function/Predicate;

    .line 189
    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v5}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v5}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 194
    .local v1, "resources":Landroid/content/res/Resources;
    sget-object v3, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/pm/UserCache;

    const-class v5, Landroid/os/UserManager;

    .line 195
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 194
    invoke-virtual {v0, v3, v5}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    .line 196
    if-eqz v2, :cond_0

    .line 197
    sget v0, Lcom/android/launcher3/R$dimen;->all_apps_header_pill_height:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    .line 198
    :cond_0
    nop

    :goto_0
    iput v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabsHeight:I

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasSeenEducationTip()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/ViewOutlineProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    .line 303
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    if-eq v0, p1, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->reset()V

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->resetExpandedHeaders()V

    .line 308
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->setCurrentRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 311
    :cond_0
    return-void
.end method

.method private getCurrentAdapterHolderType()I
    .locals 1

    .line 810
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 811
    const/4 v0, 0x2

    return v0

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {v0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getCurrentPage()I

    move-result v0

    return v0

    .line 815
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getMaxAvailableHeightForRecommendations()F
    .locals 6

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "noWidgetsViewHeight":F
    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsNoWidgetsViewNeeded:Z

    if-eqz v1, :cond_0

    .line 615
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 616
    .local v1, "noWidgetsViewTextBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    .line 617
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    .line 618
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 617
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 619
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v0, v2

    .line 621
    .end local v1    # "noWidgetsViewTextBounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->isTwoPane()Z

    move-result v1

    if-nez v1, :cond_1

    .line 622
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseActivity;

    .line 623
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/BaseActivity;

    .line 625
    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 622
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->doMeasure(II)V

    .line 628
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getMaxTableHeight(F)F

    move-result v1

    return v1
.end method

.method private getViewToShowEducationTip()Landroid/view/View;
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetRecommendationsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetRecommendationsView:Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getViewForEducationTip()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 890
    const/4 v1, 0x2

    goto :goto_0

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    if-nez v1, :cond_2

    .line 892
    move v1, v2

    goto :goto_0

    .line 893
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getCurrentPage()I

    move-result v1

    .line 889
    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    .line 894
    .local v0, "adapterHolder":Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    iget-object v1, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    .line 896
    invoke-virtual {v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v1

    .line 895
    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    iget-object v3, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 897
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    invoke-interface {v1, v4}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda4;-><init>()V

    .line 899
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 900
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 901
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    .line 902
    .local v1, "viewHolderForTip":Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    if-eqz v1, :cond_3

    .line 903
    iget-object v3, v1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 906
    :cond_3
    return-object v3
.end method

.method private static getWidgetSheetId(Lcom/android/launcher3/BaseActivity;)I
    .locals 2
    .param p0, "activity"    # Lcom/android/launcher3/BaseActivity;

    .line 714
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/Flags;->enableCategorizedWidgetSuggestions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_2

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher3/Flags;->enableUnfoldedTwoPanePicker()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 722
    .local v0, "isTwoPane":Z
    :goto_0
    if-eqz v0, :cond_4

    sget v1, Lcom/android/launcher3/R$layout;->widgets_two_pane_sheet:I

    goto :goto_1

    :cond_4
    sget v1, Lcom/android/launcher3/R$layout;->widgets_full_sheet:I

    :goto_1
    return v1
.end method

.method public static getWidgetsView(Lcom/android/launcher3/BaseActivity;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/BaseActivity;

    .line 773
    sget v0, Lcom/android/launcher3/R$id;->primary_widgets_list_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    return-object v0
.end method

.method private isTouchOnScrollbar(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 759
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    .line 760
    .local v0, "offsetX":F
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .line 761
    .local v1, "offsetY":F
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v2

    .line 763
    .local v2, "rv":Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 764
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->isHitOnScrollBar(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 765
    .local v3, "isOnScrollBar":Z
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 767
    return v3
.end method

.method static synthetic lambda$getViewToShowEducationTip$9(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 899
    instance-of v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    return v0
.end method

.method private synthetic lambda$new$0(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentUser:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasSeenEducationTip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 134
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getViewToShowEducationTip()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->showEducationTipOnViewIfPossible(Landroid/view/View;)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLatestEducationalTip:Lcom/android/launcher3/views/ArrowTipView;

    .line 137
    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 140
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/UserIconInfo;->isWork()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$new$3(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 186
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 187
    invoke-virtual {v0, v1}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/UserIconInfo;->isWork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 188
    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0
.end method

.method private synthetic lambda$open$7(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 655
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetOpenDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 657
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 658
    return-void
.end method

.method static synthetic lambda$open$8(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 661
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->announceAccessibilityChanges()V

    return-void
.end method

.method private synthetic lambda$setUpEducationViewsIfNeeded$10()V
    .locals 1

    .line 926
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasSeenEducationTip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 930
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->requestLayout()V

    .line 932
    :cond_0
    return-void
.end method

.method private synthetic lambda$setUpEducationViewsIfNeeded$11()V
    .locals 2

    .line 924
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->showEducationDialog()Lcom/android/launcher3/views/WidgetsEduView;

    move-result-object v0

    .line 925
    .local v0, "eduDialog":Lcom/android/launcher3/views/WidgetsEduView;
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/WidgetsEduView;->addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    .line 933
    return-void
.end method

.method private synthetic lambda$setupViews$4(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->snapToPage(I)Z

    return-void
.end method

.method private synthetic lambda$setupViews$5(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->snapToPage(I)Z

    return-void
.end method

.method private synthetic lambda$updateRecyclerViewVisibility$6(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/UserIconInfo;->isWork()Z

    move-result v0

    return v0
.end method

.method private maybeHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 736
    const/4 v0, 0x0

    .line 738
    .local v0, "isEventHandled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 739
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->isTouchOnScrollbar(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentTouchEventRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentTouchEventRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    if-eqz v1, :cond_2

    .line 743
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    .line 744
    .local v1, "offsetX":F
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    .line 745
    .local v3, "offsetY":F
    neg-float v4, v1

    neg-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 746
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentTouchEventRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 747
    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 750
    .end local v1    # "offsetX":F
    .end local v3    # "offsetY":F
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    .line 751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 752
    :cond_3
    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentTouchEventRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 755
    :cond_4
    return v0
.end method

.method private static measureHeightWithVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 801
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    const/4 v0, 0x0

    return v0

    .line 804
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 805
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private open(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 646
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/views/BaseDragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetOpenDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setUpOpenAnimation(J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 651
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 652
    .local v0, "animator":Landroid/animation/Animator;
    nop

    .line 653
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 652
    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 654
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Landroid/animation/Animator;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->post(Ljava/lang/Runnable;)Z

    .line 659
    .end local v0    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setTranslationShift(F)V

    .line 661
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->post(Ljava/lang/Runnable;)Z

    .line 663
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    .line 334
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout;->reset(Z)V

    .line 339
    return-void
.end method

.method private restorePreviousAdapterHolderType(I)V
    .locals 1
    .param p1, "previousAdapterHolderType"    # I

    .line 820
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0, p1}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->setCurrentPage(I)V

    goto :goto_0

    .line 822
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 823
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->enterSearchMode(Z)V

    .line 825
    :cond_1
    :goto_0
    return-void
.end method

.method private setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "bottomPadding"    # I

    .line 408
    nop

    .line 409
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 410
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    .line 411
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    .line 408
    invoke-virtual {p1, v0, v1, v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 413
    return-void
.end method

.method private static setContentViewChildHorizontalMargin(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "horizontalMarginInPx"    # I

    .line 436
    nop

    .line 437
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 438
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 439
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 440
    return-void
.end method

.method private static setContentViewChildHorizontalPadding(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "horizontalPaddingInPx"    # I

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 444
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 443
    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 445
    return-void
.end method

.method private setDeviceManagementResources()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    sget v0, Lcom/android/launcher3/R$id;->tab_personal:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 277
    .local v0, "personalTab":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 279
    sget v1, Lcom/android/launcher3/R$id;->tab_work:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 280
    .local v1, "workTab":Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .end local v0    # "personalTab":Landroid/widget/Button;
    .end local v1    # "workTab":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private static shouldRecreateLayout(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/DeviceProfile;)Z
    .locals 5
    .param p0, "oldDp"    # Lcom/android/launcher3/DeviceProfile;
    .param p1, "newDp"    # Lcom/android/launcher3/DeviceProfile;

    .line 853
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 854
    invoke-static {}, Lcom/android/launcher3/Flags;->enableUnfoldedTwoPanePicker()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 859
    .local v0, "isFoldUnFold":Z
    :goto_0
    invoke-static {}, Lcom/android/launcher3/Flags;->enableCategorizedWidgetSuggestions()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    iget-boolean v4, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 862
    .local v1, "useDifferentLayoutOnOrientationChange":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    return v2
.end method

.method public static show(Lcom/android/launcher3/BaseActivity;Z)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
    .locals 4
    .param p0, "activity"    # Lcom/android/launcher3/BaseActivity;
    .param p1, "animate"    # Z

    .line 703
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 704
    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getWidgetSheetId(Lcom/android/launcher3/BaseActivity;)I

    move-result v1

    .line 705
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    .line 703
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 707
    .local v0, "sheet":Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->attachToContainer()V

    .line 708
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsOpen:Z

    .line 709
    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->open(Z)V

    .line 710
    return-object v0
.end method

.method private showEducationDialog()Lcom/android/launcher3/views/WidgetsEduView;
    .locals 3

    .line 911
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->WIDGETS_EDUCATION_DIALOG_SEEN:Lcom/android/launcher3/ConstantItem;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    .line 912
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-static {v0}, Lcom/android/launcher3/views/WidgetsEduView;->showEducationDialog(Lcom/android/launcher3/BaseActivity;)Lcom/android/launcher3/views/WidgetsEduView;

    move-result-object v0

    return-object v0
.end method

.method private updateMaxSpansPerRow()Z
    .locals 4

    .line 458
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContentHorizontalMargin:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 462
    .local v0, "maxHorizontalSpan":I
    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpanPerRow:I

    if-eq v2, v0, :cond_2

    .line 463
    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpanPerRow:I

    .line 464
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPxPerRow(I)V

    .line 466
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPxPerRow(I)V

    .line 468
    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPxPerRow(I)V

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    .line 473
    return v2

    .line 475
    :cond_2
    return v1
.end method


# virtual methods
.method public addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 3
    .param p1, "distanceToMove"    # F
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "target"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 779
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    neg-float v2, p1

    invoke-virtual {p3, v0, v1, v2, p2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 780
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p3, v0, v1, p2}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 781
    return-void
.end method

.method public enterSearchMode(Z)V
    .locals 2
    .param p1, "shouldLog"    # Z

    .line 532
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 533
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setViewVisibilityBasedOnSearch(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 535
    if-eqz p1, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGETSTRAY_SEARCHED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 538
    :cond_1
    return-void
.end method

.method public exitSearchMode()V
    .locals 2

    .line 542
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onSearchResults(Ljava/util/List;)V

    .line 544
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setViewVisibilityBasedOnSearch(Z)V

    .line 545
    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->snapToPage(I)Z

    .line 548
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 549
    return-void
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHeaderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 355
    iget-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsOpen:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/launcher3/R$string;->widgets_list:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/launcher3/R$string;->widgets_list_closed:I

    .line 354
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 2

    .line 479
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 479
    :goto_0
    return-object v0
.end method

.method public getHeaderViewHeight()I
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHeaderTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->measureHeightWithVerticalMargins(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBarContainer:Landroid/view/View;

    .line 796
    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->measureHeightWithVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 795
    return v0
.end method

.method protected getMaxTableHeight(F)F
    .locals 2
    .param p1, "noWidgetsViewHeight"    # F

    .line 639
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabsHeight:I

    sub-int/2addr v0, v1

    .line 640
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getHeaderViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    .line 639
    return v0
.end method

.method public getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    .locals 2

    .line 343
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    return-object v0

    .line 346
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    return-object v0

    .line 347
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    return-object v0
.end method

.method public getSheet()Landroid/view/View;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected handleClose(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 667
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetCloseDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->handleClose(ZJ)V

    .line 668
    return-void
.end method

.method protected hasSeenEducationDialog()Z
    .locals 2

    .line 917
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->WIDGETS_EDUCATION_DIALOG_SEEN:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 918
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 917
    :goto_1
    return v0
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 672
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isTwoPane()Z
    .locals 1

    .line 940
    const/4 v0, 0x0

    return v0
.end method

.method public onActivePageChanged(I)V
    .locals 2
    .param p1, "currentActivePage"    # I

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    .line 287
    .local v0, "currentAdapterHolder":Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 288
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 290
    .local v1, "currentRecyclerView":Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    .line 291
    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 292
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 400
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 401
    .local v0, "w":Landroid/view/WindowInsets;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNavBarScrimHeight:I

    if-eq v1, v2, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setInsets(Landroid/graphics/Rect;)V

    .line 404
    :cond_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 360
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onAttachedToWindow()V

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    .line 362
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    .line 364
    return-void
.end method

.method public onBackInvoked()V
    .locals 1

    .line 867
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->reset()V

    .line 869
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->animateSlideInViewToNoScale()V

    goto :goto_0

    .line 871
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onBackInvoked()V

    .line 873
    :goto_0
    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 3
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 297
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onBackProgressed(Landroid/window/BackEvent;)V

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setVisibility(I)V

    .line 299
    return-void
.end method

.method protected onCloseComplete()V
    .locals 2

    .line 785
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onCloseComplete()V

    .line 786
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mShowEducationTipTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 787
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLatestEducationalTip:Lcom/android/launcher3/views/ArrowTipView;

    if-eqz v0, :cond_0

    .line 788
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ArrowTipView;->close(Z)V

    .line 790
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    .line 791
    return-void
.end method

.method protected onContentHorizontalMarginChanged(I)V
    .locals 2
    .param p1, "contentHorizontalMarginInPx"    # I

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalMargin(Landroid/view/View;I)V

    .line 418
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 420
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 419
    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalPadding(Landroid/view/View;I)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 424
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 423
    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalPadding(Landroid/view/View;I)V

    .line 426
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 427
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 426
    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalPadding(Landroid/view/View;I)V

    .line 430
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 431
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 430
    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalPadding(Landroid/view/View;I)V

    .line 433
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 677
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->shouldScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoIntercept:Z

    .line 679
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->isSearchBarFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBarContainer:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->clearSearchBarFocus()V

    .line 685
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 368
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onDetachedFromWindow()V

    .line 369
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    .line 370
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 371
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    .line 373
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 375
    :cond_0
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 829
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V

    .line 831
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->shouldRecreateLayout(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 833
    .local v0, "widgetsState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 834
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->handleClose(Z)V

    .line 835
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->show(Lcom/android/launcher3/BaseActivity;Z)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    move-result-object v1

    .line 836
    .local v1, "sheet":Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 837
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getCurrentAdapterHolderType()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->restorePreviousAdapterHolderType(I)V

    .end local v0    # "widgetsState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v1    # "sheet":Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
    goto :goto_0

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->isTwoPane()Z

    move-result v0

    if-nez v0, :cond_1

    .line 839
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->reset()V

    .line 840
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->resetExpandedHeaders()V

    goto :goto_1

    .line 838
    :cond_1
    :goto_0
    nop

    .line 843
    :goto_1
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 844
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "startDisplacement"    # F

    .line 877
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onDragStart(ZF)V

    .line 878
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 879
    .local v0, "insetsController":Landroid/view/WindowInsetsController;
    if-eqz v0, :cond_0

    .line 880
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 882
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 207
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onFinishInflate()V

    .line 209
    sget v0, Lcom/android/launcher3/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$drawable;->bg_widgets_full_sheet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentBackgroundWithParent(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setupSheet()V

    .line 215
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 727
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->isTouchOnScrollbar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 486
    sub-int v0, p4, p2

    .line 487
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 490
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 491
    .local v2, "contentWidth":I
    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 492
    .local v3, "contentLeft":I
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v1, v5

    add-int v6, v3, v2

    invoke-virtual {v4, v3, v5, v6, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 495
    iget v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTranslationShift:F

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setTranslationShift(F)V

    .line 496
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 449
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->doMeasure(II)V

    .line 451
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateMaxSpansPerRow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->doMeasure(II)V

    .line 454
    :cond_0
    return-void
.end method

.method public onRecommendedWidgetsBound()V
    .locals 7

    .line 586
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 587
    return-void

    .line 590
    :cond_0
    invoke-static {}, Lcom/android/launcher3/Flags;->enableCategorizedWidgetSuggestions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetRecommendationsView:Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    .line 592
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getCategorizedRecommendedWidgets()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 594
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getMaxAvailableHeightForRecommendations()F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpanPerRow:I

    iget v6, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetCellHorizontalPadding:I

    .line 591
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->setRecommendations(Ljava/util/Map;Lcom/android/launcher3/DeviceProfile;FII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasRecommendedWidgets:Z

    goto :goto_0

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetRecommendationsView:Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    .line 600
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getRecommendedWidgets()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 602
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getMaxAvailableHeightForRecommendations()F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpanPerRow:I

    iget v6, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetCellHorizontalPadding:I

    .line 599
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->setRecommendations(Ljava/util/List;Lcom/android/launcher3/DeviceProfile;FII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasRecommendedWidgets:Z

    .line 607
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetRecommendationsContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasRecommendedWidgets:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 608
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

    .line 553
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setWidgetsOnSearch(Ljava/util/List;)V

    .line 554
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    .line 555
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 732
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->maybeHandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onWidgetsBound()V
    .locals 6

    .line 500
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 501
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    .line 504
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getAllWidgets()Ljava/util/List;

    move-result-object v0

    .line 506
    .local v0, "allWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    .line 507
    .local v1, "primaryUserAdapterHolder":Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    iget-object v3, v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    .line 509
    iget-boolean v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 510
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->setVisibility(I)V

    .line 511
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabBar:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    .line 513
    .local v3, "workUserAdapterHolder":Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    iget-object v5, v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    .line 514
    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getCurrentPage()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onActivePageChanged(I)V

    .line 515
    .end local v3    # "workUserAdapterHolder":Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onActivePageChanged(I)V

    .line 520
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 521
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->hasVisibleEntries()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 522
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    .line 523
    invoke-virtual {v3}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->hasVisibleEntries()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v2, v4

    .line 524
    .local v2, "isNoWidgetsViewNeeded":Z
    :goto_2
    iget-boolean v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsNoWidgetsViewNeeded:Z

    if-eq v3, v2, :cond_4

    .line 525
    iput-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsNoWidgetsViewNeeded:Z

    .line 526
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    .line 528
    :cond_4
    return-void
.end method

.method public openFirstHeader()V
    .locals 2

    .line 952
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->selectFirstHeaderEntry()V

    .line 953
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    .line 954
    return-void
.end method

.method protected resetExpandedHeaders()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->resetExpandedHeader()V

    .line 581
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->resetExpandedHeader()V

    .line 582
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 379
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setInsets(Landroid/graphics/Rect;)V

    .line 380
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNavBarScrimHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBottomPadding:I

    .line 381
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBottomPadding:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 382
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBottomPadding:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 383
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBottomPadding:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBottomPadding:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 389
    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBottomPadding:I

    if-lez v0, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setupNavBarColor()V

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->clearNavBarColor()V

    .line 395
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->requestLayout()V

    .line 396
    return-void
.end method

.method protected setUpEducationViewsIfNeeded()V
    .locals 3

    .line 922
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasSeenEducationDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 934
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasSeenEducationTip()Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 937
    :cond_1
    :goto_0
    return-void
.end method

.method protected setViewVisibilityBasedOnSearch(Z)V
    .locals 4
    .param p1, "isInSearchMode"    # Z

    .line 558
    iput-boolean p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    .line 559
    const/4 v0, 0x2

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 560
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetRecommendationsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 561
    iget-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->setVisibility(I)V

    .line 563
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 565
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setVisibility(I)V

    .line 567
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    .line 569
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 571
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setVisibility(I)V

    .line 574
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    .line 575
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onWidgetsBound()V

    .line 577
    :goto_1
    return-void
.end method

.method protected setupSheet()V
    .locals 4

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 219
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/launcher3/R$layout;->widgets_full_sheet_paged_view:I

    goto :goto_0

    .line 220
    :cond_0
    sget v1, Lcom/android/launcher3/R$layout;->widgets_full_sheet_recyclerview:I

    :goto_0
    nop

    .line 221
    .local v1, "contentLayoutRes":I
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setupViews()V

    .line 225
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    sget v3, Lcom/android/launcher3/R$id;->widget_recommendations_container:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/views/StickyHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetRecommendationsContainer:Landroid/widget/LinearLayout;

    .line 227
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    sget v3, Lcom/android/launcher3/R$id;->widget_recommendations_view:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/views/StickyHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetRecommendationsView:Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    .line 229
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetRecommendationsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->initParentViews(Landroid/view/View;)V

    .line 230
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetRecommendationsView:Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 231
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetRecommendationsView:Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    sget v3, Lcom/android/launcher3/R$id;->title:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/views/StickyHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHeaderTitle:Landroid/widget/TextView;

    .line 235
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    .line 236
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onWidgetsBound()V

    .line 237
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setUpEducationViewsIfNeeded()V

    .line 238
    return-void
.end method

.method protected setupViews()V
    .locals 3

    .line 241
    sget v0, Lcom/android/launcher3/R$id;->search_and_recommendations_container:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/StickyHeaderLayout;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    .line 242
    sget v1, Lcom/android/launcher3/R$id;->primary_widgets_list_view:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout;->setCurrentRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 243
    sget v0, Lcom/android/launcher3/R$id;->no_widgets_text:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    .line 244
    sget v0, Lcom/android/launcher3/R$id;->fast_scroller:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 245
    sget v1, Lcom/android/launcher3/R$id;->fast_scroller_popup:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setPopupView(Landroid/widget/TextView;)V

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    sget v2, Lcom/android/launcher3/R$id;->primary_widgets_list_view:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->setup(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    sget v2, Lcom/android/launcher3/R$id;->search_widgets_list_view:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->setup(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 248
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_0

    .line 249
    sget v0, Lcom/android/launcher3/R$id;->widgets_view_pager:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    .line 250
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->setClipToOutline(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->setClipChildren(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->initParentViews(Landroid/view/View;)V

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setOnActivePageChangedListener(Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setActiveMarker(I)V

    .line 256
    sget v0, Lcom/android/launcher3/R$id;->tab_personal:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    sget v0, Lcom/android/launcher3/R$id;->tab_work:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    sget v1, Lcom/android/launcher3/R$id;->work_widgets_list_view:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->setup(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 261
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setDeviceManagementResources()V

    goto :goto_0

    .line 263
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    sget v1, Lcom/android/launcher3/R$id;->tabs:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabBar:Landroid/view/View;

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    sget v1, Lcom/android/launcher3/R$id;->search_bar_container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBarContainer:Landroid/view/View;

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    sget v1, Lcom/android/launcher3/R$id;->widgets_search_bar:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    .line 270
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseActivity;

    .line 271
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v1

    .line 270
    invoke-interface {v0, v1, p0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->initialize(Lcom/android/launcher3/popup/PopupDataProvider;Lcom/android/launcher3/widget/picker/search/SearchModeListener;)V

    .line 272
    return-void
.end method

.method protected shouldScroll(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "intercept":Z
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v1

    .line 691
    .local v1, "recyclerView":Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    invoke-virtual {v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    .line 693
    .local v2, "scroller":Lcom/android/launcher3/views/RecyclerViewFastScroller;
    invoke-virtual {v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    const/4 v0, 0x1

    goto :goto_0

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 696
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v0, v3

    .line 698
    :cond_1
    :goto_0
    return v0
.end method

.method protected updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V
    .locals 6
    .param p1, "adapterHolder"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    .line 315
    iget-object v0, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->hasVisibleEntries()Z

    move-result v0

    .line 316
    .local v0, "isWidgetAvailable":Z
    iget-object v1, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setVisibility(I)V

    .line 318
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmAdapterType(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    sget v4, Lcom/android/launcher3/R$string;->no_search_results:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 320
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmAdapterType(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    .line 321
    invoke-virtual {v1}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    .line 322
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    .line 323
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/model/UserManagerState;)V

    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseActivity;

    .line 324
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    sget v4, Lcom/android/launcher3/R$string;->no_widgets_available:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 329
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    return-void
.end method
