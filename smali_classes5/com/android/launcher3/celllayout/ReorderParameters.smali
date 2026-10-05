.class public final Lcom/android/launcher3/celllayout/ReorderParameters;
.super Ljava/lang/Object;
.source "ReorderParameters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/android/launcher3/celllayout/ReorderParameters;",
        "",
        "pixelX",
        "",
        "pixelY",
        "spanX",
        "spanY",
        "minSpanX",
        "minSpanY",
        "dragView",
        "Landroid/view/View;",
        "solution",
        "Lcom/android/launcher3/celllayout/ItemConfiguration;",
        "(IIIIIILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)V",
        "getDragView",
        "()Landroid/view/View;",
        "getMinSpanX",
        "()I",
        "getMinSpanY",
        "getPixelX",
        "getPixelY",
        "getSolution",
        "()Lcom/android/launcher3/celllayout/ItemConfiguration;",
        "getSpanX",
        "getSpanY",
        "Trebuchet_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final dragView:Landroid/view/View;

.field private final minSpanX:I

.field private final minSpanY:I

.field private final pixelX:I

.field private final pixelY:I

.field private final solution:Lcom/android/launcher3/celllayout/ItemConfiguration;

.field private final spanX:I

.field private final spanY:I


# direct methods
.method public constructor <init>(IIIIIILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)V
    .locals 1
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "minSpanX"    # I
    .param p6, "minSpanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "solution"    # Lcom/android/launcher3/celllayout/ItemConfiguration;

    const-string v0, "solution"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->pixelX:I

    .line 23
    iput p2, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->pixelY:I

    .line 24
    iput p3, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->spanX:I

    .line 25
    iput p4, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->spanY:I

    .line 26
    iput p5, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->minSpanX:I

    .line 27
    iput p6, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->minSpanY:I

    .line 28
    iput-object p7, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->dragView:Landroid/view/View;

    .line 29
    iput-object p8, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->solution:Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 21
    return-void
.end method


# virtual methods
.method public final getDragView()Landroid/view/View;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->dragView:Landroid/view/View;

    return-object v0
.end method

.method public final getMinSpanX()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->minSpanX:I

    return v0
.end method

.method public final getMinSpanY()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->minSpanY:I

    return v0
.end method

.method public final getPixelX()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->pixelX:I

    return v0
.end method

.method public final getPixelY()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->pixelY:I

    return v0
.end method

.method public final getSolution()Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->solution:Lcom/android/launcher3/celllayout/ItemConfiguration;

    return-object v0
.end method

.method public final getSpanX()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->spanX:I

    return v0
.end method

.method public final getSpanY()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/android/launcher3/celllayout/ReorderParameters;->spanY:I

    return v0
.end method
