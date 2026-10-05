.class public Lcom/android/launcher3/allapps/SectionDecorationInfo;
.super Ljava/lang/Object;
.source "SectionDecorationInfo.java"


# static fields
.field public static final DECORATOR_ALPHA:I = 0xff

.field public static final ROUND_BOTTOM_LEFT:I = 0x8

.field public static final ROUND_BOTTOM_RIGHT:I = 0x10

.field public static final ROUND_NOTHING:I = 0x0

.field public static final ROUND_TOP_LEFT:I = 0x2

.field public static final ROUND_TOP_RIGHT:I = 0x4


# instance fields
.field private mDecorationHandler:Lcom/android/launcher3/allapps/SectionDecorationHandler;

.field protected mIsBottomRound:Z

.field protected mIsTopRound:Z

.field protected mShouldDecorateItemsTogether:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roundRegions"    # I
    .param p3, "decorateTogether"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v7, Lcom/android/launcher3/allapps/SectionDecorationHandler;

    const/16 v2, 0xff

    .line 40
    const/4 v8, 0x2

    invoke-direct {p0, p2, v8}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->isFlagEnabled(II)Z

    move-result v3

    .line 41
    const/4 v9, 0x4

    invoke-direct {p0, p2, v9}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->isFlagEnabled(II)Z

    move-result v4

    .line 42
    const/16 v10, 0x8

    invoke-direct {p0, p2, v10}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->isFlagEnabled(II)Z

    move-result v5

    .line 43
    const/16 v11, 0x10

    invoke-direct {p0, p2, v11}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->isFlagEnabled(II)Z

    move-result v6

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/allapps/SectionDecorationHandler;-><init>(Landroid/content/Context;IZZZZ)V

    iput-object v7, p0, Lcom/android/launcher3/allapps/SectionDecorationInfo;->mDecorationHandler:Lcom/android/launcher3/allapps/SectionDecorationHandler;

    .line 44
    iput-boolean p3, p0, Lcom/android/launcher3/allapps/SectionDecorationInfo;->mShouldDecorateItemsTogether:Z

    .line 45
    invoke-direct {p0, p2, v8}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->isFlagEnabled(II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p2, v9}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/SectionDecorationInfo;->mIsTopRound:Z

    .line 47
    invoke-direct {p0, p2, v10}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-direct {p0, p2, v11}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/SectionDecorationInfo;->mIsBottomRound:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Bundle;
    .param p3, "targetLayoutType"    # Ljava/lang/String;
    .param p4, "prevTarget"    # Landroid/os/Bundle;
    .param p5, "nextTarget"    # Landroid/os/Bundle;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFlagEnabled(II)Z
    .locals 1
    .param p1, "canonicalFlag"    # I
    .param p2, "comparison"    # I

    .line 59
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getDecorationHandler()Lcom/android/launcher3/allapps/SectionDecorationHandler;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationInfo;->mDecorationHandler:Lcom/android/launcher3/allapps/SectionDecorationHandler;

    return-object v0
.end method

.method public isBottomRound()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/SectionDecorationInfo;->mIsBottomRound:Z

    return v0
.end method

.method public isTopRound()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/SectionDecorationInfo;->mIsTopRound:Z

    return v0
.end method

.method public shouldDecorateItemsTogether()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/SectionDecorationInfo;->mShouldDecorateItemsTogether:Z

    return v0
.end method
