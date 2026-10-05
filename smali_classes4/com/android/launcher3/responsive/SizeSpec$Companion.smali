.class public final Lcom/android/launcher3/responsive/SizeSpec$Companion;
.super Ljava/lang/Object;
.source "SizeSpec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/responsive/SizeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/SizeSpec$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "create",
        "Lcom/android/launcher3/responsive/SizeSpec;",
        "resourceHelper",
        "Lcom/android/launcher3/util/ResourceHelper;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "getValue",
        "",
        "a",
        "Landroid/content/res/TypedArray;",
        "index",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/responsive/SizeSpec$Companion;-><init>()V

    return-void
.end method

.method private final getValue(Landroid/content/res/TypedArray;I)F
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 139
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 142
    goto :goto_0

    .line 140
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v1, v0

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 139
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final create(Lcom/android/launcher3/util/ResourceHelper;Landroid/util/AttributeSet;)Lcom/android/launcher3/responsive/SizeSpec;
    .locals 12
    .param p1, "resourceHelper"    # Lcom/android/launcher3/util/ResourceHelper;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "resourceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/android/launcher3/R$styleable;->SizeSpec:[I

    const-string v1, "SizeSpec"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/util/ResourceHelper;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    .local v0, "styledAttrs":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/launcher3/R$styleable;->SizeSpec_fixedSize:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/responsive/SizeSpec$Companion;->getValue(Landroid/content/res/TypedArray;I)F

    move-result v1

    .line 150
    .local v1, "fixedSize":F
    sget v2, Lcom/android/launcher3/R$styleable;->SizeSpec_ofAvailableSpace:I

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/responsive/SizeSpec$Companion;->getValue(Landroid/content/res/TypedArray;I)F

    move-result v8

    .line 151
    .local v8, "ofAvailableSpace":F
    sget v2, Lcom/android/launcher3/R$styleable;->SizeSpec_ofRemainderSpace:I

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/responsive/SizeSpec$Companion;->getValue(Landroid/content/res/TypedArray;I)F

    move-result v9

    .line 152
    .local v9, "ofRemainderSpace":F
    sget v2, Lcom/android/launcher3/R$styleable;->SizeSpec_matchWorkspace:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 154
    .local v10, "matchWorkspace":Z
    sget v2, Lcom/android/launcher3/R$styleable;->SizeSpec_maxSize:I

    const v3, 0x7fffffff

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 153
    nop

    .line 156
    .local v7, "maxSize":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    new-instance v11, Lcom/android/launcher3/responsive/SizeSpec;

    move-object v2, v11

    move v3, v1

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/responsive/SizeSpec;-><init>(FFFZI)V

    return-object v11
.end method
