.class public Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
.super Ljava/lang/Object;
.source "BaseIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/BaseIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconOptions"
.end annotation


# instance fields
.field mExtractedColor:Ljava/lang/Integer;

.field mGenerationMode:I

.field mIsInstantApp:Z

.field mShrinkNonAdaptiveIcons:Z

.field mUserHandle:Landroid/os/UserHandle;

.field mUserIconInfo:Lcom/android/launcher3/util/UserIconInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    .line 519
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mGenerationMode:I

    return-void
.end method


# virtual methods
.method public setBitmapGenerationMode(I)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .param p1, "generationMode"    # I

    .line 580
    iput p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mGenerationMode:I

    .line 581
    return-object p0
.end method

.method public setExtractedColor(I)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 1
    .param p1, "color"    # I

    .line 570
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mExtractedColor:Ljava/lang/Integer;

    .line 571
    return-object p0
.end method

.method public setInstantApp(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .param p1, "instantApp"    # Z

    .line 561
    iput-boolean p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsInstantApp:Z

    .line 562
    return-object p0
.end method

.method public setShrinkNonAdaptiveIcons(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .param p1, "shrink"    # Z

    .line 534
    iput-boolean p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    .line 535
    return-object p0
.end method

.method public setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 543
    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    .line 544
    return-object p0
.end method

.method public setUser(Lcom/android/launcher3/util/UserIconInfo;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .param p1, "user"    # Lcom/android/launcher3/util/UserIconInfo;

    .line 552
    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserIconInfo:Lcom/android/launcher3/util/UserIconInfo;

    .line 553
    return-object p0
.end method
