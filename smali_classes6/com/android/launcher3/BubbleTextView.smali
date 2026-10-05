.class public Lcom/android/launcher3/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"

# interfaces
.implements Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;
.implements Lcom/android/launcher3/views/IconLabelDotView;
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Lcom/android/launcher3/Reorderable;


# static fields
.field public static final DISPLAY_ALL_APPS:I = 0x1

.field private static final DISPLAY_FOLDER:I = 0x2

.field public static final DISPLAY_PREDICTION_ROW:I = 0x8

.field public static final DISPLAY_SEARCH_RESULT:I = 0x6

.field public static final DISPLAY_SEARCH_RESULT_APP_ROW:I = 0x9

.field public static final DISPLAY_SEARCH_RESULT_SMALL:I = 0x7

.field protected static final DISPLAY_TASKBAR:I = 0x5

.field private static final DISPLAY_WORKSPACE:I = 0x0

.field private static final DOT_SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/BubbleTextView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final MATCHER:Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

.field private static final MAX_SEARCH_LOOP_COUNT:I = 0x14

.field private static final MIN_LETTER_SPACING:F = -0.05f

.field private static final NEW_LINE:Ljava/lang/Character;

.field private static final STATE_PRESSED:[I

.field public static final TEXT_ALPHA_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/BubbleTextView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mBreakPointsIntArray:Lcom/android/launcher3/util/IntArray;

.field private mCenterVertically:Z

.field private mCjkShift:F

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private mDisableRelayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mDisplay:I

.field private mDotInfo:Lcom/android/launcher3/dot/DotInfo;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        deepExport = true
    .end annotation
.end field

.field private mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

.field private mDotScaleAnim:Landroid/animation/Animator;

.field private mEnableIconUpdateAnimation:Z

.field private mForceHideDot:Z

.field private mHideBadge:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

.field private mIconLoadRequest:Lcom/android/launcher3/util/CancellableTask;

.field private final mIconSize:I

.field private mIgnorePressedStateChange:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mIsIconVisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mIsRtl:Z

.field private mLastModifiedText:Ljava/lang/CharSequence;

.field private mLastOriginalText:Ljava/lang/CharSequence;

.field private mLayoutHorizontal:Z

.field private final mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private mScaleForReorderBounce:F

.field private mShouldShowLabel:Z

.field private mSkipUserBadge:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mStayPressed:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mTextAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mTextColorStateList:Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mThemeAllAppsIcons:Z

.field private final mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;


# direct methods
.method public static synthetic $r8$lambda$05zZ1boQjYYFYxQMlmCLFrGghWw(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->lambda$updateProgressBarUi$0(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmTextAlpha(Lcom/android/launcher3/BubbleTextView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDotScaleAnim(Lcom/android/launcher3/BubbleTextView;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTextAlpha(Lcom/android/launcher3/BubbleTextView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 114
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->NEW_LINE:Ljava/lang/Character;

    .line 117
    invoke-static {}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->getInstance()Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->MATCHER:Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    .line 119
    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    .line 127
    new-instance v0, Lcom/android/launcher3/BubbleTextView$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "dotScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BubbleTextView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    .line 141
    new-instance v0, Lcom/android/launcher3/BubbleTextView$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "textAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BubbleTextView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mScaleForReorderBounce:F

    .line 154
    new-instance v1, Lcom/android/launcher3/util/MultiTranslateDelegate;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/MultiTranslateDelegate;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mHideBadge:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mSkipUserBadge:Z

    .line 172
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    .line 178
    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    .line 194
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    .line 214
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    iput-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 215
    invoke-static {}, Lcom/android/launcher3/Flags;->enableCursorHoverStates()Z

    move-result v4

    invoke-static {v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setFlagHoverEnabled(Z)V

    .line 217
    sget-object v4, Lcom/android/launcher3/R$styleable;->BubbleTextView:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 219
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/android/launcher3/R$styleable;->BubbleTextView_layoutHorizontal:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iput-boolean v5, p0, Lcom/android/launcher3/BubbleTextView;->mIsRtl:Z

    .line 222
    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 223
    sget v5, Lcom/android/launcher3/R$styleable;->BubbleTextView_centerVertically:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 227
    .local v5, "prefs":Landroid/content/SharedPreferences;
    sget v6, Lcom/android/launcher3/R$styleable;->BubbleTextView_iconDisplay:I

    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    .line 229
    const-string v7, "pref_desktop_show_labels"

    if-nez v6, :cond_1

    .line 230
    iget-object v6, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v6, v6

    invoke-virtual {p0, v1, v6}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 231
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 232
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 233
    .local v1, "defaultIconSize":I
    iget-object v6, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v6, v6, Lcom/android/launcher3/DeviceProfile;->iconCenterVertically:Z

    invoke-virtual {p0, v6}, Lcom/android/launcher3/BubbleTextView;->setCenterVertically(Z)V

    .line 234
    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mShouldShowLabel:Z

    goto/16 :goto_2

    .line 235
    .end local v1    # "defaultIconSize":I
    :cond_1
    if-eq v6, v2, :cond_7

    const/16 v8, 0x8

    if-eq v6, v8, :cond_7

    const/16 v8, 0x9

    if-ne v6, v8, :cond_2

    goto :goto_1

    .line 242
    :cond_2
    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 243
    iget-object v6, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v6, v6

    invoke-virtual {p0, v1, v6}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 244
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 245
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    .line 246
    .restart local v1    # "defaultIconSize":I
    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mShouldShowLabel:Z

    goto :goto_2

    .line 247
    .end local v1    # "defaultIconSize":I
    :cond_3
    const/4 v8, 0x6

    if-ne v6, v8, :cond_4

    .line 248
    iget-object v6, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-virtual {p0, v1, v6}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/launcher3/R$dimen;->search_row_icon_size:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 250
    .restart local v1    # "defaultIconSize":I
    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mShouldShowLabel:Z

    goto :goto_2

    .line 251
    .end local v1    # "defaultIconSize":I
    :cond_4
    const/4 v1, 0x7

    if-ne v6, v1, :cond_5

    .line 252
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/launcher3/R$dimen;->search_row_small_icon_size:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 254
    .restart local v1    # "defaultIconSize":I
    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mShouldShowLabel:Z

    goto :goto_2

    .line 255
    .end local v1    # "defaultIconSize":I
    :cond_5
    const/4 v1, 0x5

    if-ne v6, v1, :cond_6

    .line 256
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .restart local v1    # "defaultIconSize":I
    goto :goto_2

    .line 259
    .end local v1    # "defaultIconSize":I
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 260
    .restart local v1    # "defaultIconSize":I
    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mShouldShowLabel:Z

    goto :goto_2

    .line 237
    .end local v1    # "defaultIconSize":I
    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-virtual {p0, v1, v6}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 238
    iget-object v6, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 239
    iget-object v6, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 240
    .local v6, "defaultIconSize":I
    const-string v7, "pref_drawer_show_labels"

    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mShouldShowLabel:Z

    .line 241
    const-string v2, "pref_allapps_themed_icons"

    invoke-interface {v5, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mThemeAllAppsIcons:Z

    move v1, v6

    .line 264
    .end local v6    # "defaultIconSize":I
    .restart local v1    # "defaultIconSize":I
    :goto_2
    sget v2, Lcom/android/launcher3/R$styleable;->BubbleTextView_iconSizeOverride:I

    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    .line 266
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 268
    new-instance v2, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v2, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 270
    new-instance v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {v2}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mCurrentLocale:Ljava/util/Locale;

    .line 273
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 274
    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 275
    invoke-direct {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    .line 276
    return-void
.end method

.method private cancelDotScaleAnim()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 323
    :cond_0
    return-void
.end method

.method private checkForEllipsis()V
    .locals 5

    .line 583
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 584
    .local v0, "width":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 585
    return-void

    .line 587
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setLetterSpacing(F)V

    .line 589
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 591
    .local v3, "paint":Landroid/text/TextPaint;
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v4, v0

    if-gez v4, :cond_1

    .line 592
    return-void

    .line 595
    :cond_1
    const v4, -0x42b33333    # -0.05f

    invoke-direct {p0, v3, v2, v0, v4}, Lcom/android/launcher3/BubbleTextView;->findBestSpacingValue(Landroid/text/TextPaint;Ljava/lang/String;FF)F

    move-result v4

    .line 597
    .local v4, "spacing":F
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 598
    invoke-virtual {p0, v4}, Lcom/android/launcher3/BubbleTextView;->setLetterSpacing(F)V

    .line 599
    return-void
.end method

.method private findBestSpacingValue(Landroid/text/TextPaint;Ljava/lang/String;FF)F
    .locals 5
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "allowedWidthPx"    # F
    .param p4, "minSpacingEm"    # F

    .line 613
    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 614
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, p3

    if-lez v0, :cond_0

    .line 616
    return p4

    .line 619
    :cond_0
    const/4 v0, 0x0

    .line 620
    .local v0, "lowLimit":F
    move v1, p4

    .line 622
    .local v1, "highLimit":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    .line 623
    add-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 624
    .local v3, "value":F
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 625
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v4, p3

    if-gez v4, :cond_1

    .line 626
    move v1, v3

    goto :goto_1

    .line 628
    :cond_1
    move v0, v3

    .line 622
    .end local v3    # "value":F
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private getAppLabelPluralString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "notificationCount"    # I

    .line 1234
    new-instance v0, Landroid/icu/text/MessageFormat;

    .line 1235
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->dotted_app_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1237
    .local v0, "icuCountFormat":Landroid/icu/text/MessageFormat;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1238
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "app_name"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    const-string v2, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getIconOrTransparentColor()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1077
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method private getModifiedColor()I
    .locals 3

    .line 815
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 817
    const/4 v0, 0x0

    return v0

    .line 819
    :cond_0
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    return v0
.end method

.method private static isCjkChar(C)Z
    .locals 1
    .param p0, "c"    # C

    const/16 v0, 0x2e80

    if-lt p0, v0, :cond_0

    const/16 v0, -0x6001

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, -0x700

    if-lt p0, v0, :cond_1

    const/16 v0, -0x501

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, -0x100

    if-lt p0, v0, :cond_3

    const/16 v0, -0xa0

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$prepareDrawDragView$1()V
    .locals 0

    .line 1216
    return-void
.end method

.method private synthetic lambda$updateProgressBarUi$0(Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    .locals 0
    .param p1, "originalIcon"    # Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 933
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    return-void
.end method

.method public static modifyTitleToSupportMultiLine(IILjava/lang/CharSequence;Landroid/text/TextPaint;Lcom/android/launcher3/util/IntArray;FF)Ljava/lang/CharSequence;
    .locals 22
    .param p0, "limitedWidth"    # I
    .param p1, "limitedHeight"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "breakPoints"    # Lcom/android/launcher3/util/IntArray;
    .param p5, "spacingMultiplier"    # F
    .param p6, "spacingExtra"    # F

    .line 852
    move/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    if-eqz v9, :cond_a

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v10, v9, v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    int-to-float v2, v8

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    move/from16 v2, p1

    goto/16 :goto_6

    .line 855
    :cond_0
    const/4 v0, 0x0

    .line 857
    .local v0, "runningWidth":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v2

    .line 858
    .local v12, "newString":Ljava/lang/StringBuilder;
    const v2, -0x42b33333    # -0.05f

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 859
    const/4 v2, 0x0

    .line 860
    .local v2, "stringPtr":I
    const/4 v3, 0x0

    move v13, v2

    move v14, v3

    .end local v2    # "stringPtr":I
    .local v13, "stringPtr":I
    .local v14, "i":I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ge v14, v2, :cond_9

    .line 861
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    if-ge v14, v2, :cond_1

    .line 862
    invoke-virtual {v11, v14}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-interface {v9, v13, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v15, v2

    .local v2, "currentWord":Ljava/lang/CharSequence;
    goto :goto_1

    .line 865
    .end local v2    # "currentWord":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v9, v13, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v15, v2

    .line 867
    .local v15, "currentWord":Ljava/lang/CharSequence;
    :goto_1
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v10, v15, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v16

    .line 868
    .local v16, "currentWordWidth":F
    add-float v17, v0, v16

    .line 869
    .end local v0    # "runningWidth":F
    .local v17, "runningWidth":F
    int-to-float v0, v8

    cmpg-float v0, v17, v0

    if-gtz v0, :cond_3

    .line 870
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    if-lt v14, v0, :cond_2

    .line 897
    move/from16 v2, p1

    move/from16 v0, v17

    goto/16 :goto_5

    .line 899
    :cond_2
    invoke-virtual {v11, v14}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    add-int/lit8 v13, v0, 0x1

    .line 860
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v17

    goto :goto_0

    .line 872
    :cond_3
    if-eqz v14, :cond_7

    .line 876
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v9, v13, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 877
    .local v0, "lastCharacters":Ljava/lang/CharSequence;
    nop

    .line 878
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result v7

    .line 879
    .local v7, "beginningLetterType":I
    const/16 v1, 0xc

    if-eq v7, v1, :cond_5

    const/16 v1, 0xd

    if-ne v7, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v0

    goto :goto_4

    .line 881
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v3, :cond_6

    .line 882
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3

    .line 883
    :cond_6
    const-string v1, ""

    :goto_3
    move-object v0, v1

    move-object v6, v0

    .line 885
    .end local v0    # "lastCharacters":Ljava/lang/CharSequence;
    .local v6, "lastCharacters":Ljava/lang/CharSequence;
    :goto_4
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->NEW_LINE:Ljava/lang/Character;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 886
    new-instance v18, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v12

    move-object/from16 v2, p3

    move/from16 v3, p0

    move/from16 v5, p5

    move-object/from16 v20, v6

    .end local v6    # "lastCharacters":Ljava/lang/CharSequence;
    .local v20, "lastCharacters":Ljava/lang/CharSequence;
    move/from16 v6, p6

    move/from16 v21, v7

    .end local v7    # "beginningLetterType":I
    .local v21, "beginningLetterType":I
    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 888
    .local v0, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    move/from16 v2, p1

    if-ge v1, v2, :cond_8

    .line 889
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 872
    .end local v0    # "staticLayout":Landroid/text/StaticLayout;
    .end local v20    # "lastCharacters":Ljava/lang/CharSequence;
    .end local v21    # "beginningLetterType":I
    :cond_7
    move/from16 v2, p1

    .line 893
    :cond_8
    return-object v9

    .line 860
    .end local v15    # "currentWord":Ljava/lang/CharSequence;
    .end local v16    # "currentWordWidth":F
    .end local v17    # "runningWidth":F
    .local v0, "runningWidth":F
    :cond_9
    move/from16 v2, p1

    .line 901
    .end local v14    # "i":I
    :goto_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 852
    .end local v0    # "runningWidth":F
    .end local v12    # "newString":Ljava/lang/StringBuilder;
    .end local v13    # "stringPtr":I
    :cond_a
    move/from16 v2, p1

    .line 853
    :goto_6
    return-object v9
.end method

.method private resetIconScale()V
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->resetScale()V

    .line 1223
    :cond_0
    return-void
.end method

.method private setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p2, "progressLevel"    # I

    .line 1034
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->app_archived_title:I

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1036
    :cond_0
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_2

    .line 1038
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-double v1, p2

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v1, v3

    .line 1039
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "percentageString":Ljava/lang/String;
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->app_installing_title:I

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    .line 1042
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1044
    :cond_1
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_2

    .line 1046
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->app_downloading_title:I

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    .line 1047
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1046
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1051
    .end local v0    # "percentageString":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private setTextAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 806
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    .line 807
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 810
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getModifiedColor()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 812
    :goto_0
    return-void
.end method

.method private updateCjkShift()V
    .locals 8

    const/4 v0, 0x0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mCjkShift:F

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/launcher3/BubbleTextView;->isCjkChar(C)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/16 v4, 0x400

    const/4 v7, 0x0

    invoke-static {v0, v7, v1, v2, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v5

    const-string v3, "Ag"

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {v3, v0, v1, v2, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v7

    invoke-virtual {v6, v0}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v1

    sub-int v7, v7, v1

    int-to-float v7, v7

    iput v7, p0, Lcom/android/launcher3/BubbleTextView;->mCjkShift:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "newIcon"    # Landroid/graphics/drawable/Drawable;

    .line 1226
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1229
    :cond_0
    invoke-virtual {p0, v1, p1, v1, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1231
    :goto_0
    return-void
.end method

.method private updateProgressBarUi(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V
    .locals 3
    .param p1, "oldIcon"    # Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 930
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 931
    .local v0, "originalIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v1

    .line 932
    .local v1, "preloadDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 933
    new-instance v2, Lcom/android/launcher3/BubbleTextView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/BubbleTextView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->maybePerformFinishedAnimation(Lcom/android/launcher3/graphics/PreloadIconDrawable;Ljava/lang/Runnable;)V

    .line 935
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs animateDotScale([F)V
    .locals 2
    .param p1, "dotScales"    # [F

    .line 326
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->cancelDotScaleAnim()V

    .line 327
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    .line 328
    new-instance v1, Lcom/android/launcher3/BubbleTextView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/BubbleTextView$3;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 335
    return-void
.end method

.method protected applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1092
    if-nez p1, :cond_0

    .line 1094
    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 1101
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1103
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->updateIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_2

    instance-of v0, v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    if-eqz v0, :cond_2

    .line 1108
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->iconUpdateAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    check-cast v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->animateIconUpdate(Landroid/graphics/drawable/Drawable;)V

    .line 1112
    :cond_2
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 1113
    return-void
.end method

.method public applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 6
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "animate"    # Z

    .line 998
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    instance-of v0, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_9

    .line 999
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1000
    .local v0, "wasDotted":Z
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    .line 1001
    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 1002
    .local v3, "isDotted":Z
    :goto_1
    if-eqz v3, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 1003
    .local v4, "newDotScale":F
    :goto_2
    iget v5, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    if-ne v5, v2, :cond_3

    .line 1004
    iget-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v5}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/DeviceProfile;->mDotRendererAllApps:Lcom/android/launcher3/icons/DotRenderer;

    iput-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    goto :goto_3

    .line 1006
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v5}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    iput-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    .line 1008
    :goto_3
    if-nez v0, :cond_4

    if-eqz v3, :cond_6

    .line 1010
    :cond_4
    if-eqz p2, :cond_5

    xor-int v5, v0, v3

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1011
    new-array v2, v2, [F

    aput v4, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->animateDotScale([F)V

    goto :goto_4

    .line 1013
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->cancelDotScaleAnim()V

    .line 1014
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iput v4, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    .line 1015
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    .line 1018
    :cond_6
    :goto_4
    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1019
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1020
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->disabled_app_label:I

    iget-object v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1022
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1023
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v1

    .line 1024
    .local v1, "count":I
    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 1025
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/BubbleTextView;->getAppLabelPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1024
    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1026
    .end local v1    # "count":I
    goto :goto_5

    .line 1027
    :cond_8
    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1031
    .end local v0    # "wasDotted":Z
    .end local v3    # "isDotted":Z
    .end local v4    # "newDotScale":F
    :cond_9
    :goto_5
    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 392
    iget v0, p1, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 395
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 396
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getProgressLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    .line 397
    return-void
.end method

.method public applyFromItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 411
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    .line 412
    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V

    .line 340
    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/graphics/PreloadIconDrawable;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "icon"    # Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 376
    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->applyLoadingState(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 378
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getProgressLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    .line 379
    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "animate"    # Z
    .param p3, "staggerIndex"    # I

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    .line 345
    return-void
.end method

.method public applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 421
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->shouldUseTheme()Z

    move-result v0

    .line 423
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mHideBadge:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 424
    :cond_0
    or-int/lit8 v0, v0, 0x2

    .line 426
    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mSkipUserBadge:Z

    if-eqz v1, :cond_2

    .line 427
    or-int/lit8 v0, v0, 0x4

    .line 429
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    .line 430
    .local v1, "iconDrawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getIconColor()I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->appColor:I

    .line 431
    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$attr;->notificationDotColor:I

    invoke-static {v3, v4}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    .line 432
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 434
    return-void
.end method

.method public applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 459
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mShouldShowLabel:Z

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    .line 461
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 462
    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLastOriginalText:Ljava/lang/CharSequence;

    .line 463
    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLastModifiedText:Ljava/lang/CharSequence;

    .line 464
    sget-object v1, Lcom/android/launcher3/BubbleTextView;->MATCHER:Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/search/StringMatcherUtility;->getListOfBreakpoints(Ljava/lang/CharSequence;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mBreakPointsIntArray:Lcom/android/launcher3/util/IntArray;

    .line 465
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->disabled_app_label:I

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 469
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 473
    :cond_2
    return-void
.end method

.method public applyLoadingState(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V
    .locals 3
    .param p1, "icon"    # Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 918
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_2

    .line 919
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 920
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_0

    .line 921
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    .line 924
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getProgressLevel()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/launcher3/BubbleTextView;->updateProgressBarUi(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    .line 927
    .end local v0    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_2
    return-void
.end method

.method public applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .locals 6

    .line 940
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 941
    return-object v1

    .line 944
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 945
    .local v0, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v2

    .line 946
    .local v2, "progressLevel":I
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 947
    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 948
    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const-string v3, ""

    .line 947
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 949
    :cond_2
    if-lez v2, :cond_3

    .line 950
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    goto :goto_1

    .line 952
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->app_waiting_download_title:I

    iget-object v5, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 953
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 952
    invoke-virtual {p0, v3}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 955
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v3, :cond_5

    .line 957
    instance-of v1, v3, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v1, :cond_4

    .line 958
    move-object v1, v3

    check-cast v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 959
    .local v1, "preloadIconDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    invoke-virtual {v1, v2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    .line 960
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->isIconDisabled(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    goto :goto_2

    .line 962
    .end local v1    # "preloadIconDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->makePreloadIcon()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v1

    .line 963
    .restart local v1    # "preloadIconDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    .line 965
    :goto_2
    return-object v1

    .line 967
    .end local v1    # "preloadIconDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    :cond_5
    return-object v1
.end method

.method public canShowLongPressPopup()Z
    .locals 1

    .line 1255
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancelLongPress()V
    .locals 1

    .line 906
    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 907
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 908
    return-void
.end method

.method public clearPressedBackground()V
    .locals 1

    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setPressed(Z)V

    .line 555
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 556
    return-void
.end method

.method public createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "fadeIn"    # Z

    .line 828
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 829
    .local v0, "toAlpha":F
    :goto_0
    sget-object v1, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method protected drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 653
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    .line 655
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    .line 656
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v1

    .line 655
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    .line 658
    .local v0, "scrollX":I
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v1

    .line 659
    .local v1, "scrollY":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 660
    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    .line 661
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 663
    .end local v0    # "scrollX":I
    .end local v1    # "scrollY":I
    :cond_1
    return-void
.end method

.method protected drawWithoutDot(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 638
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 639
    return-void
.end method

.method public getForceHideDot()Z
    .locals 1

    .line 681
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    return v0
.end method

.method public getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    return-object v0
.end method

.method public getIconBounds(ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "iconSize"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 699
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 700
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 702
    .local v0, "top":I
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mIsRtl:Z

    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 707
    .end local v0    # "top":I
    :goto_0
    goto :goto_1

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 710
    :goto_1
    return-void
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 692
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(ILandroid/graphics/Rect;)V

    .line 693
    return-void
.end method

.method public getIconDisplay()I
    .locals 1

    .line 1177
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    .line 1167
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    return v0
.end method

.method public getReorderBounceScale()F
    .locals 1

    .line 1194
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mScaleForReorderBounce:F

    return v0
.end method

.method public getSourceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1208
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(ILandroid/graphics/Rect;)V

    .line 1209
    return-void
.end method

.method public getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1199
    const/4 v0, 0x0

    return v0
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1204
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(ILandroid/graphics/Rect;)V

    .line 1205
    return-void
.end method

.method public hasDot()Z
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected iconUpdateAnimationEnabled()Z
    .locals 1

    .line 1088
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    return v0
.end method

.method protected isCurrentLanguageEnglish()Z
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mCurrentLocale:Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDisplaySearchResult()Z
    .locals 2

    .line 1171
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

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

.method public isIconDisabled(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 994
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isPendingDownload()Z

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

.method public makePreloadIcon()Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .locals 4

    .line 976
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-nez v0, :cond_0

    .line 977
    const/4 v0, 0x0

    return-object v0

    .line 980
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 981
    .local v0, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v1

    .line 982
    .local v1, "progressLevel":I
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->newPendingIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v2

    .line 984
    .local v2, "preloadDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    invoke-virtual {v2, v1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    .line 985
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->isIconDisabled(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    .line 986
    return-object v2
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 497
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 498
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    if-eqz v1, :cond_0

    .line 499
    sget-object v1, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    invoke-static {v0, v1}, Lcom/android/launcher3/BubbleTextView;->mergeDrawableStates([I[I)[I

    .line 501
    :cond_0
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mCjkShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->drawDotIfNecessary(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 281
    if-eqz p1, :cond_0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 282
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 283
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 564
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 565
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 566
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    .line 567
    return v0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 733
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 734
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 736
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawablePadding()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    .line 737
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    .line 738
    .local v3, "cellHeightPx":I
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v4

    sub-int v5, v0, v3

    div-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v6

    .line 739
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingBottom()I

    move-result v7

    .line 738
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/launcher3/BubbleTextView;->setPadding(IIII)V

    .line 742
    .end local v1    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v3    # "cellHeightPx":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->shouldUseTwoLine()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLastOriginalText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 743
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    sub-int/2addr v1, v3

    .line 746
    .local v1, "allowedVerticalSpace":I
    nop

    .line 747
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 748
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v4, v3, v4

    iget-object v6, p0, Lcom/android/launcher3/BubbleTextView;->mLastOriginalText:Ljava/lang/CharSequence;

    .line 751
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/BubbleTextView;->mBreakPointsIntArray:Lcom/android/launcher3/util/IntArray;

    .line 753
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getLineSpacingMultiplier()F

    move-result v9

    .line 754
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getLineSpacingExtra()F

    move-result v10

    .line 746
    move v5, v1

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/BubbleTextView;->modifyTitleToSupportMultiLine(IILjava/lang/CharSequence;Landroid/text/TextPaint;Lcom/android/launcher3/util/IntArray;FF)Ljava/lang/CharSequence;

    move-result-object v3

    .line 755
    .local v3, "modifiedString":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/launcher3/BubbleTextView;->mLastModifiedText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 756
    iput-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mLastModifiedText:Ljava/lang/CharSequence;

    .line 757
    invoke-virtual {p0, v3}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    sget-object v4, Lcom/android/launcher3/BubbleTextView;->NEW_LINE:Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 760
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/BubbleTextView;->setSingleLine(Z)V

    .line 761
    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setMaxLines(I)V

    goto :goto_0

    .line 763
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setSingleLine(Z)V

    .line 764
    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setMaxLines(I)V

    .line 768
    .end local v1    # "allowedVerticalSpace":I
    .end local v3    # "modifiedString":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 769
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 572
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 573
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->checkForEllipsis()V

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateCjkShift()V

    .line 574
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .line 578
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 579
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->checkForEllipsis()V

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateCjkShift()V

    .line 580
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/BubbleTextView;->shouldIgnoreTouchDown(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x0

    return v0

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 518
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 520
    const/4 v0, 0x1

    return v0

    .line 522
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 547
    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_0

    .line 549
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setVisible(ZZ)Z

    .line 551
    :cond_0
    return-void
.end method

.method public prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;
    .locals 1

    .line 1213
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->resetIconScale()V

    .line 1214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    .line 1215
    new-instance v0, Lcom/android/launcher3/BubbleTextView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/BubbleTextView$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 1127
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 1128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/util/CancellableTask;

    .line 1129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 1130
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    .line 1133
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1135
    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_0

    .line 1136
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_0

    .line 1137
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_1

    .line 1138
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 1139
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p1}, Lcom/android/launcher3/views/ActivityContext;->invalidateParent(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_0

    .line 1140
    :cond_1
    if-eqz p1, :cond_2

    .line 1141
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 1144
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 1145
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    .line 1147
    :cond_3
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .line 490
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    if-nez v0, :cond_0

    .line 491
    invoke-super {p0}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 493
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1117
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    if-nez v0, :cond_0

    .line 1118
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1120
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    .line 298
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    .line 299
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iput v2, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->appColor:I

    .line 300
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->cancelDotScaleAnim()V

    .line 301
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    .line 302
    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 306
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/util/CancellableTask;

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v1}, Lcom/android/launcher3/util/CancellableTask;->cancel()V

    .line 308
    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/util/CancellableTask;

    .line 311
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher3/BubbleTextView;->setPivotY(F)V

    .line 312
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setAlpha(F)V

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 314
    invoke-virtual {p0, v3}, Lcom/android/launcher3/BubbleTextView;->setTranslationY(F)V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setMaxLines(I)V

    .line 316
    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 317
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .line 362
    instance-of v0, p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 363
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 370
    :cond_0
    return-void
.end method

.method public setCenterVertically(Z)V
    .locals 0
    .param p1, "centerVertically"    # Z

    .line 728
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    .line 729
    return-void
.end method

.method public setDisplay(I)V
    .locals 0
    .param p1, "display"    # I

    .line 478
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    .line 479
    return-void
.end method

.method public setForceHideDot(Z)V
    .locals 1
    .param p1, "forceHideDot"    # Z

    .line 667
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    if-ne v0, p1, :cond_0

    .line 668
    return-void

    .line 670
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    .line 672
    if-eqz p1, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    goto :goto_0

    .line 674
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->animateDotScale([F)V

    .line 677
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

.method public setHideBadge(Z)V
    .locals 0
    .param p1, "hideBadge"    # Z

    .line 286
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mHideBadge:Z

    .line 287
    return-void
.end method

.method protected setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 1057
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 1060
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 1061
    if-eqz p1, :cond_2

    .line 1062
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWindowVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setVisible(ZZ)Z

    .line 1064
    :cond_2
    return-void
.end method

.method public setIconDisabled(Z)V
    .locals 1
    .param p1, "isDisabled"    # Z

    .line 1082
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 1085
    :cond_0
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1068
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    .line 1069
    if-nez p1, :cond_0

    .line 1070
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->resetIconScale()V

    .line 1072
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getIconOrTransparentColor()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1073
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    return-void
.end method

.method protected setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 0
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 416
    return-void
.end method

.method public setLayoutHorizontal(Z)V
    .locals 1
    .param p1, "layoutHorizontal"    # Z

    .line 716
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-ne v0, p1, :cond_0

    .line 717
    return-void

    .line 720
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    .line 721
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getIconOrTransparentColor()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 722
    return-void
.end method

.method public setLongPressTimeoutFactor(F)V
    .locals 1
    .param p1, "longPressTimeoutFactor"    # F

    .line 485
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->setLongPressTimeoutFactor(F)V

    .line 486
    return-void
.end method

.method public setReorderBounceScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 1187
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mScaleForReorderBounce:F

    .line 1188
    invoke-super {p0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1189
    invoke-super {p0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1190
    return-void
.end method

.method public setSkipUserBadge(Z)V
    .locals 0
    .param p1, "skipUserBadge"    # Z

    .line 290
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mSkipUserBadge:Z

    .line 291
    return-void
.end method

.method setStayPressed(Z)V
    .locals 0
    .param p1, "stayPressed"    # Z

    .line 541
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    .line 542
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    .line 543
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 773
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColorStateList:Landroid/content/res/ColorStateList;

    .line 775
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getModifiedColor()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 776
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 780
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 781
    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColorStateList:Landroid/content/res/ColorStateList;

    .line 782
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 783
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getModifiedColor()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 787
    :goto_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 802
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    .line 803
    return-void
.end method

.method public shouldAnimateIconChange(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 5
    .param p1, "newInfo"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 351
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    goto :goto_0

    .line 353
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 354
    .local v0, "oldInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 355
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 356
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 357
    .local v3, "changedIcons":Z
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method protected shouldIgnoreTouchDown(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 530
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 532
    return v2

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 534
    :cond_2
    return v2
.end method

.method public shouldShowLabel()Z
    .locals 1

    .line 790
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mShouldShowLabel:Z

    return v0
.end method

.method public shouldTextBeVisible()Z
    .locals 4

    .line 795
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 796
    .local v0, "tag":Ljava/lang/Object;
    :goto_0
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 797
    .local v1, "info":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_1
    if-eqz v1, :cond_3

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-eq v2, v3, :cond_2

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x67

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    return v2
.end method

.method protected shouldUseTheme()Z
    .locals 3

    .line 437
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mThemeAllAppsIcons:Z

    if-eqz v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 437
    :goto_0
    return v1
.end method

.method protected shouldUseTwoLine()Z
    .locals 3

    .line 447
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isCurrentLanguageEnglish()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 448
    :cond_0
    invoke-static {}, Lcom/android/launcher3/Flags;->enableTwolineToggle()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->ENABLE_TWOLINE_ALLAPPS_TOGGLE:Lcom/android/launcher3/ConstantItem;

    .line 449
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ConstantItem;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 447
    :goto_0
    return v1
.end method

.method public startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .locals 2

    .line 1247
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 1248
    .local v0, "popup":Lcom/android/launcher3/popup/PopupContainerWithArrow;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public verifyHighRes()V
    .locals 2

    .line 1153
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/util/CancellableTask;

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Lcom/android/launcher3/util/CancellableTask;->cancel()V

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/util/CancellableTask;

    .line 1157
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_1

    .line 1158
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 1159
    .local v0, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1160
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    .line 1161
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/icons/IconCache;->updateIconInBackground(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/util/CancellableTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/util/CancellableTask;

    .line 1164
    .end local v0    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_1
    return-void
.end method
