.class public Lcom/android/launcher3/widget/PendingAppWidgetHostView;
.super Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
.source "PendingAppWidgetHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;


# static fields
.field private static final DEFERRED_ALPHA:I = 0x77

.field private static final FLAG_DRAW_ICON:I = 0x2

.field private static final FLAG_DRAW_LABEL:I = 0x4

.field private static final FLAG_DRAW_SETTINGS:I = 0x1

.field private static final MIN_SATURATION:F = 0.7f

.field private static final SETUP_ICON_SIZE_FACTOR:F = 0.4f


# instance fields
.field private final mAppwidget:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

.field private mCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private final mDisabledForSafeMode:Z

.field private mDragFlags:I

.field private mDrawableSizeChanged:Z

.field private final mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

.field private mIsDeferredWidget:Z

.field private final mLabel:Ljava/lang/CharSequence;

.field private mOnDetachCleanup:Lcom/android/launcher3/util/SafeCloseable;

.field private final mPaint:Landroid/text/TextPaint;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private final mPreviewPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;

.field private mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSetupTextLayout:Landroid/text/Layout;

.field private final mStartState:I

.field private final mWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;


# direct methods
.method public static synthetic $r8$lambda$uF-9XG35oxqtQrcbgD7IdkXogjY(Lcom/android/launcher3/widget/PendingAppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->checkIfRestored()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetHolder"    # Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .param p3, "appWidgetId"    # I
    .param p4, "appWidget"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 125
    new-instance v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, p4, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v3, p3, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget-object v5, p4, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 129
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDragFlags:I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mIsDeferredWidget:Z

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetHolder"    # Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .param p3, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p4, "appWidget"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 106
    nop

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->gadget_complete_setup_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 106
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Ljava/lang/CharSequence;)V

    .line 109
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v0, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 115
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    iget-object v1, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 116
    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/icons/IconCache;->updateIconInBackground(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/util/CancellableTask;

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 120
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetHolder"    # Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .param p3, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p4, "appwidget"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p5, "label"    # Ljava/lang/CharSequence;

    .line 147
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/android/launcher3/R$style;->WidgetContainerTheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    .line 148
    iput-object p2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    .line 149
    iput-object p4, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mAppwidget:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 150
    iput-object p3, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 151
    iget v0, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mStartState:I

    .line 152
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isSafeModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    .line 153
    iput-object p5, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mLabel:Ljava/lang/CharSequence;

    .line 155
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010036

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 159
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 157
    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPreviewPaint:Landroid/graphics/Paint;

    .line 163
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setWillNotDraw(Z)V

    .line 164
    sget v0, Lcom/android/launcher3/R$drawable;->pending_widget_bg:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setBackgroundResource(I)V

    .line 165
    return-void
.end method

.method private checkIfRestored()V
    .locals 3

    .line 183
    new-instance v0, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->isAppWidgetRestored(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/PendingAppWidgetHostView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/PendingAppWidgetHostView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    :cond_0
    return-void
.end method

.method private getWidgetCategoryIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 478
    const/4 v0, 0x0

    return-object v0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/PackageItemInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private updateDrawableBounds()V
    .locals 26

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 368
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingTop()I

    move-result v2

    .line 369
    .local v2, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingBottom()I

    move-result v3

    .line 370
    .local v3, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingLeft()I

    move-result v4

    .line 371
    .local v4, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingRight()I

    move-result v5

    .line 373
    .local v5, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/launcher3/R$dimen;->pending_widget_min_padding:I

    .line 374
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 376
    .local v6, "minPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    sub-int/2addr v7, v5

    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v7, v8

    .line 377
    .local v7, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    sub-int/2addr v8, v3

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    .line 379
    .local v8, "availableHeight":I
    iget v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    const/4 v15, 0x0

    if-nez v9, :cond_0

    move v9, v10

    goto :goto_0

    .line 380
    :cond_0
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    :goto_0
    nop

    .line 383
    .local v9, "iconSize":F
    iget v11, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDragFlags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_1

    goto :goto_1

    .line 384
    :cond_1
    const v10, 0x3fe66666    # 1.8f

    :goto_1
    move/from16 v17, v10

    .line 386
    .local v17, "settingIconScaleFactor":F
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 387
    .local v14, "maxSize":I
    mul-float v10, v9, v17

    int-to-float v11, v14

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 389
    int-to-float v10, v14

    div-float v9, v10, v17

    move v13, v9

    goto :goto_2

    .line 387
    :cond_2
    move v13, v9

    .line 392
    .end local v9    # "iconSize":F
    .local v13, "iconSize":F
    :goto_2
    iget v9, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v9, v9

    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v12, v9

    .line 395
    .local v12, "actualIconSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getHeight()I

    move-result v9

    sub-int/2addr v9, v12

    div-int/lit8 v18, v9, 0x2

    .line 396
    .local v18, "iconTop":I
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 398
    if-lez v7, :cond_4

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    iget v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_4

    .line 401
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mLabel:Ljava/lang/CharSequence;

    iget-object v11, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v23, v9

    move-object v9, v10

    move-object/from16 v24, v10

    move-object/from16 v10, v23

    move/from16 v25, v12

    .end local v12    # "actualIconSize":I
    .local v25, "actualIconSize":I
    move v12, v7

    move/from16 v23, v13

    .end local v13    # "iconSize":F
    .local v23, "iconSize":F
    move-object/from16 v13, v19

    move/from16 v19, v14

    .end local v14    # "maxSize":I
    .local v19, "maxSize":I
    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v16, v22

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v9, v24

    iput-object v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 403
    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    .line 406
    .local v9, "textHeight":I
    int-to-float v10, v9

    move/from16 v11, v25

    .end local v25    # "actualIconSize":I
    .local v11, "actualIconSize":I
    int-to-float v12, v11

    mul-float v12, v12, v17

    add-float/2addr v10, v12

    iget v12, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    int-to-float v12, v12

    add-float/2addr v10, v12

    .line 409
    .local v10, "minHeightWithText":F
    int-to-float v12, v8

    cmpg-float v12, v10, v12

    if-gez v12, :cond_3

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v9

    iget v13, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v11

    div-int/lit8 v18, v12, 0x2

    move/from16 v9, v18

    goto :goto_4

    .line 416
    :cond_3
    const/4 v12, 0x0

    iput-object v12, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    goto :goto_3

    .line 398
    .end local v9    # "textHeight":I
    .end local v10    # "minHeightWithText":F
    .end local v11    # "actualIconSize":I
    .end local v19    # "maxSize":I
    .end local v23    # "iconSize":F
    .restart local v12    # "actualIconSize":I
    .restart local v13    # "iconSize":F
    .restart local v14    # "maxSize":I
    :cond_4
    move v11, v12

    move/from16 v23, v13

    move/from16 v19, v14

    .line 420
    .end local v12    # "actualIconSize":I
    .end local v13    # "iconSize":F
    .end local v14    # "maxSize":I
    .restart local v11    # "actualIconSize":I
    .restart local v19    # "maxSize":I
    .restart local v23    # "iconSize":F
    :goto_3
    move/from16 v9, v18

    .end local v18    # "iconTop":I
    .local v9, "iconTop":I
    :goto_4
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v12, v11, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 421
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getWidth()I

    move-result v12

    sub-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v12, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 422
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 424
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_5

    .line 425
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v12, v4, v6

    iput v12, v10, Landroid/graphics/Rect;->left:I

    .line 426
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v12, v10, Landroid/graphics/Rect;->left:I

    int-to-float v13, v11

    const v14, 0x3ecccccd    # 0.4f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    iput v12, v10, Landroid/graphics/Rect;->right:I

    .line 427
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v12, v2, v6

    iput v12, v10, Landroid/graphics/Rect;->top:I

    .line 428
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v12, v10, Landroid/graphics/Rect;->top:I

    int-to-float v13, v11

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 429
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 432
    :cond_5
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v10, :cond_6

    .line 434
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v12, v4, v6

    iput v12, v10, Landroid/graphics/Rect;->left:I

    .line 435
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget v13, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v12, v13

    iput v12, v10, Landroid/graphics/Rect;->top:I

    .line 437
    :cond_6
    return-void
.end method

.method private updateSettingColor(I)V
    .locals 4
    .param p1, "dominantColor"    # I

    .line 324
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 325
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 326
    const/4 v1, 0x1

    aget v2, v0, v1

    const v3, 0x3f333333    # 0.7f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    .line 327
    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 328
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 329
    return-void
.end method


# virtual methods
.method public applyState()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 340
    :cond_0
    return-void
.end method

.method public getAppWidgetId()I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mAppwidget:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/launcher3/R$layout;->appwidget_not_ready:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, "defaultView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    .line 257
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->invalidate()V

    .line 258
    return-object v0
.end method

.method public isDeferredWidget()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mIsDeferredWidget:Z

    return v0
.end method

.method public isReadyForClickSetup()Z
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 362
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 363
    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 361
    :goto_0
    return v1
.end method

.method public isReinflateIfNeeded()Z
    .locals 2

    .line 267
    iget v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mStartState:I

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 195
    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onAttachedToWindow()V

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mAppwidget:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 198
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mOnDetachCleanup:Lcom/android/launcher3/util/SafeCloseable;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mAppwidget:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    new-instance v3, Lcom/android/launcher3/widget/PendingAppWidgetHostView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/widget/PendingAppWidgetHostView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->addOnUpdateListener(ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Ljava/lang/Runnable;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mOnDetachCleanup:Lcom/android/launcher3/util/SafeCloseable;

    .line 207
    invoke-direct {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->checkIfRestored()V

    .line 209
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 346
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 349
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 213
    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onDetachedFromWindow()V

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mOnDetachCleanup:Lcom/android/launcher3/util/SafeCloseable;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mOnDetachCleanup:Lcom/android/launcher3/util/SafeCloseable;

    .line 218
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 441
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPreviewPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 444
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 448
    return-void

    .line 451
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v0, :cond_2

    .line 452
    invoke-direct {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->updateDrawableBounds()V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 457
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 458
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    .line 461
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 462
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 463
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 464
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 467
    :cond_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onSizeChanged(IIII)V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 274
    return-void
.end method

.method public reInflate()V
    .locals 4

    .line 224
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 228
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    if-nez v0, :cond_1

    .line 230
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    instance-of v2, v1, Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/android/launcher3/Launcher;

    .line 235
    .local v1, "launcher":Lcom/android/launcher3/Launcher;
    const/4 v2, 0x0

    const-string v3, "widget removed because of configuration change"

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    .line 237
    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->bindAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    .line 239
    .end local v1    # "launcher":Lcom/android/launcher3/Launcher;
    :cond_2
    return-void
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 280
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDragFlags:I

    .line 283
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 284
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDragFlags:I

    .line 286
    invoke-direct {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getWidgetCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    .local v0, "widgetCategoryIcon":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 292
    if-nez v0, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v2

    .line 294
    .local v2, "disabledIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    invoke-virtual {v2, v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 295
    iput-object v2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 296
    .end local v2    # "disabledIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    goto :goto_0

    .line 297
    :cond_1
    invoke-static {}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 298
    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 300
    :goto_0
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 302
    if-nez v0, :cond_3

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 304
    :cond_3
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 305
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$drawable;->ic_setting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 306
    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->updateSettingColor(I)V

    .line 308
    iget v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDragFlags:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDragFlags:I

    goto :goto_3

    .line 310
    :cond_4
    if-nez v0, :cond_5

    .line 311
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->newPendingIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v2

    goto :goto_2

    .line 312
    :cond_5
    move-object v2, v0

    :goto_2
    iput-object v2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 313
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    .line 316
    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 317
    iput-boolean v3, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 319
    .end local v0    # "widgetCategoryIcon":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->invalidate()V

    .line 320
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 263
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 264
    return-void
.end method

.method public setPreviewBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "previewBitmap"    # Landroid/graphics/Bitmap;

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->invalidate()V

    .line 142
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 179
    invoke-direct {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->checkIfRestored()V

    .line 180
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I

    .line 245
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/SizeF;>;"
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
