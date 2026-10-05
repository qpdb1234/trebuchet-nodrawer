.class public Lcom/android/launcher3/folder/FolderIcon;
.super Landroid/widget/FrameLayout;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher3/model/data/FolderInfo$FolderListener;
.implements Lcom/android/launcher3/views/IconLabelDotView;
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Lcom/android/launcher3/Reorderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;
    }
.end annotation


# static fields
.field private static final DOT_SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/FolderIcon;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final DROP_IN_ANIMATION_DURATION:I = 0x190

.field private static final ON_OPEN_DELAY:I = 0x320

.field public static final SPRING_LOADING_ENABLED:Z = true


# instance fields
.field mActivity:Lcom/android/launcher3/views/ActivityContext;

.field mAnimating:Z

.field mBackground:Lcom/android/launcher3/folder/PreviewBackground;

.field private mBackgroundIsVisible:Z

.field private mCurrentPreviewItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        deepExport = true
    .end annotation
.end field

.field private mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        deepExport = true
    .end annotation
.end field

.field private mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

.field private mDotScale:F

.field private mDotScaleAnim:Landroid/animation/Animator;

.field mFolder:Lcom/android/launcher3/folder/Folder;

.field mFolderName:Lcom/android/launcher3/BubbleTextView;

.field private mForceHideDot:Z

.field public mInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field private mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

.field private mOpenAlarm:Lcom/android/launcher3/Alarm;

.field private mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

.field mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

.field mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

.field private mScaleForReorderBounce:F

.field private mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

.field private mTouchArea:Landroid/graphics/Rect;

.field private final mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;


