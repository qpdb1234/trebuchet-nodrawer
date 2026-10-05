.class public Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.super Lcom/android/launcher3/FastScrollRecyclerView;
.source "AllAppsRecyclerView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_LATENCY:Z

.field protected static final TAG:Ljava/lang/String; = "AllAppsRecyclerView"


# instance fields
.field protected mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "*>;"
        }
    .end annotation
.end field

.field private mChildAttachedConsumer:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCumulativeVerticalScroll:I

.field private final mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

.field protected final mNumAppsPerRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "SearchLogging"

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->DEBUG_LATENCY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/FastScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    .line 88
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    .line 89
    return-void
.end method

.method private logCumulativeVerticalScroll()V
    .locals 8

    .line 325
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 326
    .local v0, "context":Lcom/android/launcher3/views/ActivityContext;
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    .line 327
    .local v1, "mgr":Lcom/android/launcher3/logging/StatsLogManager;
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    .line 328
    .local v2, "appsView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v3

    .line 329
    .local v3, "editText":Lcom/android/launcher3/ExtendedEditText;
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 331
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    move-result-object v5

    .line 332
    if-nez v3, :cond_0

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher3/ExtendedEditText;->length()I

    move-result v6

    :goto_0
    invoke-virtual {v5, v6}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->setQueryLength(I)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    move-result-object v5

    .line 329
    invoke-virtual {v4, v5}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 332
    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 333
    .local v4, "containerInfo":Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    iget v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCumulativeVerticalScroll:I

    if-nez v5, :cond_1

    .line 336
    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_SCROLLED_UNKNOWN_DIRECTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v5, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 338
    return-void

    .line 339
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 341
    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCumulativeVerticalScroll:I

    if-lez v6, :cond_2

    .line 342
    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_SEARCH_SCROLLED_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    .line 343
    :cond_2
    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_SEARCH_SCROLLED_UP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 341
    :goto_1
    invoke-interface {v5, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 344
    return-void

    .line 345
    :cond_3
    iget-object v5, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v5, :cond_5

    .line 346
    iget-object v5, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getCurrentPage()I

    move-result v5

    .line 347
    .local v5, "currentPage":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 349
    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCumulativeVerticalScroll:I

    if-lez v7, :cond_4

    .line 350
    sget-object v7, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WORK_FAB_BUTTON_COLLAPSE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_2

    .line 351
    :cond_4
    sget-object v7, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WORK_FAB_BUTTON_EXTEND:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 349
    :goto_2
    invoke-interface {v6, v7}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 352
    return-void

    .line 356
    .end local v5    # "currentPage":I
    :cond_5
    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCumulativeVerticalScroll:I

    if-lez v6, :cond_6

    .line 357
    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_PERSONAL_SCROLLED_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_3

    .line 358
    :cond_6
    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_PERSONAL_SCROLLED_UP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 356
    :goto_3
    invoke-interface {v5, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 359
    return-void
.end method


# virtual methods
.method public getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "*>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-object v0
.end method

.method public getScrollBarMarginBottom()I
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 315
    :goto_0
    return v0
.end method

.method public getScrollBarTop()I
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->all_apps_header_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    .line 310
    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mChildAttachedConsumer:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 303
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 304
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 135
    sget-boolean v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->DEBUG_LATENCY:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDraw; time stamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "SearchLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->onFastScrollCompleted()V

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->onFastScrollCompleted()V

    .line 206
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 154
    invoke-super {p0, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->onScrollStateChanged(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    .line 157
    .local v0, "mgr":Lcom/android/launcher3/logging/StatsLogManager;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 159
    :pswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCumulativeVerticalScroll:I

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->requestFocus()Z

    .line 161
    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_VERTICAL_SWIPE_BEGIN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->sendToInteractionJankMonitor(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    .line 164
    goto :goto_0

    .line 166
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_VERTICAL_SWIPE_END:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->sendToInteractionJankMonitor(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View;)V

    .line 168
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->logCumulativeVerticalScroll()V

    .line 171
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onScrolled(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 175
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/FastScrollRecyclerView;->onScrolled(II)V

    .line 176
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCumulativeVerticalScroll:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCumulativeVerticalScroll:I

    .line 177
    return-void
.end method

.method public onSearchResultsChanged()V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 150
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updatePoolSize()V

    .line 145
    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 9
    .param p1, "dy"    # I

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_9

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    .line 236
    .local v1, "scrollY":I
    if-gez v1, :cond_2

    .line 237
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 238
    return-void

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollBarHeight()I

    move-result v3

    .line 243
    .local v3, "availableScrollBarHeight":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v4

    .line 244
    .local v4, "availableScrollHeight":I
    if-gtz v4, :cond_3

    .line 245
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 246
    return-void

    .line 249
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isThumbDetached()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 250
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isDraggingThumb()Z

    move-result v2

    if-nez v2, :cond_8

    .line 254
    int-to-float v2, v1

    int-to-float v5, v4

    div-float/2addr v2, v5

    int-to-float v5, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 257
    .local v2, "scrollBarY":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v5

    .line 258
    .local v5, "thumbScrollY":I
    sub-int v6, v2, v5

    .line 259
    .local v6, "diffScrollY":I
    mul-int v7, v6, p1

    int-to-float v7, v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 265
    if-gez p1, :cond_4

    .line 266
    mul-int v7, p1, v5

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    float-to-int v7, v7

    .line 267
    .local v7, "offset":I
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v5, v8

    .line 268
    .end local v7    # "offset":I
    goto :goto_0

    .line 269
    :cond_4
    sub-int v7, v3, v5

    mul-int/2addr v7, p1

    int-to-float v7, v7

    sub-int v8, v3, v2

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    .line 271
    .restart local v7    # "offset":I
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v5, v8

    .line 273
    .end local v7    # "offset":I
    :goto_0
    const/4 v7, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 274
    iget-object v7, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 275
    if-ne v2, v5, :cond_6

    .line 276
    iget-object v7, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v7}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->reattachThumbToScroll()V

    goto :goto_1

    .line 282
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 284
    .end local v2    # "scrollBarY":I
    .end local v5    # "thumbScrollY":I
    .end local v6    # "diffScrollY":I
    :cond_6
    :goto_1
    goto :goto_2

    .line 286
    :cond_7
    invoke-virtual {p0, v1, v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    .line 288
    :cond_8
    :goto_2
    return-void

    .line 230
    .end local v1    # "scrollY":I
    .end local v3    # "availableScrollBarHeight":I
    .end local v4    # "availableScrollHeight":I
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 231
    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 6
    .param p1, "touchFraction"    # F

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    .line 185
    .local v0, "rowCount":I
    const-string v1, ""

    if-nez v0, :cond_0

    .line 186
    return-object v1

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 191
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, "fastScrollSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 193
    .local v3, "count":I
    if-nez v3, :cond_1

    .line 194
    return-object v1

    .line 196
    :cond_1
    int-to-float v1, v3

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v1

    .line 197
    .local v1, "index":I
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 198
    .local v4, "section":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->smoothScrollToSection(Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V

    .line 199
    iget-object v5, v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object v5
.end method

.method public setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "*>;)V"
        }
    .end annotation

    .line 95
    .local p1, "apps":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<*>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 96
    return-void
.end method

.method protected setChildAttachedConsumer(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 295
    .local p1, "childAttachedConsumer":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mChildAttachedConsumer:Landroidx/core/util/Consumer;

    .line 296
    return-void
.end method

.method protected updatePoolSize()V
    .locals 1

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updatePoolSize(Z)V

    .line 104
    return-void
.end method

.method updatePoolSize(Z)V
    .locals 6
    .param p1, "hasWorkProfile"    # Z

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 108
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    .line 109
    .local v1, "pool":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 110
    const/16 v4, 0x8

    invoke-virtual {v1, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 114
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getMaxAllAppsRowCount()I

    move-result v3

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/2addr v3, v4

    .line 116
    .local v3, "maxPoolSizeForAppIcons":I
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ALL_APPS_GONE_VISIBILITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_RV_PREINFLATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 123
    :cond_0
    if-eqz p1, :cond_1

    .line 124
    mul-int/lit8 v3, v3, 0x2

    .line 126
    :cond_1
    invoke-virtual {v1, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 128
    return-void
.end method
