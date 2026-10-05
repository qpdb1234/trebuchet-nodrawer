.class public Lcom/android/launcher3/apppairs/AppPairIcon;
.super Landroid/widget/FrameLayout;
.source "AppPairIcon.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Lcom/android/launcher3/Reorderable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPairIcon"


# instance fields
.field private mAppPairName:Lcom/android/launcher3/BubbleTextView;

.field private mIconGraphic:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

.field private mInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field private mIsLaunchableAtScreenSize:Z

.field private mScaleForReorderBounce:F

.field private final mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mIsLaunchableAtScreenSize:Z

    .line 67
    new-instance v0, Lcom/android/launcher3/util/MultiTranslateDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/MultiTranslateDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mScaleForReorderBounce:F

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mIsLaunchableAtScreenSize:Z

    .line 67
    new-instance v0, Lcom/android/launcher3/util/MultiTranslateDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/MultiTranslateDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mScaleForReorderBounce:F

    .line 72
    return-void
.end method

.method public static inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/apppairs/AppPairIcon;
    .locals 6
    .param p0, "resId"    # I
    .param p1, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p2, "group"    # Landroid/view/ViewGroup;
    .param p3, "appPairInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 83
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 84
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    :goto_0
    nop

    .line 87
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/apppairs/AppPairIcon;

    .line 90
    .local v3, "icon":Lcom/android/launcher3/apppairs/AppPairIcon;
    iget-object v4, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/apppairs/AppPairIcon$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/launcher3/apppairs/AppPairIcon$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v5}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    invoke-virtual {v3, v2}, Lcom/android/launcher3/apppairs/AppPairIcon;->setClipToPadding(Z)V

    .line 93
    invoke-virtual {v3, p3}, Lcom/android/launcher3/apppairs/AppPairIcon;->setTag(Ljava/lang/Object;)V

    .line 94
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/apppairs/AppPairIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object p3, v3, Lcom/android/launcher3/apppairs/AppPairIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 97
    iget-object v4, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppPair contents not 2, size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/launcher3/apppairs/AppPairIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AppPairIcon"

    invoke-static {v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v3

    .line 102
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/apppairs/AppPairIcon;->checkScreenSize()V

    .line 105
    sget v4, Lcom/android/launcher3/R$id;->app_pair_icon_graphic:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/apppairs/AppPairIcon;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    iput-object v4, v3, Lcom/android/launcher3/apppairs/AppPairIcon;->mIconGraphic:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 106
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->init(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/apppairs/AppPairIcon;)V

    .line 109
    sget v4, Lcom/android/launcher3/R$id;->app_pair_icon_name:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/apppairs/AppPairIcon;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    iput-object v4, v3, Lcom/android/launcher3/apppairs/AppPairIcon;->mAppPairName:Lcom/android/launcher3/BubbleTextView;

    .line 110
    invoke-virtual {v4, v2}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 111
    iget-object v2, v3, Lcom/android/launcher3/apppairs/AppPairIcon;->mAppPairName:Lcom/android/launcher3/BubbleTextView;

    .line 112
    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 114
    iget-object v4, v3, Lcom/android/launcher3/apppairs/AppPairIcon;->mAppPairName:Lcom/android/launcher3/BubbleTextView;

    iget-object v5, p3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v3, p3}, Lcom/android/launcher3/apppairs/AppPairIcon;->getAccessibilityTitle(Lcom/android/launcher3/model/data/FolderInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/apppairs/AppPairIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/apppairs/AppPairIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 120
    return-object v3
.end method

.method static synthetic lambda$checkScreenSize$1(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 1
    .param p0, "wii"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 202
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$inflateIcon$0(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)I
    .locals 1
    .param p0, "a"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 90
    iget v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    return v0
.end method


# virtual methods
.method public checkScreenSize()V
    .locals 3

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher3/apppairs/AppPairIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 200
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/apppairs/AppPairIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/apppairs/AppPairIcon$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/apppairs/AppPairIcon$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mIsLaunchableAtScreenSize:Z

    .line 203
    return-void
.end method

.method public getAccessibilityTitle(Lcom/android/launcher3/model/data/FolderInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "appPairInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 127
    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 128
    .local v0, "app1":Ljava/lang/CharSequence;
    iget-object v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 129
    .local v1, "app2":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/launcher3/apppairs/AppPairIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->app_pair_name_format:I

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getIconDrawableArea()Landroid/view/View;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mIconGraphic:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    return-object v0
.end method

.method public getInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object v0
.end method

.method public getReorderBounceScale()F
    .locals 1

    .line 170
    iget v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mScaleForReorderBounce:F

    return v0
.end method

.method public getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mIconGraphic:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getIconBounds(Landroid/graphics/Rect;)V

    .line 142
    return-void
.end method

.method public isLaunchableAtScreenSize()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mIsLaunchableAtScreenSize:Z

    return v0
.end method

.method public maybeRedrawForWorkspaceUpdate(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p1, "itemCheck":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/apppairs/AppPairIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/apppairs/AppPairIcon;->checkScreenSize()V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mIconGraphic:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v0}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->invalidate()V

    .line 215
    :cond_0
    return-void
.end method

.method public setReorderBounceScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 162
    iput p1, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mScaleForReorderBounce:F

    .line 163
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 164
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 165
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mAppPairName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIcon;->mAppPairName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 151
    :goto_0
    return-void
.end method
