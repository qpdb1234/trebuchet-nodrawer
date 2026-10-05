.class public Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.super Lcom/android/launcher3/views/SpringRelativeLayout;
.source "ActivityAllAppsContainerView.java"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;
.implements Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/views/SpringRelativeLayout;",
        "Lcom/android/launcher3/DragSource;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
        "Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;",
        "Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;"
    }
.end annotation


# static fields
.field public static final BOTTOM_SHEET_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected static final BUNDLE_KEY_CURRENT_PAGE:Ljava/lang/String; = "launcher.allapps.current_page"

.field private static final DEBUG_HEADER_PROTECTION:Z = false

.field private static final DEFAULT_SEARCH_TRANSITION_DURATION_MS:J = 0x0L

.field public static final FLING_VELOCITY_MULTIPLIER:F = 1200.0f

.field public static final PULL_MULTIPLIER:F = 0.02f

.field private static final SCROLL_TO_BOTTOM_DURATION:I = 0x1f4


# instance fields
.field protected final mAH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "TT;>.AdapterHolder;>;"
        }
    .end annotation
.end field

.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AllAppsStore<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mAllAppsTransitionController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field private mBottomSheetAlpha:F

.field protected mBottomSheetBackground:Landroid/view/View;

.field private mBottomSheetBackgroundColor:I

