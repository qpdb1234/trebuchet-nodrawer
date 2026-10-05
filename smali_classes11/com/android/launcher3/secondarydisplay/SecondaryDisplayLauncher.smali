.class public Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;
.super Lcom/android/launcher3/BaseDraggingActivity;
.source "SecondaryDisplayLauncher.java"

# interfaces
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private mAppDrawerShown:Z

.field private mAppsButton:Landroid/view/View;

.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private mBindingItems:Z

.field private mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

.field private mDragLayer:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field private mSecondaryDisplayPredictions:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

.field private mStringCache:Lcom/android/launcher3/model/StringCache;

.field private final mTempXY:[I


# direct methods
.method public static synthetic $r8$lambda$PwhL2hbADsLDd4q1RaKlsN3ASbw(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->lambda$getAllAppsItemLongClickListener$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WCKdOAb_KxQY6ocmbcjo7uagTzY(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->onIconClicked(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppsButton(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppsView(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/launcher3/BaseDraggingActivity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mBindingItems:Z

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mTempXY:[I

    return-void
.end method

.method private beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 23
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher3/DragSource;
    .param p3, "dragObject"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p4, "previewProvider"    # Lcom/android/launcher3/graphics/DragPreviewProvider;
    .param p5, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v14, p5

    const/high16 v3, 0x3f800000    # 1.0f

    .line 394
    .local v3, "iconScale":F
    instance-of v4, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_0

    .line 395
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    .line 396
    .local v4, "icon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    if-eqz v4, :cond_0

    .line 397
    invoke-virtual {v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result v3

    move v15, v3

    goto :goto_0

    .line 402
    .end local v4    # "icon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    :cond_0
    move v15, v3

    .end local v3    # "iconScale":F
    .local v15, "iconScale":F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 403
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 404
    instance-of v4, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_1

    .line 405
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    .line 406
    .local v4, "icon":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    .line 409
    .end local v4    # "icon":Lcom/android/launcher3/BubbleTextView;
    :cond_1
    const/4 v4, 0x0

    .line 410
    .local v4, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    instance-of v5, v1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v5, :cond_2

    .line 411
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/dragndrop/DraggableView;

    move-object v13, v4

    goto :goto_1

    .line 410
    :cond_2
    move-object v13, v4

    .line 414
    .end local v4    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .local v13, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getContentView()Landroid/view/View;

    move-result-object v12

    .line 418
    .local v12, "contentView":Landroid/view/View;
    if-nez v12, :cond_3

    .line 419
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 420
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mTempXY:[I

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F

    move-result v5

    move-object/from16 v16, v4

    move/from16 v17, v5

    .local v5, "scale":F
    goto :goto_2

    .line 422
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "scale":F
    :cond_3
    const/4 v4, 0x0

    .line 423
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mTempXY:[I

    invoke-virtual {v2, v12, v5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/view/View;[I)F

    move-result v5

    move-object/from16 v16, v4

    move/from16 v17, v5

    .line 426
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v16, "drawable":Landroid/graphics/drawable/Drawable;
    .local v17, "scale":F
    :goto_2
    iget-object v4, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mTempXY:[I

    aget v3, v4, v3

    .line 427
    .local v3, "dragLayerX":I
    const/4 v5, 0x1

    aget v4, v4, v5

    .line 429
    .local v4, "dragLayerY":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v5

    .line 430
    .local v11, "dragRect":Landroid/graphics/Rect;
    if-eqz v13, :cond_4

    .line 431
    invoke-interface {v13, v11}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 432
    iget v5, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    .line 435
    :cond_4
    iget-object v5, v14, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v5, :cond_5

    .line 436
    iget-object v5, v14, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    invoke-interface {v5}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 437
    .local v5, "xOffSet":I
    iget-object v6, v14, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    invoke-interface {v6}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 438
    .local v6, "yOffSet":I
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 439
    add-int/2addr v3, v5

    .line 440
    add-int/2addr v4, v6

    move/from16 v18, v3

    move/from16 v19, v4

    goto :goto_3

    .line 444
    .end local v5    # "xOffSet":I
    .end local v6    # "yOffSet":I
    :cond_5
    move/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "dragLayerX":I
    .end local v4    # "dragLayerY":I
    .local v18, "dragLayerX":I
    .local v19, "dragLayerY":I
    :goto_3
    if-eqz v12, :cond_6

    .line 445
    iget-object v3, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    mul-float v20, v17, v15

    move-object v4, v12

    move-object v5, v13

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object v10, v11

    move-object/from16 v21, v11

    .end local v11    # "dragRect":Landroid/graphics/Rect;
    .local v21, "dragRect":Landroid/graphics/Rect;
    move/from16 v11, v20

    move-object/from16 v20, v12

    .end local v12    # "contentView":Landroid/view/View;
    .local v20, "contentView":Landroid/view/View;
    move/from16 v12, v17

    move-object/from16 v22, v13

    .end local v13    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .local v22, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    move-object/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    goto :goto_4

    .line 457
    .end local v20    # "contentView":Landroid/view/View;
    .end local v21    # "dragRect":Landroid/graphics/Rect;
    .end local v22    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .restart local v11    # "dragRect":Landroid/graphics/Rect;
    .restart local v12    # "contentView":Landroid/view/View;
    .restart local v13    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    :cond_6
    move-object/from16 v21, v11

    move-object/from16 v20, v12

    move-object/from16 v22, v13

    .end local v11    # "dragRect":Landroid/graphics/Rect;
    .end local v12    # "contentView":Landroid/view/View;
    .end local v13    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .restart local v20    # "contentView":Landroid/view/View;
    .restart local v21    # "dragRect":Landroid/graphics/Rect;
    .restart local v22    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    iget-object v3, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    mul-float v11, v17, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v22

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, v21

    move/from16 v12, v17

    move-object/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    .line 469
    :goto_4
    return-void
.end method

.method private initUi()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 120
    .local v0, "currentDisplayIdp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 121
    invoke-virtual {v1, p0}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    .line 122
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile$Builder;->setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    .line 123
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile$Builder;->setTransposeLayoutWithOrientation(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->autoResizeAllAppsCells()V

    .line 127
    sget v1, Lcom/android/launcher3/R$layout;->secondary_launcher:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->setContentView(I)V

    .line 128
    sget v1, Lcom/android/launcher3/R$id;->drag_layer:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    iput-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    .line 129
    sget v1, Lcom/android/launcher3/R$id;->apps_view:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 132
    sget v1, Lcom/android/launcher3/R$id;->all_apps_button:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 133
    .local v1, "appsButton":Landroid/view/View;
    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setImportantForAccessibility(I)V

    .line 141
    .end local v1    # "appsButton":Landroid/view/View;
    sget v1, Lcom/android/launcher3/R$id;->all_apps_button:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    .line 143
    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 144
    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider;

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 145
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/AllAppsStore;)V

    invoke-direct {v1, v3}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 147
    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    .line 148
    return-void
.end method

.method private synthetic lambda$getAllAppsItemLongClickListener$0(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 345
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->onIconLongClicked(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private onIconClicked(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 354
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;

    if-eqz v1, :cond_1

    .line 355
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;

    invoke-interface {v1, p1}, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;->onItemClicked(Landroid/view/View;)V

    goto :goto_1

    .line 356
    :cond_1
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_4

    .line 357
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 359
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2

    .line 362
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 363
    .local v2, "appInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    invoke-virtual {v2, p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 364
    .local v2, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 365
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 367
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_3

    .line 370
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    goto :goto_1

    .line 368
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input must have a valid intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    .end local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher3/DragSource;
    .param p3, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 380
    .local v0, "dragObject":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_0

    .line 386
    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v6, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v6, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 388
    return-void

    .line 381
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 1
    .param p1, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p3, "packageUserKeytoUidMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    .line 313
    .local v0, "appsStore":Lcom/android/launcher3/allapps/AllAppsStore;, "Lcom/android/launcher3/allapps/AllAppsStore<Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;>;"
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    .line 314
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 315
    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 304
    .local p1, "deepShortcutMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setDeepShortcutMap(Ljava/util/HashMap;)V

    .line 305
    return-void
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 319
    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v1, -0x66

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mSecondaryDisplayPredictions:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;->setPredictedApps(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    .line 322
    :cond_0
    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p1, "app"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 235
    return-void
.end method

.method public bindStringCache(Lcom/android/launcher3/model/StringCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/android/launcher3/model/StringCache;

    .line 331
    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    .line 332
    return-void
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 1
    .param p1, "pagesBoundFirst"    # Lcom/android/launcher3/util/IntSet;

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mBindingItems:Z

    .line 300
    return-void
.end method

.method public getAllAppsItemLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 345
    new-instance v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V

    return-object v0
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    return-object v0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 340
    new-instance v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V

    return-object v0
.end method

.method public getOverviewPanel()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    return-object v0
.end method

.method public getStringCache()Lcom/android/launcher3/model/StringCache;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    return-object v0
.end method

.method public isAppDrawerShown()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    return v0
.end method

.method public isBindingItems()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mBindingItems:Z

    return v0
.end method

.method public onAppsButtonClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->showAppDrawer(Z)V

    .line 242
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onAttachedToWindow()V

    .line 103
    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->initUi()V

    .line 104
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->finishAutoCancelActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->cancelDrag()V

    .line 185
    return-void

    .line 190
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 191
    .local v0, "topView":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->canHandleBack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onBackInvoked()V

    goto :goto_0

    .line 195
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->showAppDrawer(Z)V

    .line 197
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 91
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 93
    new-instance v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    .line 94
    invoke-static {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mSecondaryDisplayPredictions:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->initUi()V

    .line 98
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDestroy()V

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 203
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDetachedFromWindow()V

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 110
    return-void
.end method

.method public onDragEnd()V
    .locals 0

    .line 475
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 472
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 158
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 160
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 164
    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 170
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->showAppDrawer(Z)V

    .line 171
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->cancelDrag()V

    .line 154
    return-void
.end method

.method protected reapplyUi()V
    .locals 0

    .line 225
    return-void
.end method

.method public showAppDrawer(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 250
    return-void
.end method

.method public startBinding()V
    .locals 1

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mBindingItems:Z

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->cancelDrag()V

    .line 290
    return-void
.end method
