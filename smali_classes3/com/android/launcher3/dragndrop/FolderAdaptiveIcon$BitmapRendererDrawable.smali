.class Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FolderAdaptiveIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapRendererDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable$MyConstantState;
    }
.end annotation


# instance fields
.field private final mRenderer:Lcom/android/launcher3/icons/BitmapRenderer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/icons/BitmapRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/android/launcher3/icons/BitmapRenderer;

    .line 207
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;->mRenderer:Lcom/android/launcher3/icons/BitmapRenderer;

    .line 209
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;->mRenderer:Lcom/android/launcher3/icons/BitmapRenderer;

    invoke-interface {v0, p1}, Lcom/android/launcher3/icons/BitmapRenderer;->draw(Landroid/graphics/Canvas;)V

    .line 214
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 229
    new-instance v0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable$MyConstantState;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;->mRenderer:Lcom/android/launcher3/icons/BitmapRenderer;

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable$MyConstantState;-><init>(Lcom/android/launcher3/icons/BitmapRenderer;)V

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 224
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .line 217
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 220
    return-void
.end method