.field private mBottomSheetCornerRadii:[F

.field private mBottomSheetHandleArea:Landroid/view/View;

.field protected mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field protected final mFastScrollerOffset:Landroid/graphics/Point;

.field private mForceBottomSheetVisible:Z

.field private mHasPrivateApps:Z

.field private mHasWorkApps:Z

.field protected mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

.field private mHeaderColor:I

.field private final mHeaderPaint:Landroid/graphics/Paint;

.field private final mHeaderProtectionColor:I

.field protected final mHeaderThreshold:F

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsSearching:Z

.field protected mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation
.end field

.field private mNavBarScrimHeight:I

.field private final mNavBarScrimPaint:Landroid/graphics/Paint;

.field protected final mPersonalMatcher:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

.field private mPrivateSpaceHeaderViewController:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

.field private mRebindAdaptersAfterSearchAnimation:Z

.field protected final mScrimColor:I

.field private mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field protected mSearchContainer:Landroid/view/View;

.field private mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

.field private final mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

.field protected final mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

.field protected mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

.field private mTabsProtectionAlpha:I

.field private final mTmpPath:Landroid/graphics/Path;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field protected mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field protected mUsingTabs:Z

.field protected mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

.field protected mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;


# direct methods
.method public static synthetic $r8$lambda$AHZAVc96TJjYZikmb9X_0Vs0YFw(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$resetAndScrollToBottom$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$D3SUz-nZA4F-GX0ur6zlI4TF7Rw(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$rebindAdapters$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KZgWcjJ2IuYNc9s3M7L4lWET1OY(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$replaceAppsRVContainer$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$QF3eIT7qKBQBlQODzSiwrst9S4U(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$animateToSearchState$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZbQRlT8MRa-kV792Lso1UpdfSyY(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$rebindAdapters$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rOahX5n8H2XrVMXrdpuKP1GE5Z0(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$new$0(Landroid/view/View;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBottomSheetAlpha(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsets(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetBottomSheetAlpha(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setBottomSheetAlpha(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 114
    new-instance v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$1;

    const-string v1, "bottomSheetAlpha"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->BOTTOM_SHEET_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 198
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 202
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 206
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    nop

    .line 140
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPersonalMatcher:Ljava/util/function/Predicate;

    .line 143
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    .line 153
    new-instance v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 162
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    .line 163
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    .line 190
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    .line 207
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    .line 208
    new-instance v3, Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-direct {v3, v2}, Lcom/android/launcher3/allapps/AllAppsStore;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    .line 210
    sget v4, Lcom/android/launcher3/R$attr;->allAppsScrimColor:I

    invoke-static {p1, v4}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimColor:I

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$dimen;->dynamic_grid_cell_border_spacing:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    .line 213
    sget v4, Lcom/android/launcher3/R$attr;->allappsHeaderProtectionColor:I

    invoke-static {p1, v4}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderProtectionColor:I

    .line 215
    new-instance v4, Lcom/android/launcher3/allapps/WorkProfileManager;

    const-class v5, Landroid/os/UserManager;

    .line 216
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    move-object v6, v2

    check-cast v6, Lcom/android/launcher3/views/ActivityContext;

    .line 218
    invoke-interface {v6}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 219
    invoke-virtual {v7, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/pm/UserCache;

    invoke-direct {v4, v5, p0, v6, v7}, Lcom/android/launcher3/allapps/WorkProfileManager;-><init>(Landroid/os/UserManager;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/pm/UserCache;)V

    iput-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    .line 220
    new-instance v4, Lcom/android/launcher3/allapps/PrivateProfileManager;

    const-class v5, Landroid/os/UserManager;

    .line 221
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    move-object v6, v2

    check-cast v6, Lcom/android/launcher3/views/ActivityContext;

    .line 223
    invoke-interface {v6}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 224
    invoke-virtual {v7, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/pm/UserCache;

    invoke-direct {v4, v5, p0, v6, v7}, Lcom/android/launcher3/allapps/PrivateProfileManager;-><init>(Landroid/os/UserManager;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/pm/UserCache;)V

    iput-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    .line 225
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    aput-object v5, v4, v1

    const/4 v0, 0x2

    aput-object v5, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    .line 226
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    .line 227
    invoke-static {v2}, Lcom/android/launcher3/util/Themes;->getNavBarScrimColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    new-instance v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    .line 230
    .local v0, "onAppsUpdated":Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 234
    new-instance v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->createSearchUiDelegate()Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->initContent()V

    .line 242
    new-instance v1, Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/SearchTransitionController;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .param p1, "x1"    # I

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->absorbSwipeUpVelocity(I)V

    return-void
.end method

.method private alignParentTop(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "includeTabsMargin"    # Z

    .line 896
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 897
    return-void

    .line 900
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 901
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 902
    nop

    .line 903
    if-eqz p2, :cond_1

    .line 904
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_header_pill_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 906
    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 907
    return-void
.end method

.method private animateToSearchState(Z)V
    .locals 2
    .param p1, "goingToSearch"    # Z

    .line 393
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(ZJ)V

    .line 394
    return-void
.end method

.method private animateToSearchState(ZJ)V
    .locals 2
    .param p1, "goingToSearch"    # Z
    .param p2, "durationMs"    # J

    .line 402
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/SearchTransitionController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 403
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setVisibility(I)V

    .line 406
    if-eqz p1, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->onActivePageChanged(I)V

    goto :goto_1

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsTransitionController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->animateAllAppsToNoScale()V

    .line 413
    :cond_3
    :goto_1
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setScrollbarVisibility(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    new-instance v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Z)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/launcher3/allapps/SearchTransitionController;->animateToState(ZJLjava/lang/Runnable;)V

    .line 434
    return-void
.end method

.method private applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "grid"    # Lcom/android/launcher3/DeviceProfile;

    .line 1250
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1251
    .local v0, "bottomPadding":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda1;-><init>(ILcom/android/launcher3/DeviceProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1257
    return-void
.end method

.method private getActiveAppsRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 2

    .line 1127
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isPersonalTab()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0

    .line 1128
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method private inflateWorkCardsIfNeeded()V
    .locals 5

    .line 1296
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 1297
    .local v0, "workRV":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    if-eqz v0, :cond_2

    .line 1298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1299
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1300
    .local v2, "currentView":Landroid/view/View;
    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    .line 1301
    .local v3, "currentItemViewType":I
    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    .line 1302
    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/allapps/WorkEduCard;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/WorkEduCard;->updateStringFromCache()V

    goto :goto_1

    .line 1303
    :cond_0
    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 1304
    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/allapps/WorkPausedCard;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/WorkPausedCard;->updateStringFromCache()V

    .line 1298
    .end local v2    # "currentView":Landroid/view/View;
    .end local v3    # "currentItemViewType":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1308
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private isDescendantViewVisible(I)Z
    .locals 3
    .param p1, "viewId"    # I

    .line 1278
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1279
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1281
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 1283
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method private synthetic lambda$animateToSearchState$2(Z)V
    .locals 2
    .param p1, "goingToSearch"    # Z

    .line 416
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    .line 417
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateSearchResultsVisibility()V

    .line 418
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result v0

    .line 419
    .local v0, "previousPage":I
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mRebindAdaptersAfterSearchAnimation:Z

    if-eqz v1, :cond_0

    .line 420
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    .line 421
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mRebindAdaptersAfterSearchAnimation:Z

    .line 424
    :cond_0
    if-eqz p1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->onAnimateToSearchStateCompleted()V

    goto :goto_0

    .line 427
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;)V

    .line 428
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v1, :cond_2

    .line 429
    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsPagedView;->setCurrentPage(I)V

    .line 431
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onActivePageChanged(I)V

    .line 433
    :goto_0
    return-void
.end method

.method static synthetic lambda$applyAdapterSideAndBottomPaddings$7(ILcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)V
    .locals 2
    .param p0, "bottomPadding"    # I
    .param p1, "grid"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "adapterHolder"    # Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    .line 1252
    iget-object v0, p2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 1253
    iget-object v0, p2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1254
    iget-object v0, p2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1255
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->applyPadding()V

    .line 1256
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 235
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->requestFocus()Z

    .line 238
    :cond_0
    return-void
.end method

.method static synthetic lambda$onFinishInflate$1(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$rebindAdapters$4(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 623
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsPagedView;->snapToPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_TAP_ON_PERSONAL_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 625
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 627
    :cond_0
    return-void
.end method

.method private synthetic lambda$rebindAdapters$5(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 630
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsPagedView;->snapToPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_TAP_ON_WORK_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 632
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 634
    :cond_0
    return-void
.end method

.method private synthetic lambda$replaceAppsRVContainer$6()V
    .locals 2

    .line 724
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->applyPadding()V

    return-void
.end method

.method private synthetic lambda$resetAndScrollToBottom$3()V
    .locals 2

    .line 518
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->switchToTab(I)V

    .line 522
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToBottomWithMotion(I)V

    .line 523
    return-void
.end method

.method private layoutBelowSearchContainer(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "includeTabsMargin"    # Z

    .line 877
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 878
    return-void

    .line 881
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 882
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    sget v2, Lcom/android/launcher3/R$id;->search_container_all_apps:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 884
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_search_bar_bottom_adjustment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 886
    .local v1, "topMargin":I
    if-eqz p2, :cond_1

    .line 887
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->all_apps_header_pill_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 889
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->all_apps_tabs_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 892
    :cond_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 893
    return-void
.end method

.method private layoutWithoutSearchContainer(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "includeTabsMargin"    # Z

    .line 932
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 933
    return-void

    .line 936
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 937
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 938
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 939
    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_header_pill_height:I

    goto :goto_0

    .line 940
    :cond_1
    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_header_top_margin:I

    .line 938
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 941
    return-void
.end method

.method private removeCustomRules(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 910
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 911
    return-void

    .line 914
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 915
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 916
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 917
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 918
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 919
    return-void
.end method

.method private replaceAppsRVContainer(Z)V
    .locals 7
    .param p1, "showTabs"    # Z

    .line 692
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    .line 694
    .local v1, "adapterHolder":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>.AdapterHolder;"
    iget-object v3, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v3, :cond_0

    .line 695
    iget-object v3, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 696
    iget-object v3, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 692
    .end local v1    # "adapterHolder":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>.AdapterHolder;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 700
    .local v0, "oldView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 701
    .local v1, "index":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeView(Landroid/view/View;)V

    .line 702
    if-eqz p1, :cond_2

    sget v3, Lcom/android/launcher3/R$layout;->all_apps_tabs:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/android/launcher3/R$layout;->all_apps_rv_layout:I

    .line 703
    .local v3, "layout":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 704
    .local v4, "rvContainer":Landroid/view/View;
    invoke-virtual {p0, v4, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->addView(Landroid/view/View;I)V

    .line 705
    if-eqz p1, :cond_3

    .line 706
    move-object v2, v4

    check-cast v2, Lcom/android/launcher3/allapps/AllAppsPagedView;

    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    .line 707
    invoke-virtual {v2, p0}, Lcom/android/launcher3/allapps/AllAppsPagedView;->initParentViews(Landroid/view/View;)V

    .line 708
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setOnActivePageChangedListener(Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V

    .line 709
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    new-instance v6, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;

    invoke-direct {v6, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {v2, v6}, Lcom/android/launcher3/allapps/AllAppsPagedView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 723
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/WorkProfileManager;->reset()V

    .line 724
    new-instance v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 727
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/WorkProfileManager;->detachWorkModeSwitch()V

    .line 728
    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    .line 731
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    .line 732
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    .line 733
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchSupported()Z

    move-result v2

    if-nez v2, :cond_4

    .line 734
    invoke-direct {p0, v4, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutWithoutSearchContainer(Landroid/view/View;Z)V

    goto :goto_3

    .line 735
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 736
    invoke-direct {p0, v4, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    .line 737
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    goto :goto_3

    .line 739
    :cond_5
    invoke-direct {p0, v4, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    .line 740
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    .line 743
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateSearchResultsVisibility()V

    .line 744
    return-void
.end method

.method private setBottomSheetAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 1036
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    .line 1037
    return-void
.end method

.method private setDeviceManagementResources()V
    .locals 3

    .line 1260
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1261
    sget v0, Lcom/android/launcher3/R$id;->tab_personal:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1262
    .local v0, "personalTab":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    sget v1, Lcom/android/launcher3/R$id;->tab_work:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1265
    .local v1, "workTab":Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    .end local v0    # "personalTab":Landroid/widget/Button;
    .end local v1    # "workTab":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private static setUpCustomRecyclerViewPool(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;)V
    .locals 2
    .param p0, "mainRecyclerView"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .param p1, "workRecyclerView"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .param p2, "recycledViewPool"    # Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    .line 677
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_RV_PREINFLATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    return-void

    .line 680
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 681
    .local v0, "hasWorkProfile":Z
    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->setHasWorkProfile(Z)V

    .line 682
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 683
    if-eqz p1, :cond_2

    .line 684
    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 686
    :cond_2
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ALL_APPS_GONE_VISIBILITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 687
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updatePoolSize(Z)V

    .line 689
    :cond_3
    return-void
.end method


# virtual methods
.method public addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;FF)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "velocity"    # F
    .param p3, "progress"    # F

    .line 1359
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    new-instance v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;FF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1370
    return-void
.end method

.method protected computeNavBarScrimHeight(Landroid/view/WindowInsets;)I
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1200
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected createAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;)",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 922
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    .local p1, "appsList":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    new-instance v6, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPrivateSpaceHeaderViewController:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;)V

    return-object v6
.end method

.method protected createSearchUiDelegate()Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;
    .locals 1

    .line 247
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    new-instance v0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-object v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1212
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->computeNavBarScrimHeight(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    .line 1213
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V

    .line 1214
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1219
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1221
    iget v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    if-lez v0, :cond_0

    .line 1222
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1225
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 528
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/SearchUiManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 529
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 967
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    .local p1, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    goto :goto_0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AllAppsContainerView"

    const-string v2, "restoreInstanceState viewId = 0"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget v0, Lcom/android/launcher3/R$id;->work_tab_state_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 973
    .local v0, "state":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 974
    const-string v1, "launcher.allapps.current_page"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 975
    .local v1, "currentPage":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v3, :cond_0

    .line 976
    invoke-virtual {v3, v1}, Lcom/android/launcher3/allapps/AllAppsPagedView;->setCurrentPage(I)V

    .line 977
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters()V

    goto :goto_1

    .line 979
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    .line 982
    .end local v1    # "currentPage":I
    :cond_1
    :goto_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 986
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 987
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 988
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "launcher.allapps.current_page"

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 989
    sget v1, Lcom/android/launcher3/R$id;->work_tab_state_id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 990
    return-void
.end method

.method public drawOnScrimWithScale(Landroid/graphics/Canvas;F)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scale"    # F

    .line 1398
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v8, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    .line 1399
    .local v8, "panel":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v9, v1

    .line 1400
    .local v9, "hasBottomSheet":Z
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v10

    .line 1402
    .local v10, "translationY":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p2

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    .line 1403
    .local v11, "horizontalScaleOffset":F
    sub-float v2, v1, p2

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v12, v2, v4

    .line 1405
    .local v12, "verticalScaleOffset":F
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float v13, v2, v10

    .line 1406
    .local v13, "topNoScale":F
    add-float v14, v13, v12

    .line 1407
    .local v14, "topWithScale":F
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float v15, v2, v11

    .line 1408
    .local v15, "leftWithScale":F
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    sub-float v6, v2, v11

    .line 1410
    .local v6, "rightWithScale":F
    if-eqz v9, :cond_1

    .line 1411
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackgroundColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1412
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1414
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    .line 1418
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    .line 1414
    invoke-virtual {v2, v15, v14, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1419
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1420
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetCornerRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1421
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1428
    :cond_1
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1429
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAlpha()F

    move-result v3

    iget v4, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1431
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimColor:I

    if-eq v2, v3, :cond_9

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-nez v2, :cond_2

    move/from16 v23, v6

    goto/16 :goto_6

    .line 1436
    :cond_2
    nop

    .line 1437
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeaderBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getVisibleContainerView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v5, v2

    .line 1438
    .local v5, "headerBottomNoScale":F
    sub-float v17, v5, v13

    .line 1439
    .local v17, "headerHeightNoScale":F
    mul-float v2, v17, p2

    add-float v4, v14, v2

    .line 1440
    .local v4, "headerBottomWithScaleOnTablet":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getVisibleContainerView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v1, p2

    mul-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v16, v2, v1

    .line 1441
    .local v16, "headerBottomOffset":F
    mul-float v1, v5, p2

    add-float v18, v1, v16

    .line 1442
    .local v18, "headerBottomWithScaleOnPhone":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v19

    .line 1443
    .local v19, "headerView":Lcom/android/launcher3/allapps/FloatingHeaderView;
    if-eqz v9, :cond_5

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v20, v4

    move/from16 v22, v5

    move/from16 v23, v6

    goto :goto_2

    .line 1446
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v15, v14, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1451
    iget-object v1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1452
    iget-object v1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetCornerRadii:[F

    move/from16 v20, v4

    .end local v4    # "headerBottomWithScaleOnTablet":F
    .local v20, "headerBottomWithScaleOnTablet":F
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1453
    iget-object v1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move/from16 v22, v5

    move/from16 v23, v6

    goto :goto_2

    .line 1456
    .end local v20    # "headerBottomWithScaleOnTablet":F
    .restart local v4    # "headerBottomWithScaleOnTablet":F
    :cond_5
    move/from16 v20, v4

    .end local v4    # "headerBottomWithScaleOnTablet":F
    .restart local v20    # "headerBottomWithScaleOnTablet":F
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v22, v5

    .end local v5    # "headerBottomNoScale":F
    .local v22, "headerBottomNoScale":F
    move/from16 v5, v18

    move/from16 v23, v6

    .end local v6    # "rightWithScale":F
    .local v23, "rightWithScale":F
    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1460
    :goto_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPeripheralProtectionHeight()I

    move-result v6

    .line 1461
    .local v6, "tabsHeight":I
    iget v1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    if-lez v1, :cond_8

    if-eqz v6, :cond_8

    .line 1466
    iget-object v1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAlpha()F

    move-result v2

    iget v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1468
    const/4 v1, 0x0

    .line 1469
    .local v1, "left":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1470
    .local v2, "right":F
    if-eqz v9, :cond_6

    .line 1471
    iget-object v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v3, v11

    .line 1472
    iget-object v3, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v3, v11

    move/from16 v21, v1

    move/from16 v24, v2

    goto :goto_3

    .line 1470
    :cond_6
    move/from16 v21, v1

    move/from16 v24, v2

    .line 1475
    .end local v1    # "left":F
    .end local v2    # "right":F
    .local v21, "left":F
    .local v24, "right":F
    :goto_3
    if-eqz v9, :cond_7

    .line 1476
    move/from16 v4, v20

    goto :goto_4

    .line 1477
    :cond_7
    move/from16 v4, v18

    :goto_4
    move/from16 v25, v4

    .line 1478
    .local v25, "tabTopWithScale":F
    int-to-float v1, v6

    mul-float v1, v1, p2

    add-float v26, v25, v1

    .line 1480
    .local v26, "tabBottomWithScale":F
    iget-object v5, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v25

    move/from16 v4, v24

    move-object/from16 v27, v5

    move/from16 v5, v26

    move/from16 v28, v6

    .end local v6    # "tabsHeight":I
    .local v28, "tabsHeight":I
    move-object/from16 v6, v27

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1461
    .end local v21    # "left":F
    .end local v24    # "right":F
    .end local v25    # "tabTopWithScale":F
    .end local v26    # "tabBottomWithScale":F
    .end local v28    # "tabsHeight":I
    .restart local v6    # "tabsHeight":I
    :cond_8
    move/from16 v28, v6

    .line 1487
    .end local v6    # "tabsHeight":I
    .restart local v28    # "tabsHeight":I
    :goto_5
    return-void

    .line 1431
    .end local v16    # "headerBottomOffset":F
    .end local v17    # "headerHeightNoScale":F
    .end local v18    # "headerBottomWithScaleOnPhone":F
    .end local v19    # "headerView":Lcom/android/launcher3/allapps/FloatingHeaderView;
    .end local v20    # "headerBottomWithScaleOnTablet":F
    .end local v22    # "headerBottomNoScale":F
    .end local v23    # "rightWithScale":F
    .end local v28    # "tabsHeight":I
    .local v6, "rightWithScale":F
    :cond_9
    move/from16 v23, v6

    .line 1432
    .end local v6    # "rightWithScale":F
    .restart local v23    # "rightWithScale":F
    :goto_6
    return-void
.end method

.method public forceBottomSheetVisible(Z)V
    .locals 1
    .param p1, "force"    # Z

    .line 353
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mForceBottomSheetVisible:Z

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V

    .line 355
    return-void
.end method

.method public getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 1

    .line 1114
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    return-object v0

    .line 1117
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveAppsRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getAppsRecyclerViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1139
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/launcher3/R$id;->apps_list_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    return-object v0
.end method

.method public getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/AllAppsStore<",
            "TT;>;"
        }
    .end annotation

    .line 993
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    return-object v0
.end method

.method public getBottomSheetBackground()Landroid/view/View;
    .locals 1

    .line 344
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1339
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 1344
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    const/4 v0, 0x2

    goto :goto_0

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getNextPage()I

    move-result v0

    .line 1344
    :goto_0
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 533
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->all_apps_search_results:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    .line 537
    .local v0, "cache":Lcom/android/launcher3/model/StringCache;
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v1, :cond_4

    .line 538
    if-eqz v0, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isPersonalTab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    goto :goto_0

    .line 541
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    .line 539
    :goto_0
    return-object v1

    .line 543
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isPersonalTab()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 544
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->all_apps_button_personal_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 545
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->all_apps_button_work_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    :goto_1
    return-object v1

    .line 548
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->all_apps_button_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 1382
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1383
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1384
    return-void
.end method

.method public getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;
    .locals 1

    .line 1334
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    return-object v0
.end method

.method public getFloatingSearchBarRestingMarginBottom()I
    .locals 1

    .line 847
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getFloatingSearchBarRestingMarginEnd()I
    .locals 3

    .line 872
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 873
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DeviceProfile;->getAllAppsIconStartMargin(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public getFloatingSearchBarRestingMarginStart()I
    .locals 3

    .line 859
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 860
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DeviceProfile;->getAllAppsIconStartMargin(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public getHeaderBottom()I
    .locals 2

    .line 1500
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getClipTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1501
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1502
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 1505
    :cond_0
    return v0

    .line 1507
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected getHeaderColor(F)I
    .locals 3
    .param p1, "blendRatio"    # F

    .line 812
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimColor:I

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderProtectionColor:I

    .line 813
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    .line 814
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 812
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1162
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation

    .line 957
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    return-object v0
.end method

.method public getNavBarScrimHeight()I
    .locals 1

    .line 1207
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    return v0
.end method

.method public getPersonalAppList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;"
        }
    .end annotation

    .line 1330
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-object v0
.end method

.method public getPrivateProfileManager()Lcom/android/launcher3/allapps/PrivateProfileManager;
    .locals 1

    .line 1350
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    return-object v0
.end method

.method public getSearchFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 2

    .line 1122
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->-$$Nest$fgetmOnFocusChangeListener(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;
    .locals 1

    .line 1144
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    return-object v0
.end method

.method public getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;"
        }
    .end annotation

    .line 1326
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-object v0
.end method

.method public getSearchTransitionController()Lcom/android/launcher3/allapps/SearchTransitionController;
    .locals 1

    .line 1524
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    return-object v0
.end method

.method public getSearchUiDelegate()Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;
    .locals 1

    .line 251
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    return-object v0
.end method

.method public getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;
    .locals 1

    .line 340
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    return-object v0
.end method

.method public getSearchView()Landroid/view/View;
    .locals 1

    .line 358
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    return-object v0
.end method

.method public getVisibleContainerView()Landroid/view/View;
    .locals 1

    .line 1514
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public getWorkManager()Lcom/android/launcher3/allapps/WorkProfileManager;
    .locals 1

    .line 997
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    return-object v0
.end method

.method public hasPrivateProfile()Z
    .locals 1

    .line 1002
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasPrivateApps:Z

    return v0
.end method

.method protected inflateSearchBar()Landroid/view/View;
    .locals 1

    .line 952
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->inflateSearchBar()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initContent()V
    .locals 7

    .line 263
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->createMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    .line 264
    invoke-static {}, Lcom/android/launcher3/Flags;->enablePrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/android/launcher3/allapps/PrivateProfileManager;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPrivateSpaceHeaderViewController:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    new-instance v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkProfileManager;Lcom/android/launcher3/allapps/PrivateProfileManager;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;ILcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    new-instance v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkProfileManager;Lcom/android/launcher3/allapps/PrivateProfileManager;)V

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;ILcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    new-instance v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-direct {v2, v3, v6, v6, v6}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkProfileManager;Lcom/android/launcher3/allapps/PrivateProfileManager;)V

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;ILcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->all_apps_content:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 280
    sget v0, Lcom/android/launcher3/R$id;->all_apps_header:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/FloatingHeaderView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    .line 281
    sget v0, Lcom/android/launcher3/R$id;->bottom_sheet_background:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    .line 282
    sget v0, Lcom/android/launcher3/R$id;->bottom_sheet_handle_area:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetHandleArea:Landroid/view/View;

    .line 283
    sget v0, Lcom/android/launcher3/R$id;->search_results_list_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/SearchRecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    .line 284
    sget v0, Lcom/android/launcher3/R$id;->fast_scroller:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 285
    sget v1, Lcom/android/launcher3/R$id;->fast_scroller_popup:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setPopupView(Landroid/widget/TextView;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->inflateSearchBar()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->addView(Landroid/view/View;)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/allapps/SearchUiManager;

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    .line 294
    return-void
.end method

.method public invalidateHeader()V
    .locals 1

    .line 1493
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    if-eqz v0, :cond_0

    .line 1494
    invoke-virtual {v0}, Lcom/android/launcher3/views/ScrimView;->invalidate()V

    .line 1496
    :cond_0
    return-void
.end method

.method public isInAllApps()Z
    .locals 1

    .line 945
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected isPersonalTab()Z
    .locals 1

    .line 1148
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getNextPage()I

    move-result v0

    if-nez v0, :cond_0

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

.method public isPersonalTabVisible()Z
    .locals 1

    .line 1317
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    sget v0, Lcom/android/launcher3/R$id;->tab_personal:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isDescendantViewVisible(I)Z

    move-result v0

    return v0
.end method

.method protected isSearchBarFloating()Z
    .locals 1

    .line 821
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->isSearchBarFloating()Z

    move-result v0

    return v0
.end method

.method protected isSearchSupported()Z
    .locals 1

    .line 928
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isSearching()Z
    .locals 1

    .line 553
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    return v0
.end method

.method public isWorkTabVisible()Z
    .locals 1

    .line 1322
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    sget v0, Lcom/android/launcher3/R$id;->tab_work:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isDescendantViewVisible(I)Z

    move-result v0

    return v0
.end method

.method public onActivePageChanged(I)V
    .locals 2
    .param p1, "currentActivePage"    # I

    .line 558
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/SearchTransitionController;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    return-void

    .line 562
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setActiveRV(I)V

    .line 570
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(ZZ)V

    .line 572
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/WorkProfileManager;->onActivePageChanged(I)V

    .line 573
    return-void
.end method

.method public onAppsUpdated()V
    .locals 2

    .line 1041
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    .line 1042
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->getItemInfoMatcher()Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasWorkApps:Z

    .line 1043
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    .line 1044
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getItemInfoMatcher()Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasPrivateApps:Z

    .line 1045
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters()V

    .line 1048
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasWorkApps:Z

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->reset()V

    .line 1051
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasPrivateApps:Z

    if-eqz v0, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->reset()V

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    .line 1056
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v1

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withCardinality(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_COUNT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1057
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1058
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 322
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->onAttachedToWindow()V

    .line 323
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->onInitializeSearchBar()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 331
    return-void
.end method

.method public onClearSearchResult()V
    .locals 1

    .line 363
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->clearHighlightedItem()V

    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(Z)V

    .line 365
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters()V

    .line 366
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 335
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->onDetachedFromWindow()V

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 337
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 5
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 1007
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    .line 1008
    .local v1, "holder":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>.AdapterHolder;"
    iget-object v2, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setAppsPerRow(I)V

    .line 1009
    iget-object v2, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setNumAppsPerRowAllApps(I)V

    .line 1010
    iget-object v2, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_0

    .line 1013
    iget-object v2, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v3, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 1014
    iget-object v2, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 1016
    .end local v1    # "holder":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>.AdapterHolder;"
    :cond_0
    goto :goto_0

    .line 1017
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V

    .line 1019
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->getNavBarScrimColor(Landroid/content/Context;)I

    move-result v0

    .line 1020
    .local v0, "navBarScrimColor":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 1021
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->invalidate()V

    .line 1024
    :cond_2
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 1166
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 298
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->onFinishInflate()V

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    new-instance v3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v2

    .line 304
    .local v2, "cornerRadius":F
    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v2, v3, v0

    aput v2, v3, v1

    const/4 v0, 0x3

    aput v2, v3, v0

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x5

    aput v1, v3, v0

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    iput-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetCornerRadii:[F

    .line 314
    nop

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$attr;->materialColorSurfaceDim:I

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackgroundColor:I

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0, p0}, Lcom/android/launcher3/allapps/SearchUiManager;->initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    .line 318
    return-void
.end method

.method protected onInitializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 1518
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1519
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->onInitializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1520
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1064
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1065
    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 1066
    return v1

    .line 1069
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1070
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    .line 1071
    .local v0, "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1072
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1073
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    goto :goto_0

    .line 1075
    :cond_1
    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 1078
    .end local v0    # "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_3

    .line 1079
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result v0

    return v0

    .line 1081
    :cond_3
    return v1
.end method

.method public onPull(FF)V
    .locals 2
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 1374
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const v0, 0x3ca3d70a    # 0.02f

    mul-float v1, p1, v0

    mul-float/2addr v0, p2

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->absorbPullDeltaDistance(FF)V

    .line 1378
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1086
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1087
    return v1

    .line 1090
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1091
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    .line 1092
    .local v0, "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1093
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1094
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    goto :goto_0

    .line 1096
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 1100
    .end local v0    # "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1101
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    .line 1102
    return v2

    .line 1104
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 1105
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getVisibleContainerView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1107
    return v2

    .line 1109
    :cond_4
    return v1
.end method

.method protected rebindAdapters()V
    .locals 1

    .line 576
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    .line 577
    return-void
.end method

.method protected rebindAdapters(Z)V
    .locals 10
    .param p1, "force"    # Z

    .line 580
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/SearchTransitionController;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 581
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mRebindAdaptersAfterSearchAnimation:Z

    .line 582
    return-void

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateSearchResultsVisibility()V

    .line 586
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldShowTabs()Z

    move-result v0

    .line 587
    .local v0, "showTabs":Z
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 588
    return-void

    .line 591
    :cond_1
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 592
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->getDecorator()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    .line 593
    .local v2, "decoration":Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/SearchRecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 594
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/SearchRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 600
    .end local v2    # "decoration":Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->replaceAppsRVContainer(Z)V

    .line 601
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    .line 603
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 604
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 605
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 609
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v2, :cond_5

    .line 610
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 611
    .local v2, "mainRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 612
    .local v3, "workRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v7, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPersonalMatcher:Ljava/util/function/Predicate;

    invoke-virtual {v6, v2, v7}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    .line 613
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v7, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/WorkProfileManager;->getItemInfoMatcher()Ljava/util/function/Predicate;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    .line 614
    sget v6, Lcom/android/launcher3/R$id;->apps_list_view_work:I

    invoke-virtual {v3, v6}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setId(I)V

    .line 615
    invoke-static {}, Lcom/android/launcher3/Flags;->enableExpandingPauseWorkButton()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_EXPANDING_PAUSE_WORK_BUTTON:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 616
    invoke-virtual {v6}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 617
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v6, v6, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v7, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    .line 618
    invoke-virtual {v7}, Lcom/android/launcher3/allapps/WorkProfileManager;->newScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v7

    .line 617
    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 620
    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setActiveMarker(I)V

    .line 621
    sget v6, Lcom/android/launcher3/R$id;->tab_personal:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    .line 622
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    sget v6, Lcom/android/launcher3/R$id;->tab_work:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    .line 629
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setDeviceManagementResources()V

    .line 636
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/FloatingHeaderView;->isSetUp()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 637
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getNextPage()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onActivePageChanged(I)V

    goto :goto_0

    .line 640
    .end local v2    # "mainRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .end local v3    # "workRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    :cond_5
    sget v2, Lcom/android/launcher3/R$id;->apps_list_view:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 641
    .restart local v2    # "mainRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    const/4 v3, 0x0

    .line 642
    .restart local v3    # "workRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v7, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPersonalMatcher:Ljava/util/function/Predicate;

    invoke-virtual {v6, v2, v7}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    .line 643
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 645
    :cond_6
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    .line 648
    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AllAppsStore;->getRecyclerViewPool()Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    move-result-object v6

    .line 645
    invoke-static {v2, v3, v6}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setUpCustomRecyclerViewPool(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;)V

    .line 649
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setupHeader()V

    .line 651
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 653
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 654
    invoke-virtual {v6}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 655
    .local v6, "scrollerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 656
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/launcher3/R$dimen;->fastscroll_bottom_margin_floating_search:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 660
    .end local v6    # "scrollerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v7, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v4, v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    .line 661
    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    .line 662
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v4, v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    .line 663
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 467
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(ZZ)V

    .line 468
    return-void
.end method

.method public reset(ZZ)V
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "exitSearch"    # Z

    .line 477
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 477
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->endFastScrolling()V

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    .line 488
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->forceBottomSheetVisible(Z)V

    .line 490
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateHeaderScroll(I)V

    .line 491
    if-eqz p2, :cond_4

    .line 493
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/allapps/SearchUiManager;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(ZJ)V

    .line 497
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 498
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->reset()V

    .line 500
    :cond_5
    return-void
.end method

.method public resetAndScrollToBottom()V
    .locals 3

    .line 506
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->endFastScrolling()V

    .line 511
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateHeaderScroll(I)V

    .line 514
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(ZJ)V

    .line 516
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method

.method public setAllAppsTransitionController(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0
    .param p1, "allAppsTransitionController"    # Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 398
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsTransitionController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 399
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 1170
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1171
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1173
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V

    .line 1175
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1177
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1178
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 1180
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1181
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1183
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->enableResponsiveWorkspace()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1186
    :cond_1
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1187
    .local v2, "topPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v4, :cond_2

    .line 1188
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$dimen;->all_apps_additional_top_padding_floating_search:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 1191
    :cond_2
    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    invoke-virtual {p0, v4, v2, v5, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setPadding(IIII)V

    .line 1193
    .end local v2    # "topPadding":I
    :cond_3
    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 1194
    return-void
.end method

.method public setScrimView(Lcom/android/launcher3/views/ScrimView;)V
    .locals 0
    .param p1, "scrimView"    # Lcom/android/launcher3/views/ScrimView;

    .line 1393
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    .line 1394
    return-void
.end method

.method protected setScrollbarVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 1228
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    .line 1229
    .local v0, "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1230
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setVisibility(I)V

    .line 1232
    :cond_1
    return-void
.end method

.method public setSearchResults(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .line 372
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->clearHighlightedItem()V

    .line 373
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setSearchResults(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/SearchRecyclerView;->onSearchResultsChanged()V

    .line 376
    :cond_0
    if-eqz p1, :cond_1

    .line 377
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(Z)V

    .line 379
    :cond_1
    return-void
.end method

.method public setSearchResults(Ljava/util/ArrayList;I)V
    .locals 1
    .param p2, "searchResultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;I)V"
        }
    .end annotation

    .line 388
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;)V

    .line 389
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiDelegate:Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->onSearchResultsChanged(Ljava/util/List;I)V

    .line 390
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .line 1388
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->setTranslationY(F)V

    .line 1389
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->invalidateHeader()V

    .line 1390
    return-void
.end method

.method public setWorkManager(Lcom/android/launcher3/allapps/WorkProfileManager;)V
    .locals 0
    .param p1, "workManager"    # Lcom/android/launcher3/allapps/WorkProfileManager;

    .line 1312
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    .line 1313
    return-void
.end method

.method setupHeader()V
    .locals 10

    .line 747
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setVisibility(I)V

    .line 748
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 749
    .local v0, "tabsHidden":Z
    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    .line 750
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v4, v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    .line 751
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v5, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    .line 752
    const/4 v9, 0x2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-object v6, v2

    check-cast v6, Lcom/android/launcher3/allapps/SearchRecyclerView;

    .line 753
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result v7

    .line 749
    move v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setup(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/SearchRecyclerView;IZ)V

    .line 756
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getMaxTranslation()I

    move-result v2

    .line 757
    .local v2, "padding":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 758
    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    .line 762
    .local v4, "adapterHolder":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>.AdapterHolder;"
    if-eq v3, v9, :cond_0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getFloatingRowsHeight()I

    move-result v5

    if-nez v5, :cond_0

    .line 764
    iget-object v5, v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 766
    :cond_0
    iget-object v5, v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 768
    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->applyPadding()V

    .line 769
    iget-object v5, v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v5, :cond_1

    .line 770
    iget-object v5, v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 757
    .end local v4    # "adapterHolder":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>.AdapterHolder;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 774
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    .line 775
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchSupported()Z

    move-result v3

    if-nez v3, :cond_3

    .line 776
    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, v3, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutWithoutSearchContainer(Landroid/view/View;Z)V

    goto :goto_2

    .line 777
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 778
    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, v3, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    goto :goto_2

    .line 780
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, v3, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    .line 782
    :goto_2
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 437
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 440
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetHandleArea:Landroid/view/View;

    .line 441
    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    .line 445
    .local v1, "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    if-nez v1, :cond_1

    .line 446
    return v2

    .line 448
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 449
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v3

    if-ltz v3, :cond_2

    .line 450
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    const/4 v2, 0x0

    return v2

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getVisibleContainerView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 455
    return v2

    .line 457
    :cond_3
    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    return v2

    .line 442
    .end local v1    # "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    :cond_4
    :goto_0
    return v2
.end method

.method public shouldFloatingSearchBarBePillWhenUnfocused()Z
    .locals 1

    .line 831
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowTabs()Z
    .locals 1

    .line 1273
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasWorkApps:Z

    return v0
.end method

.method public switchToTab(I)V
    .locals 1
    .param p1, "tab"    # I

    .line 1156
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsPagedView;->setCurrentPage(I)V

    .line 1159
    :cond_0
    return-void
.end method

.method protected updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 1027
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mForceBottomSheetVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1028
    .local v0, "visible":Z
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    return-void
.end method

.method protected updateHeaderScroll(I)V
    .locals 8
    .param p1, "scrolledOffset"    # I

    .line 785
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    .line 786
    .local v0, "prog1":F
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeaderColor(F)I

    move-result v3

    .line 787
    .local v3, "headerColor":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPeripheralProtectionHeight()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 788
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget v4, v4, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    add-int/2addr v4, p1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    div-float/2addr v4, v5

    invoke-static {v4, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :goto_0
    nop

    .line 791
    .local v4, "tabsAlpha":I
    iget v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    if-ne v3, v5, :cond_1

    iget v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    if-eq v5, v4, :cond_2

    .line 792
    :cond_1
    iput v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    .line 793
    iput v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    .line 794
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->invalidateHeader()V

    .line 796
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$drawable;->bg_all_apps_searchbox:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 797
    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v5}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v5

    if-nez v5, :cond_3

    .line 798
    return-void

    .line 801
    :cond_3
    int-to-float v5, p1

    iget v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    div-float/2addr v5, v6

    invoke-static {v5, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    .line 802
    .local v1, "prog":F
    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v5}, Lcom/android/launcher3/allapps/SearchUiManager;->getBackgroundVisibility()Z

    move-result v5

    .line 803
    .local v5, "bgVisible":Z
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v6

    if-nez v6, :cond_4

    .line 804
    const/4 v5, 0x1

    goto :goto_1

    .line 805
    :cond_4
    int-to-float v6, p1

    iget v7, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 806
    const/4 v5, 0x0

    .line 808
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    sub-float/2addr v2, v1

    invoke-interface {v6, v5, v2}, Lcom/android/launcher3/allapps/SearchUiManager;->setBackgroundVisibility(ZF)V

    .line 809
    return-void
.end method

.method protected updateSearchResultsVisibility()V
    .locals 3

    .line 1235
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/SearchRecyclerView;->setVisibility(I)V

    .line 1237
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1238
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setVisibility(I)V

    goto :goto_0

    .line 1240
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/SearchRecyclerView;->setVisibility(I)V

    .line 1241
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1242
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setVisibility(I)V

    .line 1244
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->isSetUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setActiveRV(I)V

    .line 1247
    :cond_1
    return-void
.end method

.method public updateWorkUI()V
    .locals 1

    .line 1288
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setDeviceManagementResources()V

    .line 1289
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateStringFromCache()V

    .line 1292
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->inflateWorkCardsIfNeeded()V

    .line 1293
    return-void
.end method
