.class public Lcom/android/launcher3/folder/Folder;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher3/views/ClipPathView;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/model/data/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;,
        Lcom/android/launcher3/folder/Folder$OnScrollHintListener;,
        Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;,
        Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;,
        Lcom/android/launcher3/folder/Folder$FolderState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FOLDER_COLOR_ANIMATION_DURATION:I = 0xc8

.field private static final FOLDER_LABEL_DELIMITER:Ljava/lang/CharSequence;

.field private static final FOLDER_NAME_ANIMATION_DURATION:I = 0x279

.field private static final ICON_OVERSCROLL_WIDTH_FACTOR:F = 0.45f

.field public static final ITEM_POS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_CONTENT_DIMEN:I = 0x5

.field private static final MIN_FOLDERS_FOR_HARDWARE_OPTIMIZATION:I = 0xa

.field private static final ON_EXIT_CLOSE_DELAY:I = 0x190

.field private static final REORDER_DELAY:I = 0xfa

.field private static final RESCROLL_EXTRA_DELAY:I = 0x96

.field public static final SCROLL_HINT_DURATION:I = 0x1f4

.field public static final SCROLL_LEFT:I = 0x0

.field public static final SCROLL_NONE:I = -0x1

.field public static final SCROLL_RIGHT:I = 0x1

.field public static final STATE_ANIMATING:I = 0x1

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_OPEN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field protected final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mClipPath:Landroid/graphics/Path;

.field mContent:Lcom/android/launcher3/folder/FolderPagedView;

.field private mCurrentAnimator:Landroid/animation/AnimatorSet;

.field private mCurrentDragView:Landroid/view/View;

.field mCurrentScrollDir:I

.field private mDeleteFolderOnDropCompleted:Z

.field private mDestroyed:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private mDragInProgress:Z

.field mEmptyCellRank:I

.field mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field public mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

.field protected mFooter:Landroid/view/View;

.field private mFooterHeight:I

.field private mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field private mFromTitle:Ljava/lang/CharSequence;

.field public mInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field private mIsAnimatingClosed:Z

.field private mIsEditingName:Z

.field private mIsExternalDrag:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field final mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field private mKeyboardInsetAnimationCallback:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

.field protected final mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

.field private final mOnExitAlarm:Lcom/android/launcher3/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private final mOnFolderStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

.field private mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

.field mPrevTargetRank:I

.field private mPriorityOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

.field private mRearrangeOnClose:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private mScrollAreaOffset:I

.field mScrollHintDir:I

.field final mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

.field private mState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "STATE_CLOSED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "STATE_ANIMATING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "STATE_OPEN"
            .end subannotation
        }
    .end annotation
.end field

.field private mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mSuppressFolderDeletion:Z

.field mTargetRank:I


