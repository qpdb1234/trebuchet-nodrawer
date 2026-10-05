.class public Lcom/android/launcher3/popup/PopupContainerWithArrow;
.super Lcom/android/launcher3/popup/ArrowPopup;
.source "PopupContainerWithArrow.java"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;,
        Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/popup/ArrowPopup<",
        "TT;>;",
        "Lcom/android/launcher3/DragSource;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;"
    }
.end annotation


# static fields
.field private static final SHORTCUT_COLLAPSE_THRESHOLD:I = 0x6


# instance fields
.field protected mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field private mContainerWidth:I

.field private mDeepShortcutContainer:Landroid/view/ViewGroup;

.field private final mDeepShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/DeepShortcutView;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterceptTouchDown:Landroid/graphics/PointF;

.field private mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

.field protected mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

.field private final mShortcutHeight:F

.field private final mStartDragThreshold:I

.field private mSystemShortcutContainer:Landroid/view/ViewGroup;

.field private mWidgetContainer:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$5DTpxP45pqMGaPreGfSqTyTDkt0(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Xttrb9dinxFizTBKgWkbxtZtFWw(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b0gnwPkEorGaHkfCjVzAt1A0duk(Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->lambda$getItemClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalIcon(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartDragThreshold(Lcom/android/launcher3/popup/PopupContainerWithArrow;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 111
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 103
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    .line 84
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->deep_shortcuts_start_drag_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->bg_popup_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->system_shortcut_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutHeight:F

    .line 108
    return-void
.end method

.method private addAllShortcuts(ILjava/util/List;)V
    .locals 6
    .param p1, "deepShortcutCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)V"
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    .local p2, "systemShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 278
    sget v0, Lcom/android/launcher3/R$layout;->system_shortcut_rows_container:I

    sget v1, Lcom/android/launcher3/R$layout;->system_shortcut:I

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addSystemShortcuts(Ljava/util/List;II)V

    .line 281
    iget v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutHeight:F

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mChildContainerMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 283
    .local v0, "currentHeight":F
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addDeepShortcuts(IF)V

    .line 284
    return-void

    .line 287
    .end local v0    # "currentHeight":F
    :cond_0
    iget v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutHeight:F

    iget v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mChildContainerMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 288
    .restart local v0    # "currentHeight":F
    nop

    .line 289
    invoke-static {p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getNonWidgetSystemShortcuts(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 291
    .local v1, "nonWidgetSystemShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut;>;"
    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addSystemShortcutsIconsOnly(Ljava/util/List;)V

    .line 293
    iget v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    .line 294
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$dimen;->system_shortcut_header_icon_touch_size:I

    .line 295
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v3, v4

    .line 293
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    .line 297
    invoke-static {p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getWidgetShortcut(Ljava/util/List;)Ljava/util/Optional;

    move-result-object v2

    .line 298
    .local v2, "widgetShortcutOpt":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/launcher3/popup/SystemShortcut$Widgets;>;"
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    sget v3, Lcom/android/launcher3/R$layout;->widget_shortcut_container_material_u:I

    invoke-virtual {p0, v3, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    .line 301
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeWidgetShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)V

    .line 302
    iget v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutHeight:F

    iget v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mChildContainerMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 304
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addDeepShortcuts(IF)V

    .line 305
    return-void
.end method

.method private addDeepShortcuts(IF)V
    .locals 4
    .param p1, "deepShortcutCount"    # I
    .param p2, "currentHeight"    # F

    .line 390
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    sget v0, Lcom/android/launcher3/R$layout;->deep_shortcut_container:I

    invoke-virtual {p0, v0, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    .line 391
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 392
    iget v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutHeight:F

    add-float/2addr p2, v1

    .line 394
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    goto :goto_1

    .line 395
    :cond_0
    sget v1, Lcom/android/launcher3/R$layout;->deep_shortcut:I

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 397
    .local v1, "v":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 398
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v1    # "v":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 400
    .end local v0    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateHiddenShortcuts()V

    .line 401
    return-void
.end method

.method private addSystemShortcuts(Ljava/util/List;II)V
    .locals 5
    .param p2, "systemShortcutContainerLayout"    # I
    .param p3, "systemShortcutLayout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;II)V"
        }
    .end annotation

    .line 345
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    .local p1, "systemShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0, p2, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    .line 349
    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    .line 354
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/SystemShortcut;

    .line 355
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 351
    :goto_1
    invoke-virtual {p0, p3, v1, v2, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private addSystemShortcutsIconsOnly(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    .local p1, "systemShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 361
    return-void

    .line 364
    :cond_0
    sget v0, Lcom/android/launcher3/R$layout;->system_shortcut_icons_container:I

    invoke-virtual {p0, v0, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 367
    sget v1, Lcom/android/launcher3/R$layout;->system_shortcut_icon_only:I

    .line 368
    .local v1, "shortcutIconLayout":I
    const/4 v2, 0x1

    .line 370
    .local v2, "shouldAppendSpacer":Z
    if-nez v0, :cond_1

    .line 371
    sget v1, Lcom/android/launcher3/R$layout;->system_shortcut_icon_only_start:I

    goto :goto_1

    .line 372
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2

    .line 373
    sget v1, Lcom/android/launcher3/R$layout;->system_shortcut_icon_only_end:I

    .line 374
    const/4 v2, 0x0

    .line 376
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    .line 379
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/popup/SystemShortcut;

    .line 376
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;

    .line 366
    .end local v1    # "shortcutIconLayout":I
    .end local v2    # "shouldAppendSpacer":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public static canShow(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "icon"    # Landroid/view/View;
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    instance-of v0, p0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private configureForLauncher(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 219
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    new-instance v0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 221
    invoke-static {}, Lcom/android/launcher3/Flags;->privateSpaceRestrictItemDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_0

    .line 222
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .local v0, "itemInfoWithIcon":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_1

    .line 224
    .end local v0    # "itemInfoWithIcon":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_0
    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    .line 226
    :cond_1
    new-instance v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    invoke-direct {v0, p1}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 227
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 228
    return-void
.end method

.method public static dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;

    .line 584
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 585
    .local v0, "popup":Lcom/android/launcher3/popup/PopupContainerWithArrow;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    .line 586
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateClose()V

    .line 589
    :cond_1
    return-void
.end method

.method private static getNonWidgetSystemShortcuts(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;"
        }
    .end annotation

    .line 329
    .local p0, "systemShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut;>;"
    nop

    .line 330
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda2;-><init>()V

    .line 331
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 332
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 329
    return-object v0
.end method

.method public static getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow;"
        }
    .end annotation

    .line 577
    .local p0, "context":Landroid/content/Context;, "TT;"
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-object v0
.end method

.method private getTitleForAccessibility()Ljava/lang/String;
    .locals 2

    .line 420
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->action_deep_shortcut:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWidgetShortcut(Ljava/util/List;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/popup/SystemShortcut$Widgets;",
            ">;"
        }
    .end annotation

    .line 314
    .local p0, "systemShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut;>;"
    nop

    .line 315
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda4;-><init>()V

    .line 316
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    .line 317
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 318
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 314
    return-object v0
.end method

.method private synthetic lambda$getItemClickListener$0(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 147
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method static synthetic lambda$getNonWidgetSystemShortcuts$3(Lcom/android/launcher3/popup/SystemShortcut;)Z
    .locals 1
    .param p0, "shortcut"    # Lcom/android/launcher3/popup/SystemShortcut;

    .line 331
    instance-of v0, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getWidgetShortcut$2(Lcom/android/launcher3/popup/SystemShortcut;)Z
    .locals 1
    .param p0, "shortcut"    # Lcom/android/launcher3/popup/SystemShortcut;

    .line 316
    instance-of v0, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    return v0
.end method

.method static synthetic lambda$showForIcon$1(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "icon"    # Lcom/android/launcher3/BubbleTextView;
    .param p3, "s"    # Lcom/android/launcher3/popup/SystemShortcut$Factory;

    .line 206
    invoke-interface {p3, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v0

    return-object v0
.end method

.method private loadAppShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 4
    .param p1, "originalItemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 258
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getTitleForAccessibility()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    .line 261
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 263
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    .line 264
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    .line 263
    invoke-static {v1, p1, v2, p0, v3}, Lcom/android/launcher3/popup/PopupPopulator;->createUpdateRunnable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public static showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 9
    .param p0, "icon"    # Lcom/android/launcher3/BubbleTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BubbleTextView;",
            ")",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 192
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->clearFocus()V

    .line 195
    return-object v2

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 198
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-static {v1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    return-object v2

    .line 203
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    .line 204
    .local v2, "popupDataProvider":Lcom/android/launcher3/popup/PopupDataProvider;
    invoke-virtual {v2, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutCountForItem(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v3

    .line 205
    .local v3, "deepShortcutCount":I
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSupportedShortcuts()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v1, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;)V

    .line 206
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda1;-><init>()V

    .line 207
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 208
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 209
    .local v4, "systemShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut;>;"
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$layout;->popup_container:I

    .line 210
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v7

    .line 209
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 211
    .local v5, "container":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<Lcom/android/launcher3/Launcher;>;"
    invoke-direct {v5, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->configureForLauncher(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 212
    invoke-virtual {v5, p0, v3, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShowRows(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;)V

    .line 213
    invoke-static {v1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 214
    invoke-virtual {v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->requestFocus()Z

    .line 215
    return-object v5
.end method


# virtual methods
.method protected closeComplete()V
    .locals 3

    .line 562
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->closeComplete()V

    .line 563
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 567
    .local v0, "openPopup":Lcom/android/launcher3/popup/PopupContainerWithArrow;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eq v1, v2, :cond_2

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 569
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    .line 571
    :cond_2
    return-void
.end method

.method public createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .locals 1
    .param p1, "updateIconUi"    # Z

    .line 482
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Z)V

    return-object v0
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 80
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .line 127
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 2

    .line 120
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getAccessibilityInitialFocusView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 146
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-object v0
.end method

.method public getItemDragHandler()Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;
    .locals 1

    .line 156
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    return-object v0
.end method

.method protected getOriginalIcon()Lcom/android/launcher3/BubbleTextView;
    .locals 1

    .line 404
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    return-object v0
.end method

.method protected getSystemShortcutContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 408
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getTargetObjectLocation(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outPos"    # Landroid/graphics/Rect;

    .line 425
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 426
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 427
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 428
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 429
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 432
    return-void
.end method

.method protected getWidgetContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 412
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "info"    # Lcom/android/launcher3/popup/SystemShortcut;
    .param p4, "shouldAppendSpacer"    # Z

    .line 459
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v1, :cond_0

    .line 462
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 463
    .local v1, "shortcutView":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    .end local v1    # "shortcutView":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    goto :goto_0

    .line 464
    :cond_0
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 466
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V

    .line 467
    if-eqz p4, :cond_1

    sget v1, Lcom/android/launcher3/R$layout;->system_shortcut_spacer:I

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 468
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 464
    :cond_2
    :goto_0
    nop

    .line 470
    :goto_1
    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 471
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    return-object v0
.end method

.method protected initializeWidgetShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "info"    # Lcom/android/launcher3/popup/SystemShortcut;

    .line 443
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    sget v0, Lcom/android/launcher3/R$layout;->system_shortcut:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;

    move-result-object v0

    .line 444
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 445
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 142
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 161
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 163
    .local v0, "dl":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 169
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 172
    .end local v0    # "dl":Lcom/android/launcher3/views/BaseDragLayer;
    :cond_2
    return v1
.end method

.method protected onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/AnimatorSet;

    .line 556
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 557
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    .line 558
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    .line 540
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    goto :goto_0

    .line 546
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    .line 551
    :cond_1
    :goto_0
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 534
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    .line 535
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateClose()V

    .line 536
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 528
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 132
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v0

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0
.end method

.method public populateAndShowRows(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;)V
    .locals 2
    .param p1, "originalIcon"    # Lcom/android/launcher3/BubbleTextView;
    .param p2, "deepShortcutCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BubbleTextView;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    .local p3, "systemShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    .line 241
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->bg_popup_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    .line 243
    if-lez p2, :cond_0

    .line 244
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addAllShortcuts(ILjava/util/List;)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    sget v0, Lcom/android/launcher3/R$layout;->system_shortcut_rows_container:I

    sget v1, Lcom/android/launcher3/R$layout;->system_shortcut:I

    invoke-direct {p0, p3, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addSystemShortcuts(Ljava/util/List;II)V

    .line 250
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->show()V

    .line 251
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->loadAppShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 252
    return-void
.end method

.method public setPopupItemDragHandler(Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;)V
    .locals 0
    .param p1, "popupItemDragHandler"    # Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    .line 152
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    .line 153
    return-void
.end method

.method protected setWidgetContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "widgetContainer"    # Landroid/view/ViewGroup;

    .line 416
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    .line 417
    return-void
.end method

.method protected updateHiddenShortcuts()V
    .locals 4

    .line 435
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 436
    .local v0, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 437
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 438
    .local v2, "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setVisibility(I)V

    .line 436
    .end local v2    # "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
