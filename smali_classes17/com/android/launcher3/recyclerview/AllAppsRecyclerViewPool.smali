.class public final Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;
.super Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
.source "AllAppsRecyclerViewPool.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J!\u0010\u0010\u001a\u00020\u0011\"\u000c\u0008\u0001\u0010\u0001*\u00020\u0012*\u00020\u00132\u0006\u0010\u0014\u001a\u0002H\u0001\u00a2\u0006\u0002\u0010\u0015J!\u0010\u0016\u001a\u00020\u000f\"\u000c\u0008\u0001\u0010\u0001*\u00020\u0012*\u00020\u00132\u0006\u0010\u0014\u001a\u0002H\u0001\u00a2\u0006\u0002\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;",
        "T",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "()V",
        "hasWorkProfile",
        "",
        "getHasWorkProfile",
        "()Z",
        "setHasWorkProfile",
        "(Z)V",
        "mCancellableTask",
        "Lcom/android/launcher3/util/CancellableTask;",
        "",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "clear",
        "",
        "getPreinflateCount",
        "",
        "Landroid/content/Context;",
        "Lcom/android/launcher3/views/ActivityContext;",
        "context",
        "(Landroid/content/Context;)I",
        "preInflateAllAppsViewHolders",
        "(Landroid/content/Context;)V",
        "Trebuchet_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private hasWorkProfile:Z

.field private mCancellableTask:Lcom/android/launcher3/util/CancellableTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/CancellableTask<",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$N0-yy8ChndM6Mc9I4RyeVMNOQ2g(ILkotlin/jvm/internal/Ref$ObjectRef;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->preInflateAllAppsViewHolders$lambda$0(ILkotlin/jvm/internal/Ref$ObjectRef;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WRrZbklxTGtfMv5TAdPetQTliBA(Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->preInflateAllAppsViewHolders$lambda$1(Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    return-void
.end method

.method private static final preInflateAllAppsViewHolders$lambda$0(ILkotlin/jvm/internal/Ref$ObjectRef;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;)Ljava/util/List;
    .locals 5
    .param p0, "$preInflateCount"    # I
    .param p1, "$task"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p2, "$adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p3, "$activeRv"    # Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "$task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activeRv"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "list":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_2

    .line 72
    iget-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/util/CancellableTask;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/util/CancellableTask;->getCanceled()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v3, v4

    :cond_0
    if-eqz v3, :cond_1

    .line 73
    goto :goto_1

    .line 75
    :cond_1
    nop

    .line 76
    move-object v2, p3

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_2
    :goto_1
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private static final preInflateAllAppsViewHolders$lambda$1(Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "this$0"    # Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;
    .param p1, "$context"    # Landroid/content/Context;
    .param p2, "viewHolders"    # Ljava/util/List;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->getPreinflateCount(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 84
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->mCancellableTask:Lcom/android/launcher3/util/CancellableTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/util/CancellableTask;->cancel()V

    .line 99
    :cond_0
    return-void
.end method

.method public final getHasWorkProfile()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->hasWorkProfile:Z

    return v0
.end method

.method public final getPreinflateCount(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)I"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/lit8 v0, v0, 0x4

    .line 113
    nop

    .line 112
    const/4 v1, 0x2

    add-int/2addr v0, v1

    .line 111
    nop

    .line 114
    .local v0, "targetPreinflateCount":I
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ALL_APPS_GONE_VISIBILITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 116
    .local v2, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->getMaxAllAppsRowCount()I

    move-result v3

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 118
    .end local v2    # "grid":Lcom/android/launcher3/DeviceProfile;
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->hasWorkProfile:Z

    if-eqz v2, :cond_1

    .line 119
    mul-int/lit8 v0, v0, 0x2

    .line 121
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->getRecycledViewCount(I)I

    move-result v1

    .line 122
    .local v1, "existingPreinflateCount":I
    sub-int v2, v0, v1

    return v2
.end method

.method public final preInflateAllAppsViewHolders(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 49
    .local v0, "appsView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .local v1, "activeRv":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {p0, p1}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->getPreinflateCount(Landroid/content/Context;)I

    move-result v2

    .line 51
    .local v2, "preInflateCount":I
    if-gtz v2, :cond_2

    .line 52
    return-void

    .line 60
    :cond_2
    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$adapter$1;

    invoke-direct {v4, p1, v3}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$adapter$1;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 59
    move-object v3, v4

    .line 65
    .local v3, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    iget-object v4, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->mCancellableTask:Lcom/android/launcher3/util/CancellableTask;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/util/CancellableTask;->cancel()V

    .line 66
    :cond_3
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 67
    .local v4, "task":Lkotlin/jvm/internal/Ref$ObjectRef;
    nop

    .line 68
    new-instance v12, Lcom/android/launcher3/util/CancellableTask;

    .line 69
    new-instance v6, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2, v4, v3, v1}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 81
    sget-object v5, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v7, "MAIN_EXECUTOR"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v5

    check-cast v7, Ljava/util/concurrent/Executor;

    .line 82
    new-instance v8, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, p1}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;Landroid/content/Context;)V

    .line 68
    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher3/util/CancellableTask;-><init>(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    iput-object v12, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 88
    iget-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/util/CancellableTask;

    iput-object v5, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->mCancellableTask:Lcom/android/launcher3/util/CancellableTask;

    .line 89
    sget-object v5, Lcom/android/launcher3/util/Executors;->VIEW_PREINFLATION_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v6, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->mCancellableTask:Lcom/android/launcher3/util/CancellableTask;

    check-cast v6, Ljava/lang/Runnable;

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 90
    return-void
.end method

.method public final setHasWorkProfile(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->hasWorkProfile:Z

    return-void
.end method
