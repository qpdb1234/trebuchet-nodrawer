.class public Lcom/android/launcher3/lineage/trust/db/TrustComponent;
.super Ljava/lang/Object;
.source "TrustComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;
    }
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsHidden:Z

.field private mIsProtected:Z

.field private final mLabel:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isHidden"    # Z
    .param p5, "isProtected"    # Z

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mPackageName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object p3, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mLabel:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIsHidden:Z

    .line 38
    iput-boolean p5, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIsProtected:Z

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 74
    instance-of v0, p1, Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    return v1

    .line 78
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    .line 79
    .local v0, "otherComponent":Lcom/android/launcher3/lineage/trust/db/TrustComponent;
    invoke-virtual {v0}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->isHidden()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIsHidden:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 79
    :goto_0
    return v1
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIsHidden:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public invertProtection()V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIsProtected:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIsProtected:Z

    .line 70
    return-void
.end method

.method public invertVisibility()V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIsHidden:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIsHidden:Z

    .line 66
    return-void
.end method

.method public isHidden()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIsHidden:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->mIsProtected:Z

    return v0
.end method
