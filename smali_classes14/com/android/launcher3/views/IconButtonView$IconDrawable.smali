.class Lcom/android/launcher3/views/IconButtonView$IconDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source "IconButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/IconButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconDrawable"
.end annotation


# instance fields
.field private final mFg:Landroid/graphics/drawable/Drawable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFg(Lcom/android/launcher3/views/IconButtonView$IconDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/IconButtonView$IconDrawable;->mFg:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method constructor <init>(Landroid/graphics/Bitmap;ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "colorBg"    # I
    .param p3, "fg"    # Landroid/graphics/drawable/Drawable;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/views/IconButtonView$IconDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 125
    iput-object p3, p0, Lcom/android/launcher3/views/IconButtonView$IconDrawable;->mFg:Landroid/graphics/drawable/Drawable;

    .line 126
    return-void
.end method


# virtual methods
.method protected drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 130
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/views/IconButtonView$IconDrawable;->mFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 136
    invoke-super {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/views/IconButtonView$IconDrawable;->mFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 138
    return-void
.end method