# direct methods
.method public static synthetic $r8$lambda$4o2b9C3Mg0I2Psb5wBG7_5F-UT4(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->lambda$onDrop$0(ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SeLBHB2NRQh6EBvFCxoj02L9utg(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->lambda$onDrop$1(Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e65CJgXgVhZ5Dylf1xRLocxBQoU(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/FolderNameInfos;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->lambda$onDrop$2(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/FolderNameInfos;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDotScale(Lcom/android/launcher3/folder/FolderIcon;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDotScale(Lcom/android/launcher3/folder/FolderIcon;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDotScaleAnim(Lcom/android/launcher3/folder/FolderIcon;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScaleAnim:Landroid/animation/Animator;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 140
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "dotScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/FolderIcon$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/FolderIcon;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Lcom/android/launcher3/util/MultiTranslateDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/MultiTranslateDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    .line 114
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 120
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    .line 125
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/Alarm;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 128
    new-instance v0, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v0}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTouchArea:Landroid/graphics/Rect;

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mScaleForReorderBounce:F

    .line 298
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$2;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 161
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->init()V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    new-instance v0, Lcom/android/launcher3/util/MultiTranslateDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/MultiTranslateDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    .line 114
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 120
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    .line 125
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/Alarm;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 128
    new-instance v0, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v0}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTouchArea:Landroid/graphics/Rect;

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mScaleForReorderBounce:F

    .line 298
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$2;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 156
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->init()V

    .line 157
    return-void
.end method

.method private cancelDotScaleAnim()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScaleAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 540
    :cond_0
    return-void
.end method

.method private getLocalCenterForIndex(II[I)F
    .locals 5
    .param p1, "index"    # I
    .param p2, "curNumItems"    # I
    .param p3, "center"    # [I

    .line 559
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    .line 560
    const/4 v1, 0x4

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 559
    invoke-virtual {v0, v1, p2, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 562
    iget v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    .line 563
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    .line 565
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->getIntrinsicIconSize()F

    move-result v0

    .line 566
    .local v0, "intrinsicIconSize":F
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 567
    .local v1, "offsetX":F
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v4, v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v4, v0

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 569
    .local v2, "offsetY":F
    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p3, v3

    .line 570
    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p3, v3

    .line 571
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    return v3
.end method

.method public static inflateFolderAndIcon(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;
    .locals 2
    .param p0, "resId"    # I
    .param p2, "group"    # Landroid/view/ViewGroup;
    .param p3, "folderInfo"    # Lcom/android/launcher3/model/data/FolderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(ITT;",
            "Landroid/view/ViewGroup;",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ")",
            "Lcom/android/launcher3/folder/FolderIcon;"
        }
    .end annotation

    .line 173
    .local p1, "activityContext":Landroid/content/Context;, "TT;"
    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 175
    .local v0, "folder":Lcom/android/launcher3/folder/Folder;
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0, v1, p2, p3}, Lcom/android/launcher3/folder/FolderIcon;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 176
    .local v1, "icon":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    .line 177
    invoke-virtual {v0, p3}, Lcom/android/launcher3/folder/Folder;->bind(Lcom/android/launcher3/model/data/FolderInfo;)V

    .line 178
    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/FolderIcon;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    .line 179
    return-object v1
.end method

.method public static inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;
    .locals 10
    .param p0, "resId"    # I
    .param p1, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p2, "group"    # Landroid/view/ViewGroup;
    .param p3, "folderInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 188
    const/4 v0, 0x0

    .line 195
    .local v0, "error":Z
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 196
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    :goto_0
    nop

    .line 199
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    invoke-virtual {v2, p0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/FolderIcon;

    .line 201
    .local v4, "icon":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {v4, v3}, Lcom/android/launcher3/folder/FolderIcon;->setClipToPadding(Z)V

    .line 202
    sget v5, Lcom/android/launcher3/R$id;->folder_icon_name:I

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    iput-object v5, v4, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    .line 203
    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->shouldShowLabel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    iget-object v5, v4, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    iget-object v6, p3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_1
    iget-object v5, v4, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 207
    iget-object v5, v4, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 208
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v7, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 210
    invoke-virtual {v4, p3}, Lcom/android/launcher3/folder/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 211
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/folder/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iput-object p3, v4, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 213
    iput-object p1, v4, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 214
    iget-object v6, v1, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    iput-object v6, v4, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    .line 216
    iget-object v6, p3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/folder/FolderIcon;->getAccessiblityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 219
    new-instance v6, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v6}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    .line 220
    .local v6, "folderDotInfo":Lcom/android/launcher3/dot/FolderDotInfo;
    iget-object v7, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 221
    .local v8, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-interface {p1, v8}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    .line 222
    .end local v8    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {v4, v6}, Lcom/android/launcher3/folder/FolderIcon;->setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V

    .line 225
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/FolderIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 227
    new-instance v7, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/DeviceProfile;)V

    iput-object v7, v4, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 228
    invoke-virtual {v7, p3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 229
    invoke-direct {v4, v3}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    .line 231
    invoke-virtual {p3, v4}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    .line 233
    return-object v4
.end method

.method private init()V
    .locals 1

    .line 165
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 166
    new-instance v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    .line 167
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/PreviewItemManager;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    .line 168
    new-instance v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {v0}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    .line 169
    return-void
.end method

.method private isInHotseat()Z
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$onDrop$0(ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "finalIndex"    # I
    .param p2, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/folder/Folder;->showItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 417
    return-void
.end method

.method private synthetic lambda$onDrop$1(Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1
    .param p1, "nameInfos"    # Lcom/android/launcher3/folder/FolderNameInfos;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 429
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->setLabelSuggestion(Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 431
    return-void
.end method

.method private synthetic lambda$onDrop$2(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/FolderNameInfos;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "nameInfos"    # Lcom/android/launcher3/folder/FolderNameInfos;

    .line 426
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->folderNameProvider:Lcom/android/launcher3/folder/FolderNameProvider;

    .line 427
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 426
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    .line 428
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/DropTarget$DragObject;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    return-void
.end method

.method private onDrop(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZ)V
    .locals 28
    .param p1, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "finalRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRelativeToDragLayer"    # F
    .param p5, "index"    # I
    .param p6, "itemReturnedOnFailedDrop"    # Z

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    .line 338
    iput v4, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    .line 339
    iget-object v4, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 343
    .local v4, "animateView":Lcom/android/launcher3/dragndrop/DragView;
    if-eqz v4, :cond_9

    iget-object v5, v0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v6, v5, Lcom/android/launcher3/Launcher;

    if-eqz v6, :cond_9

    .line 344
    move-object/from16 v16, v5

    check-cast v16, Lcom/android/launcher3/Launcher;

    .line 345
    .local v16, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v15

    .line 346
    .local v15, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    move-object/from16 v5, p3

    .line 347
    .local v5, "to":Landroid/graphics/Rect;
    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_0

    .line 348
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v7

    .line 349
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v7

    .line 351
    .local v7, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual {v7}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getScaleX()F

    move-result v8

    .line 353
    .local v8, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getScaleY()F

    move-result v9

    .line 354
    .local v9, "scaleY":F
    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/FolderIcon;->setScaleX(F)V

    .line 355
    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/FolderIcon;->setScaleY(F)V

    .line 356
    invoke-virtual {v15, v0, v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v10

    .line 358
    .end local p4    # "scaleRelativeToDragLayer":F
    .local v10, "scaleRelativeToDragLayer":F
    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/FolderIcon;->setScaleX(F)V

    .line 359
    invoke-virtual {v0, v9}, Lcom/android/launcher3/folder/FolderIcon;->setScaleY(F)V

    .line 360
    invoke-virtual {v7}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    move-object v14, v5

    move/from16 v17, v10

    goto :goto_0

    .line 347
    .end local v7    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    .end local v8    # "scaleX":F
    .end local v9    # "scaleY":F
    .end local v10    # "scaleRelativeToDragLayer":F
    .restart local p4    # "scaleRelativeToDragLayer":F
    :cond_0
    move/from16 v17, p4

    move-object v14, v5

    .line 363
    .end local v5    # "to":Landroid/graphics/Rect;
    .end local p4    # "scaleRelativeToDragLayer":F
    .local v14, "to":Landroid/graphics/Rect;
    .local v17, "scaleRelativeToDragLayer":F
    :goto_0
    add-int/lit8 v5, v3, 0x1

    const/4 v7, 0x4

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 364
    .local v13, "numItemsInPreview":I
    const/4 v5, 0x0

    .line 365
    .local v5, "itemAdded":Z
    const/4 v8, 0x0

    const/4 v12, 0x1

    if-nez p6, :cond_1

    if-lt v3, v7, :cond_4

    .line 366
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 367
    .local v9, "oldPreviewItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    iget-object v10, v0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v10, v1, v3, v8}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    .line 368
    iget-object v10, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 369
    iget-object v10, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    iget-object v10, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 372
    iget-object v10, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 373
    .local v10, "newIndex":I
    if-ltz v10, :cond_2

    .line 376
    move v3, v10

    .line 379
    .end local p5    # "index":I
    .local v3, "index":I
    :cond_2
    iget-object v11, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v11, v3, v12}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    .line 380
    iget-object v11, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-virtual {v11, v9, v6, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->onDrop(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 381
    const/4 v5, 0x1

    .line 382
    .end local v10    # "newIndex":I
    move/from16 v19, v5

    goto :goto_1

    .line 383
    .end local v3    # "index":I
    .restart local p5    # "index":I
    :cond_3
    invoke-virtual {v0, v1, v8}, Lcom/android/launcher3/folder/FolderIcon;->removeItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    .line 387
    .end local v9    # "oldPreviewItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :cond_4
    move/from16 v19, v5

    .end local v5    # "itemAdded":Z
    .end local p5    # "index":I
    .restart local v3    # "index":I
    .local v19, "itemAdded":Z
    :goto_1
    if-nez v19, :cond_5

    .line 388
    iget-object v5, v0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v5, v1, v3, v12}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    .line 391
    :cond_5
    const/4 v5, 0x2

    new-array v11, v5, [I

    .line 392
    .local v11, "center":[I
    invoke-direct {v0, v3, v13, v11}, Lcom/android/launcher3/folder/FolderIcon;->getLocalCenterForIndex(II[I)F

    move-result v20

    .line 393
    .local v20, "scale":F
    aget v6, v11, v8

    int-to-float v6, v6

    mul-float v6, v6, v17

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aput v6, v11, v8

    .line 394
    aget v6, v11, v12

    int-to-float v6, v6

    mul-float v6, v6, v17

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aput v6, v11, v12

    .line 396
    aget v6, v11, v8

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v8

    div-int/2addr v8, v5

    sub-int/2addr v6, v8

    aget v8, v11, v12

    .line 397
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v9

    div-int/2addr v9, v5

    sub-int/2addr v8, v9

    .line 396
    invoke-virtual {v14, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 399
    if-ge v3, v7, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    move v8, v5

    .line 401
    .local v8, "finalAlpha":F
    :goto_2
    mul-float v5, v20, v17

    .line 404
    .local v5, "finalScale":F
    iget-object v6, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v6, v6, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v6, :cond_7

    .line 405
    iget-object v6, v0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v6}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 406
    .local v6, "grid":Lcom/android/launcher3/DeviceProfile;
    iget v7, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v7, v9

    iget v9, v6, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    .line 407
    .local v7, "containerScale":F
    mul-float/2addr v5, v7

    move/from16 v18, v5

    goto :goto_3

    .line 404
    .end local v6    # "grid":Lcom/android/launcher3/DeviceProfile;
    .end local v7    # "containerScale":F
    :cond_7
    move/from16 v18, v5

    .line 410
    .end local v5    # "finalScale":F
    .local v18, "finalScale":F
    :goto_3
    move v10, v3

    .line 411
    .local v10, "finalIndex":I
    const/16 v21, 0x190

    sget-object v22, Lcom/android/app/animation/Interpolators;->DECELERATE_2:Landroid/view/animation/Interpolator;

    new-instance v9, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0, v10, v1}, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v5, v15

    move-object v6, v4

    move-object v7, v14

    move-object/from16 v25, v9

    move/from16 v9, v18

    move/from16 v26, v10

    .end local v10    # "finalIndex":I
    .local v26, "finalIndex":I
    move/from16 v10, v18

    move-object/from16 v27, v11

    .end local v11    # "center":[I
    .local v27, "center":[I
    move/from16 v11, v21

    move-object/from16 v12, v22

    move/from16 v21, v13

    .end local v13    # "numItemsInPreview":I
    .local v21, "numItemsInPreview":I
    move-object/from16 v13, v25

    move-object/from16 v22, v14

    .end local v14    # "to":Landroid/graphics/Rect;
    .local v22, "to":Landroid/graphics/Rect;
    move/from16 v14, v23

    move-object/from16 v23, v15

    .end local v15    # "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    .local v23, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    move-object/from16 v15, v24

    invoke-virtual/range {v5 .. v15}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 420
    iget-object v5, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/folder/Folder;->hideItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 422
    if-nez v19, :cond_8

    iget-object v5, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    .line 424
    :cond_8
    new-instance v5, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v5}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    .line 425
    .local v5, "nameInfos":Lcom/android/launcher3/folder/FolderNameInfos;
    sget-object v6, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v2, v5}, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/FolderNameInfos;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 433
    .end local v5    # "nameInfos":Lcom/android/launcher3/folder/FolderNameInfos;
    .end local v8    # "finalAlpha":F
    .end local v16    # "launcher":Lcom/android/launcher3/Launcher;
    .end local v18    # "finalScale":F
    .end local v19    # "itemAdded":Z
    .end local v20    # "scale":F
    .end local v21    # "numItemsInPreview":I
    .end local v22    # "to":Landroid/graphics/Rect;
    .end local v23    # "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    .end local v26    # "finalIndex":I
    .end local v27    # "center":[I
    goto :goto_4

    .line 434
    .end local v3    # "index":I
    .end local v17    # "scaleRelativeToDragLayer":F
    .restart local p4    # "scaleRelativeToDragLayer":F
    .restart local p5    # "index":I
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move/from16 v17, p4

    .line 436
    .end local p4    # "scaleRelativeToDragLayer":F
    .end local p5    # "index":I
    .restart local v3    # "index":I
    .restart local v17    # "scaleRelativeToDragLayer":F
    :goto_4
    return-void
.end method

.method private setFolder(Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;

    .line 261
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 262
    return-void
.end method

.method private updateDotScale(ZZ)V
    .locals 3
    .param p1, "wasDotted"    # Z
    .param p2, "isDotted"    # Z

    .line 525
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 527
    .local v0, "newDotScale":F
    :goto_0
    xor-int v1, p1, p2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    goto :goto_1

    .line 530
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->cancelDotScaleAnim()V

    .line 531
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    .line 532
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 534
    :goto_1
    return-void
.end method

.method private updatePreviewItems(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 687
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    .line 688
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 689
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 690
    return-void
.end method

.method private willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 265
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 266
    .local v0, "itemType":I
    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 268
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 266
    :goto_0
    return v1
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p1, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    .line 277
    return-void
.end method

.method public animateBgShadowAndStroke()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->fadeInBackgroundShadow()V

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateBackgroundStroke()V

    .line 239
    return-void
.end method

.method public varargs animateDotScale([F)V
    .locals 2
    .param p1, "dotScales"    # [F

    .line 543
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->cancelDotScaleAnim()V

    .line 544
    sget-object v0, Lcom/android/launcher3/folder/FolderIcon;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScaleAnim:Landroid/animation/Animator;

    .line 545
    new-instance v1, Lcom/android/launcher3/folder/FolderIcon$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/FolderIcon$3;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 551
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScaleAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 552
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 754
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 755
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 756
    return-void
.end method

.method public clearLeaveBehindIfExists()V
    .locals 1

    .line 768
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;

    invoke-interface {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;->clearFolderLeaveBehind(Lcom/android/launcher3/folder/FolderIcon;)V

    .line 771
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 599
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 601
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    .line 605
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    if-nez v0, :cond_2

    return-void

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    .line 613
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 614
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 617
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->drawDot(Landroid/graphics/Canvas;)V

    .line 618
    return-void
.end method

.method public drawDot(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 621
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mForceHideDot:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    .line 624
    .local v0, "iconBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 625
    .local v2, "iconSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 626
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 627
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 628
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 630
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v3, v3, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 631
    .local v3, "iconScale":F
    invoke-static {v0, v3}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 634
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/PreviewBackground;->getAcceptScaleProgress()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v4, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    .line 635
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/PreviewBackground;->getDotColor()I

    move-result v4

    iput v4, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    .line 636
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v1, p1, v4}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    .line 638
    .end local v0    # "iconBounds":Landroid/graphics/Rect;
    .end local v2    # "iconSize":I
    .end local v3    # "iconScale":F
    :cond_2
    return-void
.end method

.method public drawLeaveBehindIfExists()V
    .locals 1

    .line 774
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;

    invoke-interface {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;->drawFolderLeaveBehindForIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    .line 777
    :cond_0
    return-void
.end method

.method public getAccessiblityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 814
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 815
    .local v0, "size":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->folder_name_format_exact:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->folder_name_format_overflow:I

    .line 819
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 818
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBackgroundStrokeWidth()F
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getFolder()Lcom/android/launcher3/folder/Folder;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-object v0
.end method

.method public getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    return-object v0
.end method

.method public getFolderName()Lcom/android/launcher3/BubbleTextView;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    return-object v0
.end method

.method public getIconVisible()Z
    .locals 1

    .line 586
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    return v0
.end method

.method public getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    return-object v0
.end method

.method public getPreviewBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    .line 249
    const/high16 v0, 0x3f900000    # 1.125f

    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 250
    return-void
.end method

.method public getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    return-object v0
.end method

.method public getPreviewItemsOnPage(I)Ljava/util/List;
    .locals 2
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getReorderBounceScale()F
    .locals 1

    .line 797
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mScaleForReorderBounce:F

    return v0
.end method

.method public getTextVisible()Z
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 802
    const/4 v0, 0x0

    return v0
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public hasDot()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "rank"    # I

    .line 701
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    .line 702
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    .line 703
    .local v0, "wasDotted":Z
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    .line 704
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v1

    .line 705
    .local v1, "isDotted":Z
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->updateDotScale(ZZ)V

    .line 706
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/FolderIcon;->getAccessiblityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 708
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 709
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 5
    .param p1, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 286
    .local v0, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 288
    .local v1, "cl":Lcom/android/launcher3/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    .line 289
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 290
    instance-of v2, p1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v2, :cond_2

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 296
    :cond_2
    return-void

    .line 284
    .end local v0    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .end local v1    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_3
    :goto_0
    return-void
.end method

.method public onDragExit()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 333
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 8
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "itemReturnedOnFailedDrop"    # Z

    .line 481
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    .local v0, "item":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto :goto_0

    .line 484
    .end local v0    # "item":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;

    if-eqz v0, :cond_1

    .line 486
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .restart local v0    # "item":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto :goto_0

    .line 488
    .end local v0    # "item":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 490
    .restart local v0    # "item":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->notifyDrop()V

    .line 491
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 492
    if-eqz p2, :cond_2

    iget v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    move v6, v1

    .line 491
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZ)V

    .line 495
    return-void
.end method

.method public onFolderClose(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .line 780
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->onFolderClose(I)V

    .line 781
    return-void
.end method

.method public onHoverChanged(Z)V
    .locals 1
    .param p1, "hovered"    # Z

    .line 825
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverChanged(Z)V

    .line 826
    invoke-static {}, Lcom/android/launcher3/Flags;->enableCursorHoverStates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->setHovered(Z)V

    .line 829
    :cond_0
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 681
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    .line 682
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 683
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 684
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 642
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->iconCenterVertically:Z

    .line 643
    .local v0, "shouldCenterIcon":Z
    if-eqz v0, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 645
    .local v1, "iconSize":I
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 646
    .local v2, "fm":Landroid/graphics/Paint$FontMetrics;
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawablePadding()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    .line 647
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    .line 648
    .local v3, "cellHeightPx":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingLeft()I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    .line 649
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingBottom()I

    move-result v7

    .line 648
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/launcher3/folder/FolderIcon;->setPadding(IIII)V

    .line 651
    .end local v1    # "iconSize":I
    .end local v2    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v3    # "cellHeightPx":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 652
    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 713
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    .line 714
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    .line 715
    .local v0, "wasDotted":Z
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/dot/FolderDotInfo;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 716
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v1

    .line 717
    .local v1, "isDotted":Z
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->updateDotScale(ZZ)V

    .line 718
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/FolderIcon;->getAccessiblityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 719
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 720
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 721
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 724
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->getAccessiblityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 726
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 731
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->shouldIgnoreTouchDown(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    const/4 v0, 0x0

    return v0

    .line 737
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 738
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 740
    const/4 v0, 0x1

    return v0
.end method

.method public performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V
    .locals 9
    .param p1, "destInfo"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "destView"    # Landroid/view/View;
    .param p3, "srcInfo"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p4, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p5, "dstRect"    # Landroid/graphics/Rect;
    .param p6, "scaleRelativeToDragLayer"    # F

    .line 311
    iget-object v0, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 312
    .local v0, "srcView":Lcom/android/launcher3/dragndrop/DragView;
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 316
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    .line 320
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZ)V

    .line 322
    return-void
.end method

.method public performDestroyAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .line 326
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    .line 328
    return-void
.end method

.method public prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "destView"    # Landroid/view/View;

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;
    .locals 6

    :try_start_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->-$$Nest$fputmCurrentPageItemsTransX(Lcom/android/launcher3/folder/PreviewItemManager;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    const/4 v5, 0x4

    :goto_0
    if-ge v3, v5, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "animate"    # Z

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    .line 281
    return-void
.end method

.method public removeListeners()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/data/FolderInfo;->removeListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    .line 760
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/FolderInfo;->removeListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    .line 761
    return-void
.end method

.method public setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V
    .locals 2
    .param p1, "dotInfo"    # Lcom/android/launcher3/dot/FolderDotInfo;

    .line 498
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->updateDotScale(ZZ)V

    .line 499
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    .line 500
    return-void
.end method

.method public setFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 0
    .param p1, "bg"    # Lcom/android/launcher3/folder/PreviewBackground;

    .line 575
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 576
    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/PreviewBackground;->setInvalidateDelegate(Landroid/view/View;)V

    .line 577
    return-void
.end method

.method public setForceHideDot(Z)V
    .locals 1
    .param p1, "forceHideDot"    # Z

    .line 508
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mForceHideDot:Z

    if-ne v0, p1, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mForceHideDot:Z

    .line 513
    if-eqz p1, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    goto :goto_0

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->hasDot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    .line 518
    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setIconVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 581
    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 583
    return-void
.end method

.method public setLabelSuggestion(Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 4
    .param p1, "nameInfos"    # Lcom/android/launcher3/folder/FolderNameInfos;
    .param p2, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 442
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->UNLABELED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    return-void

    .line 445
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->hasSuggestions()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 452
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->hasPrimary()Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 454
    invoke-interface {v0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 455
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_PRIMARY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 456
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 457
    return-void

    .line 459
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 460
    .local v0, "newTitle":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v1

    .line 462
    .local v1, "fromState":Lcom/android/launcher3/logger/LauncherAtom$FromState;
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/model/data/FolderInfo;->setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V

    .line 463
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/FolderIcon;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 468
    invoke-interface {v2, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 469
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 470
    invoke-interface {v2, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withFromState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 471
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withToState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 474
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withEditText(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 475
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 476
    return-void

    .line 446
    .end local v0    # "newTitle":Ljava/lang/CharSequence;
    .end local v1    # "fromState":Lcom/android/launcher3/logger/LauncherAtom$FromState;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 447
    invoke-interface {v0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 448
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 449
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 450
    return-void
.end method

.method public setReorderBounceScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 790
    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mScaleForReorderBounce:F

    .line 791
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 792
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 793
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 656
    if-eqz p1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 661
    :goto_0
    return-void
.end method

.method protected shouldIgnoreTouchDown(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 747
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 748
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 747
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 749
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTouchArea:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updatePreviewItems(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 696
    .local p1, "itemCheck":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Ljava/util/function/Predicate;)V

    .line 697
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 676
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