# direct methods
.method public static synthetic $r8$lambda$7h7UCwt0omQ5tv-XZAQRgoe6uRo(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BdwMYBgZQ5OTXfjgzjKYyAqDuGI(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->lambda$bind$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$HSwc2WriHOa0sK_KXTmoKn82CDY(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->lambda$updateItemLocationsInDatabaseBatch$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$K4TMIBIx640OBBVQT1cJFRyQOfc(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->lambda$startEditingFolderName$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ni8HafyRQzM7V8RHc74KbWc1nYQ(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P99TisEsIFGrA9WGDOXq7x7U6f0(Lcom/android/launcher3/folder/Folder;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->lambda$showLabelSuggestions$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XRyVWTcgW6GzrNBEDpAgk2lkFF8(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->lambda$addAnimationStartListeners$4(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cy9fHxRZnhDzeQ69HNFsuy8iHDM(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->lambda$getIconsInReadingOrder$9(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yJ3SHxQYa26IoVX5ZxK453cCCJU(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyboardInsetAnimationCallback(Lcom/android/launcher3/folder/Folder;)Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mKeyboardInsetAnimationCallback:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPageIndicator(Lcom/android/launcher3/folder/Folder;)Lcom/android/launcher3/pageindicators/PageIndicatorDots;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentAnimator(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimatingClosed(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseComplete(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetState(Lcom/android/launcher3/folder/Folder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->setState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 130
    const-string v0, "~"

    sput-object v0, Lcom/android/launcher3/folder/Folder;->FOLDER_LABEL_DELIMITER:Ljava/lang/CharSequence;

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    .line 1569
    new-instance v0, Lcom/android/launcher3/folder/Folder$10;

    invoke-direct {v0}, Lcom/android/launcher3/folder/Folder$10;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/Alarm;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 170
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/Alarm;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    .line 171
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/Alarm;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    .line 172
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/Alarm;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    .line 207
    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mOnFolderStateChangedListeners:Ljava/util/List;

    .line 217
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    .line 219
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 222
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 223
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 224
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    .line 234
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 236
    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    .line 908
    new-instance v1, Lcom/android/launcher3/folder/Folder$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$7;-><init>(Lcom/android/launcher3/folder/Folder;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 986
    new-instance v1, Lcom/android/launcher3/folder/Folder$8;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$8;-><init>(Lcom/android/launcher3/folder/Folder;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 256
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 257
    invoke-static {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->from(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/LauncherDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    .line 259
    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setFocusableInTouchMode(Z)V

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/Folder;

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->announceAccessibilityChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/Folder;

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->announceAccessibilityChanges()V

    return-void
.end method

.method private addAnimationStartListeners(Landroid/animation/AnimatorSet;)V
    .locals 2
    .param p1, "a"    # Landroid/animation/AnimatorSet;

    .line 564
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    new-instance v1, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/LauncherDelegate;->forEachVisibleWorkspacePage(Ljava/util/function/Consumer;)V

    .line 567
    new-instance v0, Lcom/android/launcher3/folder/Folder$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/folder/Folder$2;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 579
    return-void
.end method

.method private addAnimatorListenerForPage(Landroid/animation/AnimatorSet;Lcom/android/launcher3/CellLayout;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/AnimatorSet;
    .param p2, "currentCellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 582
    invoke-direct {p0, p2}, Lcom/android/launcher3/folder/Folder;->shouldUseHardwareLayerForAnimation(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    .line 583
    .local v0, "useHardware":Z
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->isHardwareLayerEnabled()Z

    move-result v1

    .line 585
    .local v1, "wasHardwareAccelerated":Z
    new-instance v2, Lcom/android/launcher3/folder/Folder$3;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/android/launcher3/folder/Folder$3;-><init>(Lcom/android/launcher3/folder/Folder;ZLcom/android/launcher3/CellLayout;Z)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 600
    return-void
.end method

.method private animateClosed()V
    .locals 4

    .line 801
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    if-eqz v0, :cond_0

    .line 802
    return-void

    .line 805
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 806
    .local v0, "size":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t animate folder closed because there\'s "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " icons"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Launcher.Folder"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    .line 809
    new-instance v1, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda14;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/Folder;->post(Ljava/lang/Runnable;)Z

    .line 810
    return-void

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    .line 814
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getDestinationPage()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPageImmediately(I)Z

    .line 816
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->cancelRunningAnimations()V

    .line 817
    new-instance v1, Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 818
    .local v1, "a":Landroid/animation/AnimatorSet;
    new-instance v2, Lcom/android/launcher3/folder/Folder$6;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/Folder$6;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 835
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->addAnimationStartListeners(Landroid/animation/AnimatorSet;)V

    .line 836
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 837
    return-void
.end method

.method private animateOpen(Ljava/util/List;I)V
    .locals 10
    .param p2, "pageNo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;I)V"
        }
    .end annotation

    .line 648
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto/16 :goto_2

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 654
    .local v0, "openFolder":Lcom/android/launcher3/folder/Folder;
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 656
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 659
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/FolderPagedView;->bindItems(Ljava/util/List;)V

    .line 660
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->centerAboutIcon()V

    .line 661
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 662
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    .line 664
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    .line 666
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    .line 669
    .local v2, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 670
    invoke-virtual {v2, p0}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 671
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 679
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    .line 680
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/folder/FolderPagedView;->setCurrentPage(I)V

    .line 685
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 687
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->cancelRunningAnimations()V

    .line 688
    new-instance v3, Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/folder/FolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    .line 689
    .local v3, "fam":Lcom/android/launcher3/folder/FolderAnimationManager;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 690
    .local v4, "anim":Landroid/animation/AnimatorSet;
    new-instance v5, Lcom/android/launcher3/folder/Folder$4;

    invoke-direct {v5, p0}, Lcom/android/launcher3/folder/Folder$4;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 709
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v5

    if-le v5, v1, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/launcher3/model/data/FolderInfo;->hasOption(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 710
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    .line 711
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 713
    .local v5, "footerWidth":I
    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderNameEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 714
    .local v6, "textWidth":F
    int-to-float v7, v5

    sub-float/2addr v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 715
    .local v7, "translation":F
    iget-object v8, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v9, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v9, v9, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v9, :cond_3

    neg-float v9, v7

    goto :goto_0

    :cond_3
    move v9, v7

    :goto_0
    invoke-virtual {v8, v9}, Lcom/android/launcher3/folder/FolderNameEditText;->setTranslationX(F)V

    .line 716
    iget-object v8, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v8}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->prepareEntryAnimation()V

    .line 720
    iget-boolean v8, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    xor-int/2addr v1, v8

    .line 721
    .local v1, "updateAnimationFlag":Z
    new-instance v8, Lcom/android/launcher3/folder/Folder$5;

    invoke-direct {v8, p0, v1}, Lcom/android/launcher3/folder/Folder$5;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 738
    .end local v1    # "updateAnimationFlag":Z
    .end local v5    # "footerWidth":I
    .end local v6    # "textWidth":F
    .end local v7    # "translation":F
    goto :goto_1

    .line 739
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/launcher3/folder/FolderNameEditText;->setTranslationX(F)V

    .line 742
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->stopAllAnimations()V

    .line 747
    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/Folder;->addAnimationStartListeners(Landroid/animation/AnimatorSet;)V

    .line 750
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    .line 751
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 754
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 755
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    .line 757
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 758
    return-void

    .line 649
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .end local v2    # "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    .end local v3    # "fam":Lcom/android/launcher3/folder/FolderAnimationManager;
    .end local v4    # "anim":Landroid/animation/AnimatorSet;
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t animate folder open because items is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Folder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void
.end method

.method private cancelRunningAnimations()V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 798
    :cond_0
    return-void
.end method

.method private centerAboutIcon()V
    .locals 15

    .line 1130
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 1131
    .local v0, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    .line 1132
    .local v1, "parent":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getFolderWidth()I

    move-result v2

    .line 1133
    .local v2, "width":I
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight()I

    move-result v3

    .line 1135
    .local v3, "height":I
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    sget-object v5, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 1136
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 1137
    .local v4, "centerX":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    .line 1138
    .local v6, "centerY":I
    div-int/lit8 v7, v2, 0x2

    sub-int v7, v4, v7

    .line 1139
    .local v7, "centeredLeft":I
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v6, v8

    .line 1141
    .local v8, "centeredTop":I
    iget-object v9, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v9}, Lcom/android/launcher3/views/ActivityContext;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1142
    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    invoke-static {v7, v9, v10}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v9

    .line 1143
    .local v9, "left":I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v3

    invoke-static {v8, v10, v11}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v10

    .line 1144
    .local v10, "top":I
    filled-new-array {v9, v10}, [I

    move-result-object v11

    .line 1145
    .local v11, "inOutPosition":[I
    iget-object v12, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v12, v11, v5, v2, v3}, Lcom/android/launcher3/views/ActivityContext;->updateOpenFolderPosition([ILandroid/graphics/Rect;II)V

    .line 1146
    const/4 v5, 0x0

    aget v9, v11, v5

    .line 1147
    const/4 v12, 0x1

    aget v10, v11, v12

    .line 1149
    div-int/lit8 v12, v2, 0x2

    sub-int v13, v7, v9

    add-int/2addr v12, v13

    .line 1150
    .local v12, "folderPivotX":I
    div-int/lit8 v13, v3, 0x2

    sub-int v14, v8, v10

    add-int/2addr v13, v14

    .line 1151
    .local v13, "folderPivotY":I
    int-to-float v14, v12

    invoke-virtual {p0, v14}, Lcom/android/launcher3/folder/Folder;->setPivotX(F)V

    .line 1152
    int-to-float v14, v13

    invoke-virtual {p0, v14}, Lcom/android/launcher3/folder/Folder;->setPivotY(F)V

    .line 1154
    iput v2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 1155
    iput v3, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 1156
    iput v9, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 1157
    iput v10, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 1159
    iget-object v14, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v14, v5, v5, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1160
    return-void
.end method

.method private clearDragInfo()V
    .locals 1

    .line 1005
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 1006
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    .line 1007
    return-void
.end method

.method private closeComplete(Z)V
    .locals 5
    .param p1, "wasAnimated"    # Z

    .line 853
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer;

    .line 854
    .local v0, "parent":Lcom/android/launcher3/views/BaseDragLayer;
    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 857
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 858
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->clearFocus()V

    .line 859
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 860
    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderIcon;->setVisibility(I)V

    .line 861
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    .line 862
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 863
    if-eqz p1, :cond_2

    .line 864
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->animateBgShadowAndStroke()V

    .line 865
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/FolderIcon;->onFolderClose(I)V

    .line 866
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->hasDot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 867
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    .line 869
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->requestFocus()Z

    .line 873
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    if-eqz v1, :cond_3

    .line 874
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    .line 875
    iput-boolean v3, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    .line 877
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_5

    .line 878
    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez v1, :cond_4

    iget-boolean v4, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    if-nez v4, :cond_4

    .line 879
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    goto :goto_0

    .line 880
    :cond_4
    if-eqz v1, :cond_6

    .line 881
    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0

    .line 883
    :cond_5
    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez v1, :cond_6

    .line 884
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->unbindItems()V

    .line 886
    :cond_6
    :goto_0
    iput-boolean v3, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    .line 887
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->clearDragInfo()V

    .line 888
    invoke-direct {p0, v3}, Lcom/android/launcher3/folder/Folder;->setState(I)V

    .line 889
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderPagedView;->setCurrentPage(I)V

    .line 890
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher3/folder/Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)",
            "Lcom/android/launcher3/folder/Folder;"
        }
    .end annotation

    .line 559
    .local p0, "activityContext":Landroid/content/Context;, "TT;"
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->user_folder_icon_normalized:I

    .line 560
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    .line 559
    return-object v0
.end method

.method private getContentAreaWidth()I
    .locals 2

    .line 1172
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getFolderHeight()I
    .locals 1

    .line 1180
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight(I)I

    move-result v0

    return v0
.end method

.method private getFolderHeight(I)I
    .locals 2
    .param p1, "contentAreaHeight"    # I

    .line 1184
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getFolderWidth()I
    .locals 2

    .line 1176
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getHeightFromBottom()I
    .locals 4

    .line 1670
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 1671
    .local v0, "layoutParams":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget v2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    add-int/2addr v1, v2

    .line 1672
    .local v1, "folderBottomPx":I
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 1674
    .local v2, "windowBottomPx":I
    sub-int v3, v2, v1

    return v3
.end method

.method public static getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;
    .locals 1
    .param p0, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;

    .line 1603
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/folder/Folder;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    return-object v0
.end method

.method private getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I
    .locals 4
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "recycle"    # [F

    .line 920
    invoke-virtual {p1, p2}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p2

    .line 921
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v1, 0x0

    aget v1, p2, v1

    float-to-int v1, v1

    .line 922
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 921
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/FolderPagedView;->findNearestArea(II)I

    move-result v0

    return v0
.end method

.method private getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1424
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$addAnimationStartListeners$4(Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 1
    .param p1, "a"    # Landroid/animation/AnimatorSet;
    .param p2, "visiblePage"    # Landroid/view/View;

    .line 565
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->addAnimatorListenerForPage(Landroid/animation/AnimatorSet;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method static synthetic lambda$animateClosed$6(Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/launcher3/folder/Folder;

    .line 809
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->announceAccessibilityChanges()V

    return-void
.end method

.method private synthetic lambda$bind$1()V
    .locals 2

    .line 515
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    .line 518
    :cond_0
    return-void
.end method

.method private synthetic lambda$getIconsInReadingOrder$9(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "i"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 1445
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getViewForInfo$8(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "view"    # Landroid/view/View;

    .line 1424
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$handleClose$5(Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/launcher3/folder/Folder;

    .line 785
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->announceAccessibilityChanges()V

    return-void
.end method

.method static synthetic lambda$showLabelSuggestions$2(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 544
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$showLabelSuggestions$3(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$startEditingFolderName$0()V
    .locals 2

    .line 374
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->showLabelSuggestions()V

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    .line 377
    return-void
.end method

.method private synthetic lambda$updateItemLocationsInDatabaseBatch$7()V
    .locals 4

    .line 1110
    new-instance v0, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    .line 1111
    .local v0, "nameInfos":Lcom/android/launcher3/folder/FolderNameInfos;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderNameProvider;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/folder/FolderNameProvider;

    move-result-object v1

    .line 1112
    .local v1, "fnp":Lcom/android/launcher3/folder/FolderNameProvider;
    nop

    .line 1113
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 1112
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    .line 1114
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object v0, v2, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    .line 1115
    return-void
.end method

.method private setState(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 1687
    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 1688
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mPriorityOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    if-eqz v0, :cond_0

    .line 1689
    invoke-interface {v0, p1}, Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;->onFolderStateChanged(I)V

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnFolderStateChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    .line 1692
    .local v1, "listener":Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;
    if-eqz v1, :cond_1

    .line 1693
    iget v2, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    invoke-interface {v1, v2}, Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;->onFolderStateChanged(I)V

    .line 1695
    .end local v1    # "listener":Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;
    :cond_1
    goto :goto_0

    .line 1696
    :cond_2
    return-void
.end method

.method private shouldUseHardwareLayerForAnimation(Lcom/android/launcher3/CellLayout;)Z
    .locals 7
    .param p1, "currentCellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 603
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 605
    :cond_0
    const/4 v0, 0x0

    .line 606
    .local v0, "folderCount":I
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 607
    .local v2, "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_3

    .line 608
    invoke-virtual {v2, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 609
    .local v5, "child":Landroid/view/View;
    instance-of v6, v5, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_1

    return v4

    .line 610
    :cond_1
    instance-of v4, v5, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 607
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 612
    .end local v3    # "i":I
    :cond_3
    const/16 v3, 0xa

    if-lt v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    return v1
.end method

.method private showLabelSuggestions()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-nez v0, :cond_0

    .line 528
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasSuggestions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->selectAll()V

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->showKeyboard()Z

    .line 540
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    .line 541
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda6;-><init>()V

    .line 542
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda7;-><init>()V

    .line 543
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda8;-><init>()V

    .line 544
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/folder/Folder;)V

    .line 545
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 546
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 540
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderNameEditText;->displayCompletions(Ljava/util/List;)V

    .line 548
    :cond_2
    return-void
.end method

.method private showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 969
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    if-eq v0, p1, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->showScrollHint(I)V

    .line 971
    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    if-eq v0, p1, :cond_2

    .line 976
    :cond_1
    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    .line 977
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 978
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    new-instance v1, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 979
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 981
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 982
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    .line 984
    :cond_2
    return-void
.end method

.method private updateItemLocationsInDatabaseBatch(Z)V
    .locals 6
    .param p1, "isBind"    # Z

    .line 1093
    new-instance v0, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 1094
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/DeviceProfile;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    .line 1096
    .local v0, "verifier":Lcom/android/launcher3/folder/FolderGridOrganizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1098
    .local v2, "total":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1099
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1100
    .local v4, "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1101
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    .end local v4    # "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1105
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1106
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/launcher3/model/ModelWriter;->moveItemsInDatabase(Ljava/util/ArrayList;II)V

    .line 1108
    :cond_2
    if-nez p1, :cond_3

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 1109
    sget-object v3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 1117
    :cond_3
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 894
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 895
    .local v0, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 896
    .local v1, "itemType":I
    if-eqz v1, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public addOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    .line 1703
    if-eqz p1, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnFolderStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1706
    :cond_0
    return-void
.end method

.method public animateOpen()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/Folder;->animateOpen(Ljava/util/List;I)V

    .line 640
    return-void
.end method

.method public beginExternalDrag()V
    .locals 3

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    .line 620
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 627
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    .line 628
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v2

    div-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/Folder;->animateOpen(Ljava/util/List;I)V

    .line 631
    return-void
.end method

.method bind(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 490
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 491
    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    .line 492
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 493
    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 494
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    sget-object v1, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 495
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    .line 497
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 498
    .local v2, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    if-nez v2, :cond_0

    .line 499
    new-instance v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    move-object v2, v3

    .line 500
    iput-boolean v1, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 501
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 504
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    .line 506
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    sget v3, Lcom/android/launcher3/R$string;->folder_hint_text:I

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(I)V

    .line 514
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    new-instance v3, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderIcon;->post(Ljava/lang/Runnable;)Z

    .line 519
    return-void
.end method

.method public canInterceptEventsInSystemGestureRegion()Z
    .locals 1

    .line 1637
    const/4 v0, 0x1

    return v0
.end method

.method public completeDragExit()V
    .locals 2

    .line 993
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 995
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 996
    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne v0, v1, :cond_1

    .line 997
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 999
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    .line 1000
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->clearDragInfo()V

    .line 1002
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1652
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 1653
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1654
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1655
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1656
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1657
    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1658
    .end local v0    # "count":I
    goto :goto_0

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1660
    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1662
    :goto_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 473
    const/4 v0, 0x1

    return v0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2
    .param p1, "direction"    # I

    .line 479
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    .line 848
    .local v0, "firstItem":Landroid/view/View;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->getAccessibilityInitialFocusView()Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1
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

    .line 841
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->folder_closed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 841
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getContent()Lcom/android/launcher3/folder/FolderPagedView;
    .locals 1

    .line 1665
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    return-object v0
.end method

.method protected getContentAreaHeight()I
    .locals 4

    .line 1163
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1164
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    sub-int/2addr v1, v2

    .line 1166
    .local v1, "maxContentAreaHeight":I
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 1167
    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredHeight()I

    move-result v2

    .line 1166
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1168
    .local v2, "height":I
    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method public getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 1512
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 1513
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1514
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1515
    return-void
.end method

.method public getIconsInReadingOrder()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1443
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1445
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    .line 1446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsOnPage(I)Ljava/util/List;
    .locals 10
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation

    .line 1452
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 1453
    .local v0, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1454
    .local v1, "lastPage":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1455
    .local v2, "totalItemsInFolder":I
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v3

    .line 1456
    .local v3, "itemsPerPage":I
    if-ne p1, v1, :cond_0

    .line 1457
    mul-int v4, v3, p1

    sub-int v4, v2, v4

    goto :goto_0

    .line 1458
    :cond_0
    move v4, v3

    :goto_0
    nop

    .line 1460
    .local v4, "numItemsOnCurrentPage":I
    mul-int v5, p1, v3

    .line 1461
    .local v5, "startIndex":I
    add-int v6, v5, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1463
    .local v6, "endIndex":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1464
    .local v7, "itemsOnCurrentPage":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    move v8, v5

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_1

    .line 1465
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/BubbleTextView;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1464
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1467
    .end local v8    # "i":I
    :cond_1
    return-object v7
.end method

.method protected handleClose(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    .line 769
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 773
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameEditText;->dispatchBackKey()V

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2

    .line 778
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->clearLeaveBehindIfExists()V

    .line 781
    :cond_2
    if-eqz p1, :cond_3

    .line 782
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->animateClosed()V

    goto :goto_0

    .line 784
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    .line 785
    new-instance v0, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->post(Ljava/lang/Runnable;)Z

    .line 790
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->sendAccessibilityEvent(I)V

    .line 792
    return-void
.end method

.method public hideItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1377
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 1378
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1379
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    :cond_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1225
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    return v0
.end method

.method public isDropEnabled()Z
    .locals 2

    .line 1126
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEditingName()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .line 916
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 762
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 1
    .param p1, "op"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 1436
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    .line 1437
    return-void
.end method

.method public notifyDrop()V
    .locals 1

    .line 1120
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 1123
    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
    .locals 8
    .param p1, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "rank"    # I

    .line 1392
    new-instance v0, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 1393
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/DeviceProfile;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    .line 1394
    .local v0, "verifier":Lcom/android/launcher3/folder/FolderGridOrganizer;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    .line 1395
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v1, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 1397
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    .line 1399
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->areViewsBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1400
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/view/View;

    .line 1402
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1403
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "windowInsets"    # Landroid/view/WindowInsets;

    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setTranslationY(F)V

    .line 427
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 429
    .local v0, "keyboardInsets":Landroid/graphics/Insets;
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getHeightFromBottom()I

    move-result v1

    .line 431
    .local v1, "folderHeightFromBottom":I
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    if-le v2, v1, :cond_0

    .line 433
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    .line 434
    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderNameEditText;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 433
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setTranslationY(F)V

    .line 438
    .end local v0    # "keyboardInsets":Landroid/graphics/Insets;
    .end local v1    # "folderHeightFromBottom":I
    :cond_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->requestFocus()Z

    .line 460
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onAttachedToWindow()V

    .line 461
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/FolderNameEditText;->addOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 462
    return-void
.end method

.method public onBackInvoked()V
    .locals 1

    .line 1609
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->dispatchBackKey()V

    goto :goto_0

    .line 1612
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onBackInvoked()V

    .line 1614
    :goto_0
    return-void
.end method

.method public onBackKey()Z
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "newTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/model/data/FolderInfo;->setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V

    .line 389
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderIcon;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    sget v2, Lcom/android/launcher3/R$string;->folder_hint_text:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(I)V

    .line 393
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 398
    :goto_0
    nop

    .line 400
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->folder_renamed:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 398
    const/16 v2, 0x20

    invoke-static {p0, v2, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameEditText;->clearFocus()V

    .line 406
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 407
    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    .line 408
    const/4 v1, 0x1

    return v1
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1619
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer;

    .line 1621
    .local v0, "dl":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1622
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1623
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameEditText;->dispatchBackKey()V

    .line 1624
    return v3

    .line 1626
    :cond_0
    return v1

    .line 1627
    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    .line 1628
    invoke-virtual {v2, p1, v0, p0}, Lcom/android/launcher3/folder/LauncherDelegate;->interceptOutsideTouch(Landroid/view/MotionEvent;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/folder/Folder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1629
    return v3

    .line 1632
    .end local v0    # "dl":Lcom/android/launcher3/views/BaseDragLayer;
    :cond_2
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 466
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onDetachedFromWindow()V

    .line 467
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/FolderNameEditText;->removeOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 468
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 364
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 366
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 901
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    .line 902
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 905
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegionWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    .line 906
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 1012
    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 1014
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1018
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1019
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1020
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->clearScrollHint()V

    .line 1022
    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 1024
    :cond_1
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 9
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 927
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    return-void

    .line 930
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 931
    .local v0, "r":[F
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    .line 933
    iget v2, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 934
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 935
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 936
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 937
    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    .line 939
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_1

    .line 940
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/android/launcher3/R$string;->move_to_position:I

    iget v5, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    add-int/2addr v5, v3

    .line 941
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 940
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 945
    :cond_1
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 946
    .local v2, "x":F
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v4

    .line 948
    .local v4, "currentPage":I
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    .line 950
    .local v5, "cellOverlap":F
    cmpg-float v6, v2, v5

    if-gez v6, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v1

    .line 951
    .local v6, "isOutsideLeftEdge":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v5

    cmpl-float v7, v2, v7

    if-lez v7, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v1

    .line 953
    .local v7, "isOutsideRightEdge":Z
    :goto_1
    if-lez v4, :cond_5

    iget-object v8, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v8, v8, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v8, :cond_4

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    .line 954
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/folder/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_4

    .line 955
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v4, v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v1, v1, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v1, :cond_6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    .line 957
    :goto_3
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/folder/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_4

    .line 959
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 960
    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    .line 961
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->clearScrollHint()V

    .line 962
    iput v3, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 965
    :cond_8
    :goto_4
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 341
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v0, p0, :cond_0

    .line 342
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 346
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 347
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 351
    new-instance v0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    .line 352
    .local v0, "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    goto :goto_1

    .line 351
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    .line 355
    .end local v0    # "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 357
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 16
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 1268
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v3, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1270
    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/folder/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    .line 1273
    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v4, v1, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {v0, v4}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    .line 1275
    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1276
    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1278
    :cond_0
    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    .line 1279
    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v11

    .line 1280
    .local v11, "launcher":Lcom/android/launcher3/Launcher;
    if-nez v11, :cond_1

    .line 1281
    return-void

    .line 1284
    :cond_1
    iget-object v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_2

    .line 1285
    iget-object v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    move-object v12, v0

    .line 1287
    .local v12, "pasi":Lcom/android/launcher3/widget/PendingAddShortcutInfo;
    if-eqz v12, :cond_3

    invoke-virtual {v12, v11}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    move-object v13, v0

    .line 1288
    .local v13, "pasiSi":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v0, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_4

    if-nez v13, :cond_4

    .line 1290
    iget-object v3, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    iput v3, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->container:I

    .line 1291
    iget v3, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iput v3, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->rank:I

    .line 1293
    iget v6, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->container:I

    iget v7, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->screenId:I

    const/4 v8, 0x0

    iget v9, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->spanX:I

    iget v10, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->spanY:I

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    .line 1295
    iput-boolean v14, v2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1296
    iput-boolean v0, v1, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto/16 :goto_5

    .line 1299
    :cond_4
    if-eqz v13, :cond_5

    .line 1300
    move-object v4, v13

    .local v4, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto :goto_2

    .line 1301
    .end local v4    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_5
    iget-object v4, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v4, v4, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v4, :cond_6

    .line 1303
    iget-object v4, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    invoke-interface {v4, v11}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    .restart local v4    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto :goto_2

    .line 1306
    .end local v4    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_6
    iget-object v4, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1310
    .restart local v4    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :goto_2
    iget-boolean v5, v1, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    if-eqz v5, :cond_7

    .line 1311
    iget-object v5, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v6, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v5, v4, v6}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/view/View;

    move-result-object v15

    .line 1315
    .local v15, "currentDragView":Landroid/view/View;
    iget-object v5, v1, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v7, v6, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/4 v8, 0x0

    iget v9, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    iget v10, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 1317
    iput-boolean v14, v1, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    goto :goto_3

    .line 1319
    .end local v15    # "currentDragView":Landroid/view/View;
    :cond_7
    iget-object v15, v1, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 1320
    .restart local v15    # "currentDragView":Landroid/view/View;
    iget-object v5, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v6, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v5, v15, v4, v6}, Lcom/android/launcher3/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    .line 1323
    :goto_3
    iget-object v5, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/Folder;->getScaleX()F

    move-result v5

    .line 1327
    .local v5, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/Folder;->getScaleY()F

    move-result v6

    .line 1328
    .local v6, "scaleY":F
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/Folder;->setScaleX(F)V

    .line 1329
    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/Folder;->setScaleY(F)V

    .line 1330
    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v7

    iget-object v8, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v7, v8, v15, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    .line 1331
    invoke-virtual {v1, v5}, Lcom/android/launcher3/folder/Folder;->setScaleX(F)V

    .line 1332
    invoke-virtual {v1, v6}, Lcom/android/launcher3/folder/Folder;->setScaleY(F)V

    .line 1333
    .end local v5    # "scaleX":F
    .end local v6    # "scaleY":F
    goto :goto_4

    .line 1334
    :cond_8
    iput-boolean v14, v2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1335
    invoke-virtual {v15, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    :goto_4
    iput-boolean v0, v1, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1339
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    .line 1342
    new-instance v3, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v3, v1}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    .line 1343
    .local v3, "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :try_start_0
    iget-object v5, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v6, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v5, v4, v6, v14}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    .line 1348
    .end local v3    # "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v3, v1, :cond_9

    .line 1349
    invoke-direct {v1, v14}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    .line 1354
    .end local v4    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v15    # "currentDragView":Landroid/view/View;
    :cond_9
    :goto_5
    iput-boolean v14, v1, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 1356
    iget-object v3, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v3

    if-le v3, v0, :cond_a

    .line 1358
    iget-object v3, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v1, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    .line 1359
    invoke-virtual {v4}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    .line 1358
    const/4 v5, 0x4

    invoke-virtual {v3, v5, v0, v4}, Lcom/android/launcher3/model/data/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    .line 1362
    :cond_a
    sget-object v0, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v11, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1363
    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    .line 1366
    :cond_b
    iget-object v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_c

    .line 1367
    iget-object v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    sget v3, Lcom/android/launcher3/R$string;->item_moved:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    .line 1369
    :cond_c
    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1370
    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1371
    return-void

    .line 1342
    .restart local v3    # "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    .restart local v4    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v15    # "currentDragView":Landroid/view/View;
    :catchall_0
    move-exception v0

    move-object v5, v0

    :try_start_1
    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v5
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 1041
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 1042
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 1043
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 1045
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez v2, :cond_3

    if-eq p1, p0, :cond_3

    .line 1046
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    goto :goto_1

    .line 1050
    :cond_1
    iget-object v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1051
    .local v2, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    .line 1052
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v3

    .line 1053
    .local v3, "icon":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    .line 1054
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v5, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v1, v6}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    .line 1055
    iget v5, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1056
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    .line 1057
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1059
    new-instance v5, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v5, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    .line 1060
    .local v5, "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v6, p2, v0}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    invoke-virtual {v5}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    .line 1064
    .end local v2    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v3    # "icon":Landroid/view/View;
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :cond_3
    :goto_1
    if-eq p1, p0, :cond_5

    .line 1065
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1066
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1067
    if-nez p3, :cond_4

    .line 1068
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    .line 1070
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1071
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 1075
    :cond_5
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 1076
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 1077
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 1078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 1082
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    .line 1085
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v2

    if-gt v0, v2, :cond_6

    .line 1087
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    .line 1088
    invoke-virtual {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    .line 1087
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher3/model/data/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    .line 1090
    :cond_6
    return-void

    .line 1059
    .restart local v2    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v3    # "icon":Landroid/view/View;
    .restart local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v5    # "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v5}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 416
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->dispatchBackKey()V

    .line 418
    const/4 v0, 0x1

    return v0

    .line 420
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 275
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onFinishInflate()V

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 277
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    .line 279
    .local v1, "paddingLeftRight":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$drawable;->round_rect_folder:I

    .line 280
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 279
    invoke-static {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 282
    sget v2, Lcom/android/launcher3/R$id;->folder_content:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 283
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v1, v4}, Lcom/android/launcher3/folder/FolderPagedView;->setPadding(IIII)V

    .line 284
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/FolderPagedView;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    .line 286
    sget v2, Lcom/android/launcher3/R$id;->folder_page_indicator:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    .line 287
    sget v2, Lcom/android/launcher3/R$id;->folder_name:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderNameEditText;

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    .line 288
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextSizePx:I

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setTextSize(IF)V

    .line 289
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/FolderNameEditText;->setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V

    .line 290
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/FolderNameEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 291
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setSelectAllOnFocus(Z)V

    .line 292
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderNameEditText;->getInputType()I

    move-result v4

    const v5, -0x8001

    and-int/2addr v4, v5

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    or-int/lit16 v4, v4, 0x2000

    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/FolderNameEditText;->setInputType(I)V

    .line 296
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->forceDisableSuggestions(Z)V

    .line 298
    sget v2, Lcom/android/launcher3/R$id;->folder_footer:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    sget v2, Lcom/android/launcher3/R$id;->folder_add_button:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/folder/FolderAddDialog$AddButtonListener;

    invoke-direct {v3, p0}, Lcom/android/launcher3/folder/FolderAddDialog$AddButtonListener;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->folderFooterHeightPx:I

    iput v2, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    .line 301
    new-instance v2, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    invoke-direct {v2, p0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mKeyboardInsetAnimationCallback:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    .line 302
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 303
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 1472
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    if-ne p1, v0, :cond_5

    .line 1473
    if-eqz p2, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 1475
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    .line 1476
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->startEditingFolderName()V

    goto :goto_1

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 1479
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 1480
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withFromState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 1484
    .local v0, "statsLogger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    new-instance v1, Ljava/util/StringJoiner;

    sget-object v2, Lcom/android/launcher3/folder/Folder;->FOLDER_LABEL_DELIMITER:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1485
    .local v1, "labelInfoBuilder":Ljava/util/StringJoiner;
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$FromState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1486
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1490
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1491
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->UNCHANGED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .local v2, "toLabelState":Lcom/android/launcher3/logger/LauncherAtom$ToState;
    goto :goto_0

    .line 1493
    .end local v2    # "toLabelState":Lcom/android/launcher3/logger/LauncherAtom$ToState;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/FolderInfo;->getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object v2

    .line 1494
    .restart local v2    # "toLabelState":Lcom/android/launcher3/logger/LauncherAtom$ToState;
    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TO_SUGGESTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1495
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1498
    :cond_3
    :goto_0
    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withToState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1500
    invoke-virtual {v1}, Ljava/util/StringJoiner;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1501
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withEditText(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1504
    :cond_4
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_LABEL_UPDATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1505
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderNameEditText;->dispatchBackKey()V

    .line 1508
    .end local v0    # "statsLogger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .end local v1    # "labelInfoBuilder":Ljava/util/StringJoiner;
    .end local v2    # "toLabelState":Lcom/android/launcher3/logger/LauncherAtom$ToState;
    :cond_5
    :goto_1
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 1429
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    .line 1430
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 308
    :cond_0
    new-instance v0, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1188
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaWidth()I

    move-result v0

    .line 1189
    .local v0, "contentWidth":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v1

    .line 1191
    .local v1, "contentHeight":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1192
    .local v3, "contentAreaWidthSpec":I
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1194
    .local v4, "contentAreaHeightSpec":I
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setFixedSize(II)V

    .line 1195
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher3/folder/FolderPagedView;->measure(II)V

    .line 1197
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    iget v6, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    .line 1198
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1197
    invoke-virtual {v5, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1200
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingRight()I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v0

    .line 1201
    .local v2, "folderWidth":I
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->getFolderHeight(I)I

    move-result v5

    .line 1202
    .local v5, "folderHeight":I
    invoke-virtual {p0, v2, v5}, Lcom/android/launcher3/folder/Folder;->setMeasuredDimension(II)V

    .line 1203
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

    .line 1407
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1408
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/folder/FolderPagedView;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1409
    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne v1, v0, :cond_0

    .line 1410
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 1412
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    .line 1414
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v0, :cond_2

    .line 1415
    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    if-eqz v1, :cond_1

    .line 1416
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    goto :goto_1

    .line 1418
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    .line 1421
    :cond_2
    :goto_1
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 2

    .line 1032
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1034
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {v0, v1}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    .line 1036
    :cond_0
    return-void
.end method

.method public rearrangeChildren()V
    .locals 2

    .line 1209
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->areViewsBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1210
    return-void

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    .line 1213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1214
    return-void
.end method

.method public removeOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    .line 1710
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnFolderStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1711
    return-void
.end method

.method replaceFolderWithFinalItem()V
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/LauncherDelegate;->replaceFolderWithFinalItem(Lcom/android/launcher3/folder/Folder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    .line 1222
    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "clipPath"    # Landroid/graphics/Path;

    .line 1646
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    .line 1647
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->invalidate()V

    .line 1648
    return-void
.end method

.method public setDragController(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 0
    .param p1, "dragController"    # Lcom/android/launcher3/dragndrop/DragController;

    .line 446
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 447
    return-void
.end method

.method public setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 450
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 451
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/folder/LauncherDelegate;->init(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderIcon;)V

    .line 452
    return-void
.end method

.method public setPriorityOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    .line 1683
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mPriorityOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    .line 1684
    return-void
.end method

.method public showItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1384
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 1385
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1386
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1388
    :cond_0
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 313
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_1

    .line 314
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 316
    .local v1, "item":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    iput v2, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    .line 317
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 319
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 320
    iget-boolean v2, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v3, Lcom/android/launcher3/folder/Folder$1;

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v5, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda13;

    invoke-direct {v5}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda13;-><init>()V

    invoke-direct {v3, p0, v4, v5}, Lcom/android/launcher3/folder/Folder$1;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/view/ViewGroup;Ljava/util/function/Function;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2, p1, p0, p2}, Lcom/android/launcher3/folder/LauncherDelegate;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 336
    .end local v1    # "item":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public startEditingFolderName()V
    .locals 1

    .line 373
    new-instance v0, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method

.method public updateTextViewFocus()V
    .locals 4

    .line 1231
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    .line 1232
    .local v0, "firstChild":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    .line 1233
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1234
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setNextFocusDownId(I)V

    .line 1235
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setNextFocusRightId(I)V

    .line 1236
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setNextFocusLeftId(I)V

    .line 1237
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setNextFocusUpId(I)V

    .line 1240
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setNextFocusForwardId(I)V

    .line 1243
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setNextFocusDownId(I)V

    .line 1244
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setNextFocusRightId(I)V

    .line 1245
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setNextFocusLeftId(I)V

    .line 1246
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setNextFocusUpId(I)V

    .line 1248
    new-instance v2, Lcom/android/launcher3/folder/Folder$9;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/folder/Folder$9;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    .line 1260
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1262
    :goto_0
    return-void
.end method
