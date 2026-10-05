.class public Lcom/android/launcher3/folder/FolderAnimationManager;
.super Ljava/lang/Object;
.source "FolderAnimationManager.java"


# static fields
.field private static final FOLDER_NAME_ALPHA_DURATION:I = 0x20

.field private static final LARGE_FOLDER_FOOTER_DURATION:I = 0x80


# instance fields
.field private mBgColorAnimator:Landroid/animation/ObjectAnimator;

.field private mContent:Lcom/android/launcher3/folder/FolderPagedView;

.field private mContext:Landroid/content/Context;

.field private final mDelay:I

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mDuration:I

.field private mFolder:Lcom/android/launcher3/folder/Folder;

.field private mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private final mFolderInterpolator:Landroid/animation/TimeInterpolator;

.field private final mIsOpening:Z

.field private final mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

.field private final mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

.field private mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

.field private final mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

.field private final mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContent(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOpening(Lcom/android/launcher3/folder/FolderAnimationManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;
    .param p2, "isOpening"    # Z

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 90
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 91
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 94
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 95
    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 97
    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    .line 98
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 99
    new-instance v0, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/DeviceProfile;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 101
    iput-boolean p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$integer;->config_materialFolderExpandDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    .line 105
    sget v1, Lcom/android/launcher3/R$integer;->config_folderDelay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    .line 107
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/launcher3/R$interpolator;->standard_interpolator:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    .line 109
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/launcher3/R$interpolator;->large_folder_preview_item_open_interpolator:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

    .line 111
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/launcher3/R$interpolator;->standard_accelerate_interpolator:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

    .line 113
    return-void
.end method

.method private addPreviewItemAnimators(Landroid/animation/AnimatorSet;FII)V
    .locals 34
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "folderScale"    # F
    .param p3, "previewItemOffsetX"    # I
    .param p4, "previewItemOffsetY"    # I

    .line 352
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v8

    .line 353
    .local v8, "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    const/4 v9, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v10, v0

    .line 354
    .local v10, "isOnFirstPage":Z
    nop

    .line 355
    if-eqz v10, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    .line 354
    :goto_1
    invoke-direct {v6, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->getPreviewIconsOnPage(I)Ljava/util/List;

    move-result-object v11

    .line 356
    .local v11, "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 357
    .local v12, "numItemsInPreview":I
    if-eqz v10, :cond_2

    .line 358
    move v0, v12

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    :goto_2
    move v14, v0

    .line 360
    .local v14, "numItemsInFirstPagePreview":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderAnimationManager;->getPreviewItemInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v15

    .line 362
    .local v15, "previewItemInterpolator":Landroid/animation/TimeInterpolator;
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 363
    .local v5, "cwc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_3
    if-ge v4, v12, :cond_7

    .line 364
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    .line 365
    .local v3, "btv":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 368
    .local v2, "btvLp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iput-boolean v9, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 369
    invoke-virtual {v5, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    .line 372
    invoke-virtual {v8, v14}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v16

    .line 373
    .local v16, "previewScale":F
    invoke-virtual {v8}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getIconSize()F

    move-result v0

    mul-float v17, v0, v16

    .line 374
    .local v17, "previewSize":F
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v0

    int-to-float v0, v0

    div-float v18, v17, v0

    .line 376
    .local v18, "iconScale":F
    div-float v1, v18, p2

    .line 377
    .local v1, "initialScale":F
    const/high16 v19, 0x3f800000    # 1.0f

    .line 378
    .local v19, "finalScale":F
    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_4

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 379
    .local v0, "scale":F
    :goto_4
    invoke-virtual {v3, v0}, Lcom/android/launcher3/BubbleTextView;->setScaleX(F)V

    .line 380
    invoke-virtual {v3, v0}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 383
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {v8, v4, v14, v13}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 386
    iget v13, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->width:I

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v20

    sub-int v13, v13, v20

    int-to-float v13, v13

    mul-float v13, v13, v18

    float-to-int v13, v13

    div-int/lit8 v13, v13, 0x2

    .line 388
    .local v13, "iconOffsetX":I
    iget-object v9, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v9, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    move/from16 v21, v0

    .end local v0    # "scale":F
    .local v21, "scale":F
    int-to-float v0, v13

    sub-float/2addr v9, v0

    move/from16 v0, p3

    move/from16 v22, v4

    .end local v4    # "i":I
    .local v22, "i":I
    int-to-float v4, v0

    add-float/2addr v9, v4

    div-float v9, v9, p2

    float-to-int v9, v9

    .line 390
    .local v9, "previewPosX":I
    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    mul-float v23, v4, v18

    .line 391
    .local v23, "paddingTop":F
    iget-object v4, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v4, v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    move-object/from16 v24, v8

    move/from16 v8, p4

    .end local v8    # "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .local v24, "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    int-to-float v0, v8

    add-float/2addr v4, v0

    sub-float v4, v4, v23

    div-float v4, v4, p2

    float-to-int v4, v4

    .line 394
    .local v4, "previewPosY":I
    iget v0, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    sub-int v0, v9, v0

    int-to-float v0, v0

    .line 395
    .local v0, "xDistance":F
    move-object/from16 v25, v5

    .end local v5    # "cwc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .local v25, "cwc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    iget v5, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    .line 397
    .local v5, "yDistance":F
    move-object/from16 v26, v2

    .end local v2    # "btvLp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .local v26, "btvLp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move/from16 v27, v4

    .end local v4    # "previewPosY":I
    .local v27, "previewPosY":I
    const/4 v4, 0x0

    invoke-direct {v6, v3, v2, v0, v4}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    .line 398
    .local v2, "translationX":Landroid/animation/Animator;
    invoke-virtual {v2, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    invoke-direct {v6, v7, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 401
    move/from16 v28, v0

    .end local v0    # "xDistance":F
    .local v28, "xDistance":F
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v6, v3, v0, v5, v4}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v4

    .line 402
    .local v4, "translationY":Landroid/animation/Animator;
    invoke-virtual {v4, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 403
    invoke-direct {v6, v7, v4}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 405
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v0, v1, v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v8

    .line 406
    .local v8, "scaleAnimator":Landroid/animation/Animator;
    invoke-virtual {v8, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 409
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    move/from16 v20, v9

    const/4 v9, 0x4

    .end local v9    # "previewPosX":I
    .local v20, "previewPosX":I
    if-le v0, v9, :cond_6

    .line 412
    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    iget v9, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    mul-int/lit8 v9, v9, 0x2

    .line 413
    .local v9, "delay":I
    :goto_5
    if-eqz v0, :cond_5

    .line 414
    move/from16 v29, v1

    .end local v1    # "initialScale":F
    .local v29, "initialScale":F
    int-to-long v0, v9

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 415
    int-to-long v0, v9

    invoke-virtual {v4, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 416
    int-to-long v0, v9

    invoke-virtual {v8, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_6

    .line 413
    .end local v29    # "initialScale":F
    .restart local v1    # "initialScale":F
    :cond_5
    move/from16 v29, v1

    .line 418
    .end local v1    # "initialScale":F
    .restart local v29    # "initialScale":F
    :goto_6
    invoke-virtual {v2}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    move/from16 v30, v10

    move-object/from16 v31, v11

    .end local v10    # "isOnFirstPage":Z
    .end local v11    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    .local v30, "isOnFirstPage":Z
    .local v31, "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    int-to-long v10, v9

    sub-long/2addr v0, v10

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 419
    invoke-virtual {v4}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    int-to-long v10, v9

    sub-long/2addr v0, v10

    invoke-virtual {v4, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 420
    invoke-virtual {v8}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    int-to-long v10, v9

    sub-long/2addr v0, v10

    invoke-virtual {v8, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_7

    .line 409
    .end local v9    # "delay":I
    .end local v29    # "initialScale":F
    .end local v30    # "isOnFirstPage":Z
    .end local v31    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    .restart local v1    # "initialScale":F
    .restart local v10    # "isOnFirstPage":Z
    .restart local v11    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    :cond_6
    move/from16 v29, v1

    move/from16 v30, v10

    move-object/from16 v31, v11

    .line 423
    .end local v1    # "initialScale":F
    .end local v10    # "isOnFirstPage":Z
    .end local v11    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    .restart local v29    # "initialScale":F
    .restart local v30    # "isOnFirstPage":Z
    .restart local v31    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    :goto_7
    new-instance v9, Lcom/android/launcher3/folder/FolderAnimationManager$2;

    move/from16 v10, v21

    move/from16 v11, v28

    .end local v21    # "scale":F
    .end local v28    # "xDistance":F
    .local v10, "scale":F
    .local v11, "xDistance":F
    move-object v0, v9

    move/from16 v21, v29

    .end local v29    # "initialScale":F
    .local v21, "initialScale":F
    move-object/from16 v1, p0

    move-object/from16 v28, v2

    .end local v2    # "translationX":Landroid/animation/Animator;
    .local v28, "translationX":Landroid/animation/Animator;
    move-object v2, v3

    move-object/from16 v29, v3

    .end local v3    # "btv":Lcom/android/launcher3/BubbleTextView;
    .local v29, "btv":Lcom/android/launcher3/BubbleTextView;
    move v3, v11

    move-object/from16 v32, v4

    .end local v4    # "translationY":Landroid/animation/Animator;
    .local v32, "translationY":Landroid/animation/Animator;
    move v4, v5

    move/from16 v33, v5

    .end local v5    # "yDistance":F
    .local v33, "yDistance":F
    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager$2;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFF)V

    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 363
    .end local v8    # "scaleAnimator":Landroid/animation/Animator;
    .end local v10    # "scale":F
    .end local v11    # "xDistance":F
    .end local v13    # "iconOffsetX":I
    .end local v16    # "previewScale":F
    .end local v17    # "previewSize":F
    .end local v18    # "iconScale":F
    .end local v19    # "finalScale":F
    .end local v20    # "previewPosX":I
    .end local v21    # "initialScale":F
    .end local v23    # "paddingTop":F
    .end local v26    # "btvLp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .end local v27    # "previewPosY":I
    .end local v28    # "translationX":Landroid/animation/Animator;
    .end local v29    # "btv":Lcom/android/launcher3/BubbleTextView;
    .end local v32    # "translationY":Landroid/animation/Animator;
    .end local v33    # "yDistance":F
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v8, v24

    move-object/from16 v5, v25

    move/from16 v10, v30

    move-object/from16 v11, v31

    const/4 v9, 0x1

    .end local v22    # "i":I
    .local v4, "i":I
    goto/16 :goto_3

    .line 446
    .end local v4    # "i":I
    .end local v24    # "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .end local v25    # "cwc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .end local v30    # "isOnFirstPage":Z
    .end local v31    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    .local v5, "cwc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .local v8, "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .local v10, "isOnFirstPage":Z
    .local v11, "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    :cond_7
    return-void
.end method

.method private getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "property"    # Landroid/util/Property;
    .param p3, "v1"    # F
    .param p4, "v2"    # F

    .line 475
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 476
    new-array v0, v3, [F

    aput p3, v0, v2

    aput p4, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_0
    new-array v0, v3, [F

    aput p4, v0, v2

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 475
    :goto_0
    return-object v0
.end method

.method private getAnimator(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/GradientDrawable;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "v1"    # I
    .param p4, "v2"    # I

    .line 481
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_0

    .line 482
    filled-new-array {p3, p4}, [I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_0
    filled-new-array {p4, p3}, [I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 481
    :goto_0
    return-object v0
.end method

.method private getPreviewIconsOnPage(I)Ljava/util/List;
    .locals 2
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 344
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 343
    return-object v0
.end method

.method private getPreviewItemInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 463
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderAnimationManager;->isLargeFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

    .line 467
    :goto_0
    return-object v0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method private isLargeFolder()Z
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 6
    .param p1, "as"    # Landroid/animation/AnimatorSet;
    .param p2, "a"    # Landroid/animation/Animator;

    .line 449
    invoke-virtual {p2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v3

    iget v5, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 450
    return-void
.end method

.method private play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V
    .locals 2
    .param p1, "as"    # Landroid/animation/AnimatorSet;
    .param p2, "a"    # Landroid/animation/Animator;
    .param p3, "startDelay"    # J
    .param p5, "duration"    # I

    .line 453
    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 454
    int-to-long v0, p5

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 455
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 456
    return-void
.end method


# virtual methods
.method public getAnimator()Landroid/animation/AnimatorSet;
    .locals 48

    .line 126
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 127
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 128
    .local v7, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    .line 129
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v8

    .line 130
    .local v8, "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/launcher3/folder/FolderAnimationManager;->getPreviewIconsOnPage(I)Ljava/util/List;

    move-result-object v10

    .line 133
    .local v10, "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    .line 134
    .local v11, "folderIconPos":Landroid/graphics/Rect;
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 135
    invoke-virtual {v0, v1, v11}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v12

    .line 136
    .local v12, "scaleRelativeToDragLayer":F
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v13

    .line 137
    .local v13, "scaledRadius":I
    mul-int/lit8 v0, v13, 0x2

    int-to-float v0, v0

    mul-float v14, v0, v12

    .line 140
    .local v14, "initialSize":F
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v15

    .line 141
    .local v15, "previewScale":F
    invoke-virtual {v8}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getIconSize()F

    move-result v0

    mul-float v16, v0, v15

    .line 142
    .local v16, "previewSize":F
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v16, v0

    mul-float v5, v0, v12

    .line 144
    .local v5, "initialScale":F
    const/high16 v17, 0x3f800000    # 1.0f

    .line 145
    .local v17, "finalScale":F
    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    move v4, v0

    .line 146
    .local v4, "scale":F
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/Folder;->setPivotX(F)V

    .line 147
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/Folder;->setPivotY(F)V

    .line 150
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/folder/FolderPagedView;->setScaleX(F)V

    .line 151
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/folder/FolderPagedView;->setScaleY(F)V

    .line 152
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->setPivotX(F)V

    .line 153
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->setPivotY(F)V

    .line 154
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 155
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 156
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 157
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 162
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v16, v0

    float-to-int v0, v0

    .line 163
    .local v0, "previewItemOffsetX":I
    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget v1, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float/2addr v1, v14

    int-to-float v2, v0

    sub-float/2addr v1, v2

    float-to-int v0, v1

    move v2, v0

    goto :goto_1

    .line 163
    :cond_1
    move v2, v0

    .line 167
    .end local v0    # "previewItemOffsetX":I
    .local v2, "previewItemOffsetX":I
    :goto_1
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v1, v0

    .line 168
    .local v1, "paddingOffsetX":I
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 170
    .local v0, "paddingOffsetY":I
    iget v3, v11, Landroid/graphics/Rect;->left:I

    iget-object v9, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 171
    invoke-virtual {v9}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v12

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v3, v9

    sub-int/2addr v3, v1

    sub-int v9, v3, v2

    .line 173
    .local v9, "initialX":I
    iget v3, v11, Landroid/graphics/Rect;->top:I

    move/from16 v21, v4

    .end local v4    # "scale":F
    .local v21, "scale":F
    iget-object v4, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/Folder;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 174
    invoke-virtual {v4}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    sub-int v22, v3, v0

    .line 176
    .local v22, "initialY":I
    iget v3, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    sub-int v3, v9, v3

    int-to-float v3, v3

    .line 177
    .local v3, "xDistance":F
    iget v4, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    sub-int v4, v22, v4

    int-to-float v4, v4

    .line 180
    .local v4, "yDistance":F
    move-object/from16 v23, v8

    .end local v8    # "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .local v23, "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    iget-object v8, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    move/from16 v24, v9

    .end local v9    # "initialX":I
    .local v24, "initialX":I
    sget v9, Lcom/android/launcher3/R$attr;->folderPreviewColor:I

    invoke-static {v8, v9}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v8

    .line 181
    .local v8, "initialColor":I
    iget-object v9, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v10

    .end local v10    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    .local v25, "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    sget v10, Lcom/android/launcher3/R$attr;->folderBackgroundColor:I

    invoke-static {v9, v10}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v9

    .line 183
    .local v9, "finalColor":I
    iget-object v10, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 184
    iget-object v10, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v26, v11

    .end local v11    # "folderIconPos":Landroid/graphics/Rect;
    .local v26, "folderIconPos":Landroid/graphics/Rect;
    iget-boolean v11, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v11, :cond_2

    move v11, v8

    goto :goto_2

    :cond_2
    move v11, v9

    :goto_2
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 187
    add-int v10, v1, v2

    .line 188
    .local v10, "totalOffsetX":I
    new-instance v11, Landroid/graphics/Rect;

    move/from16 v27, v1

    .end local v1    # "paddingOffsetX":I
    .local v27, "paddingOffsetX":I
    int-to-float v1, v10

    add-float/2addr v1, v14

    .line 190
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move/from16 v28, v2

    .end local v2    # "previewItemOffsetX":I
    .local v28, "previewItemOffsetX":I
    int-to-float v2, v0

    add-float/2addr v2, v14

    .line 191
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v11, v10, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v29, v11

    .line 192
    .local v29, "startRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    iget v11, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    move/from16 v31, v0

    const/4 v0, 0x0

    .end local v0    # "paddingOffsetY":I
    .local v31, "paddingOffsetY":I
    invoke-direct {v1, v0, v0, v2, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v30, v1

    .line 193
    .local v30, "endRect":Landroid/graphics/Rect;
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v11

    .line 196
    .local v11, "finalRadius":F
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v2, v0

    .line 199
    .local v2, "a":Landroid/animation/AnimatorSet;
    new-instance v0, Lcom/android/launcher3/anim/PropertyResetListener;

    sget-object v1, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    .line 200
    move/from16 v38, v10

    const/high16 v19, 0x3f800000    # 1.0f

    .end local v10    # "totalOffsetX":I
    .local v38, "totalOffsetX":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v0, v1, v10}, Lcom/android/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    move-object v10, v0

    .line 201
    .local v10, "colorResetListener":Lcom/android/launcher3/anim/PropertyResetListener;
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 202
    .local v1, "icon":Lcom/android/launcher3/BubbleTextView;
    move-object/from16 v32, v0

    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_3

    .line 203
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 205
    :cond_3
    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 206
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    invoke-direct {v6, v2, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 208
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v1    # "icon":Lcom/android/launcher3/BubbleTextView;
    move-object/from16 v0, v32

    goto :goto_3

    .line 210
    :cond_4
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "color"

    invoke-direct {v6, v0, v1, v8, v9}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mBgColorAnimator:Landroid/animation/ObjectAnimator;

    .line 211
    invoke-direct {v6, v2, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 212
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move/from16 v39, v8

    const/4 v8, 0x0

    .end local v8    # "initialColor":I
    .local v39, "initialColor":I
    invoke-direct {v6, v0, v1, v3, v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v2, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 213
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v6, v0, v1, v4, v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v2, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 214
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v1, v5, v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v2, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 215
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-direct {v6, v0, v1, v5, v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v2, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderAnimationManager;->isLargeFolder()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_5

    .line 221
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 222
    const/16 v0, 0x80

    .line 223
    .local v0, "footerAlphaDuration":I
    iget v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    sub-int/2addr v1, v0

    move v8, v0

    .local v1, "footerStartDelay":I
    goto :goto_4

    .line 225
    .end local v0    # "footerAlphaDuration":I
    .end local v1    # "footerStartDelay":I
    :cond_5
    const/4 v0, 0x0

    .line 226
    .restart local v0    # "footerAlphaDuration":I
    const/4 v1, 0x0

    move v8, v0

    .restart local v1    # "footerStartDelay":I
    goto :goto_4

    .line 229
    .end local v0    # "footerAlphaDuration":I
    .end local v1    # "footerStartDelay":I
    :cond_6
    const/4 v1, 0x0

    .line 230
    .restart local v1    # "footerStartDelay":I
    iget v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    move v8, v0

    .line 232
    .local v8, "footerAlphaDuration":I
    :goto_4
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    move/from16 v32, v3

    .end local v3    # "xDistance":F
    .local v32, "xDistance":F
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move/from16 v33, v4

    move/from16 v18, v5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .end local v4    # "yDistance":F
    .end local v5    # "initialScale":F
    .local v18, "initialScale":F
    .local v33, "yDistance":F
    invoke-direct {v6, v0, v3, v5, v4}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v3

    int-to-long v4, v1

    move/from16 v40, v31

    .end local v31    # "paddingOffsetY":I
    .local v40, "paddingOffsetY":I
    move-object/from16 v0, p0

    move/from16 v42, v1

    move/from16 v41, v27

    .end local v1    # "footerStartDelay":I
    .end local v27    # "paddingOffsetX":I
    .local v41, "paddingOffsetX":I
    .local v42, "footerStartDelay":I
    move-object v1, v2

    move/from16 v43, v9

    move-object/from16 v44, v10

    move/from16 v45, v14

    move/from16 v9, v28

    const/4 v14, 0x0

    move-object v10, v2

    .end local v2    # "a":Landroid/animation/AnimatorSet;
    .end local v14    # "initialSize":F
    .end local v28    # "previewItemOffsetX":I
    .local v9, "previewItemOffsetX":I
    .local v10, "a":Landroid/animation/AnimatorSet;
    .local v43, "finalColor":I
    .local v44, "colorResetListener":Lcom/android/launcher3/anim/PropertyResetListener;
    .local v45, "initialSize":F
    move-object v2, v3

    move/from16 v46, v15

    move/from16 v19, v21

    move/from16 v21, v32

    move/from16 v47, v33

    const/high16 v15, 0x3f800000    # 1.0f

    .end local v15    # "previewScale":F
    .end local v32    # "xDistance":F
    .end local v33    # "yDistance":F
    .local v19, "scale":F
    .local v21, "xDistance":F
    .local v46, "previewScale":F
    .local v47, "yDistance":F
    move-wide v3, v4

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 235
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v27

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-boolean v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    xor-int/lit8 v32, v1, 0x1

    move-object/from16 v28, v0

    move/from16 v31, v11

    invoke-virtual/range {v27 .. v32}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v10, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 239
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    mul-int/lit8 v1, v1, 0x2

    add-int v27, v0, v1

    .line 241
    .local v27, "width":I
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    .line 243
    .local v5, "height":I
    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    goto :goto_5

    :cond_7
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getDestinationPage()I

    move-result v0

    :goto_5
    move/from16 v28, v0

    .line 244
    .local v28, "page":I
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v0

    iget v1, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    mul-int v1, v1, v28

    add-int v3, v0, v1

    .line 245
    .local v3, "left":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, v3, v27

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v34, v0

    .line 246
    .local v34, "contentStart":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    add-int/2addr v1, v3

    iget v4, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v35, v0

    .line 247
    .local v35, "contentEnd":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v32

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 248
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v33

    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    .line 247
    xor-int/lit8 v37, v0, 0x1

    move/from16 v36, v11

    invoke-virtual/range {v32 .. v37}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v10, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 252
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-boolean v1, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_8

    move v1, v14

    goto :goto_6

    :cond_8
    move v1, v15

    :goto_6
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderNameEditText;->setAlpha(F)V

    .line 253
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-direct {v6, v0, v1, v14, v15}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    .line 254
    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const-wide/16 v31, 0x0

    if-eqz v0, :cond_9

    const-wide/16 v36, 0x20

    goto :goto_7

    :cond_9
    move-wide/from16 v36, v31

    .line 255
    :goto_7
    const/16 v1, 0x20

    if-eqz v0, :cond_a

    iget v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    sub-int/2addr v0, v1

    move v15, v0

    goto :goto_8

    :cond_a
    move v15, v1

    .line 253
    :goto_8
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v20, v3

    .end local v3    # "left":I
    .local v20, "left":I
    move-wide/from16 v3, v36

    move/from16 v33, v5

    .end local v5    # "height":I
    .local v33, "height":I
    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 258
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v0

    int-to-float v15, v0

    .line 259
    .local v15, "normalHeight":F
    mul-float v36, v15, v18

    .line 260
    .local v36, "scaledHeight":F
    sub-float v5, v15, v36

    .line 261
    .local v5, "diff":F
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    neg-float v2, v5

    invoke-direct {v6, v0, v1, v2, v14}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v10, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 264
    iget v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    div-int/lit8 v3, v0, 0x2

    .line 265
    .local v3, "midDuration":I
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getElevation()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v6, v0, v1, v2, v14}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v14

    .line 266
    .local v14, "z":Landroid/animation/Animator;
    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_b

    int-to-long v0, v3

    move-wide/from16 v31, v0

    :cond_b
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v14

    move/from16 v37, v3

    .end local v3    # "midDuration":I
    .local v37, "midDuration":I
    move-wide/from16 v3, v31

    move/from16 v31, v5

    .end local v5    # "diff":F
    .local v31, "diff":F
    move/from16 v5, v37

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 274
    new-instance v0, Lcom/android/launcher3/folder/FolderAnimationManager$1;

    invoke-direct {v0, v6}, Lcom/android/launcher3/folder/FolderAnimationManager$1;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;)V

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 327
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 328
    .local v1, "animator":Landroid/animation/Animator;
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    .end local v1    # "animator":Landroid/animation/Animator;
    goto :goto_9

    .line 331
    :cond_c
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v0

    sub-int v0, v13, v0

    .line 332
    .local v0, "radiusDiff":I
    div-float v5, v18, v12

    int-to-float v1, v9

    div-float/2addr v1, v12

    float-to-int v1, v1

    add-int/2addr v1, v0

    invoke-direct {v6, v10, v5, v1, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->addPreviewItemAnimators(Landroid/animation/AnimatorSet;FII)V

    .line 336
    return-object v10
.end method

.method public getBgColorAnimator()Landroid/animation/ObjectAnimator;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mBgColorAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method
