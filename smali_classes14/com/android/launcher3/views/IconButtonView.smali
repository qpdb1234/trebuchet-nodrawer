.class public Lcom/android/launcher3/views/IconButtonView;
.super Lcom/android/launcher3/BubbleTextView;
.source "IconButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/IconButtonView$IconDrawable;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final INDEX_TASKBAR_ALL_APPS_ICON:I = 0x6

.field private static final MY_COUNT:I = 0x7


# instance fields
.field private final mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const v0, 0x1010002

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/views/IconButtonView;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/IconButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/IconButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Lcom/android/launcher3/util/MultiTranslateDelegate;

    const/4 v1, 0x7

    const/4 v2, 0x6

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/util/MultiTranslateDelegate;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/android/launcher3/views/IconButtonView;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    .line 67
    sget-object v0, Lcom/android/launcher3/views/IconButtonView;->ATTRS:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 69
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher3/views/IconButtonView;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 72
    .local v3, "tintList":Landroid/content/res/ColorStateList;
    if-nez v3, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 74
    .local v4, "tint":I
    :goto_0
    if-nez v2, :cond_1

    .line 75
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v2, v5

    .line 77
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v1

    .line 78
    .local v1, "factory":Lcom/android/launcher3/icons/BaseIconFactory;
    :try_start_0
    new-instance v5, Lcom/android/launcher3/views/IconButtonView$IconDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->getWhiteShadowLayer()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6, v4, v2}, Lcom/android/launcher3/views/IconButtonView$IconDrawable;-><init>(Landroid/graphics/Bitmap;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher3/views/IconButtonView;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    .line 80
    .end local v1    # "factory":Lcom/android/launcher3/icons/BaseIconFactory;
    :cond_2
    return-void

    .line 77
    .restart local v1    # "factory":Lcom/android/launcher3/icons/BaseIconFactory;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v5
.end method


# virtual methods
.method public getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/views/IconButtonView;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    return-object v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 84
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/views/IconButtonView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public setForegroundTint(I)V
    .locals 2
    .param p1, "tintColor"    # I

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/views/IconButtonView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    .line 100
    .local v0, "icon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    instance-of v1, v0, Lcom/android/launcher3/views/IconButtonView$IconDrawable;

    if-eqz v1, :cond_0

    .line 101
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/views/IconButtonView$IconDrawable;

    invoke-static {v1}, Lcom/android/launcher3/views/IconButtonView$IconDrawable;->-$$Nest$fgetmFg(Lcom/android/launcher3/views/IconButtonView$IconDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher3/views/IconButtonView;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 91
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 92
    .local v1, "tint":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/IconButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v2

    .line 93
    .local v2, "factory":Lcom/android/launcher3/icons/BaseIconFactory;
    :try_start_0
    new-instance v3, Lcom/android/launcher3/views/IconButtonView$IconDrawable;

    invoke-virtual {v2}, Lcom/android/launcher3/icons/BaseIconFactory;->getWhiteShadowLayer()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4, v1, p1}, Lcom/android/launcher3/views/IconButtonView$IconDrawable;-><init>(Landroid/graphics/Bitmap;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/views/IconButtonView;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    .line 95
    .end local v2    # "factory":Lcom/android/launcher3/icons/BaseIconFactory;
    :cond_1
    return-void

    .line 92
    .restart local v2    # "factory":Lcom/android/launcher3/icons/BaseIconFactory;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v3
.end method

.method public setTranslationXForTaskbarAllAppsIcon(F)V
    .locals 2
    .param p1, "translationX"    # F

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/views/IconButtonView;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 115
    return-void
.end method
