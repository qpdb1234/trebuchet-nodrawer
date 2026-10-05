.class public Lcom/android/launcher3/icons/BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/BitmapInfo$Extender;,
        Lcom/android/launcher3/icons/BitmapInfo$DrawableCreationFlags;,
        Lcom/android/launcher3/icons/BitmapInfo$BitmapInfoFlags;
    }
.end annotation


# static fields
.field public static final FLAG_CLONE:I = 0x4

.field public static final FLAG_INSTANT:I = 0x2

.field public static final FLAG_NO_BADGE:I = 0x2

.field public static final FLAG_PRIVATE:I = 0x8

.field public static final FLAG_SKIP_USER_BADGE:I = 0x4

.field public static final FLAG_THEMED:I = 0x1

.field public static final FLAG_WORK:I = 0x1

.field public static final LOW_RES_ICON:Landroid/graphics/Bitmap;

.field public static final LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

.field public static final TAG:Ljava/lang/String; = "BitmapInfo"


# instance fields
.field private badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

.field public final color:I

.field public flags:I

.field public final icon:Landroid/graphics/Bitmap;

.field protected mMono:Landroid/graphics/Bitmap;

.field protected mWhiteShadowLayer:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const/4 v0, 0x1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    .line 56
    invoke-static {v0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 72
    iput p2, p0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    .line 73
    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 204
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method private getBadgeDrawable(Landroid/content/Context;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isThemed"    # Z
    .param p3, "skipUserBadge"    # Z

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v0, :cond_1

    .line 179
    move v1, p2

    .line 180
    .local v1, "creationFlag":I
    if-eqz p3, :cond_0

    .line 181
    or-int/lit8 v1, v1, 0x4

    .line 183
    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    return-object v0

    .line 185
    .end local v1    # "creationFlag":I
    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 186
    return-object v0

    .line 187
    :cond_2
    iget v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    .line 188
    new-instance v0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_instant_app_badge:I

    sget v2, Lcom/android/launcher3/R$color;->badge_tint_instant:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    return-object v0

    .line 190
    :cond_3
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4

    .line 191
    new-instance v0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_work_app_badge:I

    sget v2, Lcom/android/launcher3/R$color;->badge_tint_work:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    return-object v0

    .line 193
    :cond_4
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_5

    .line 194
    new-instance v0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_clone_app_badge:I

    sget v2, Lcom/android/launcher3/R$color;->badge_tint_clone:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    return-object v0

    .line 196
    :cond_5
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 197
    new-instance v0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_private_profile_app_badge:I

    sget v2, Lcom/android/launcher3/R$color;->badge_tint_private:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    return-object v0

    .line 200
    :cond_6
    return-object v0
.end method

.method public static of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I

    .line 208
    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method


# virtual methods
.method protected applyFlags(Landroid/content/Context;Lcom/android/launcher3/icons/FastBitmapDrawable;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Lcom/android/launcher3/icons/FastBitmapDrawable;
    .param p3, "creationFlags"    # I

    .line 158
    sget v0, Lcom/android/launcher3/R$attr;->disabledIconAlpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->getFloat(Landroid/content/Context;IF)F

    move-result v0

    iput v0, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    .line 159
    iput p3, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mCreationFlags:I

    .line 160
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_2

    .line 161
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->getBadgeDrawable(Landroid/content/Context;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p2, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method public canPersist()Z
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public clone()Lcom/android/launcher3/icons/BitmapInfo;
    .locals 3

    .line 103
    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/BitmapInfo;->copyInternalsTo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method protected copyInternalsTo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/icons/BitmapInfo;

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    .line 96
    iget v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    iput v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    .line 98
    return-object p1
.end method

.method public getBadgeDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isThemed"    # Z

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/icons/BitmapInfo;->getBadgeDrawable(Landroid/content/Context;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMono()Landroid/graphics/Bitmap;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final isLowRes()Z
    .locals 2

    .line 119
    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNullOrLowRes()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

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

.method public newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creationFlags"    # I

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->isLowRes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;Landroid/content/Context;)V

    .local v0, "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    goto :goto_0

    .line 147
    .end local v0    # "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 148
    invoke-static {p0, p1}, Lcom/android/launcher3/icons/ThemedIconDrawable;->newDrawable(Lcom/android/launcher3/icons/BitmapInfo;Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    .restart local v0    # "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    goto :goto_0

    .line 150
    .end local v0    # "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    :cond_1
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;)V

    .line 152
    .restart local v0    # "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/icons/BitmapInfo;->applyFlags(Landroid/content/Context;Lcom/android/launcher3/icons/FastBitmapDrawable;I)V

    .line 153
    return-object v0
.end method

.method public setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;)V
    .locals 1
    .param p1, "mono"    # Landroid/graphics/Bitmap;
    .param p2, "iconFactory"    # Lcom/android/launcher3/icons/BaseIconFactory;

    .line 107
    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    .line 108
    invoke-virtual {p2}, Lcom/android/launcher3/icons/BaseIconFactory;->getWhiteShadowLayer()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    .line 109
    return-void
.end method

.method public withBadgeInfo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p1, "badgeInfo"    # Lcom/android/launcher3/icons/BitmapInfo;

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    .line 77
    .local v0, "result":Lcom/android/launcher3/icons/BitmapInfo;
    iput-object p1, v0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    .line 78
    return-object v0
.end method

.method public withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 2
    .param p1, "op"    # Lcom/android/launcher3/util/FlagOp;

    .line 85
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-ne p1, v0, :cond_0

    .line 86
    return-object p0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    .line 89
    .local v0, "result":Lcom/android/launcher3/icons/BitmapInfo;
    iget v1, v0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    invoke-interface {p1, v1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    .line 90
    return-object v0
.end method
