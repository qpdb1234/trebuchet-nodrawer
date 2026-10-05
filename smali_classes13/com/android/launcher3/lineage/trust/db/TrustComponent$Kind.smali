.class public final enum Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;
.super Ljava/lang/Enum;
.source "TrustComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/lineage/trust/db/TrustComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

.field public static final enum HIDDEN:Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

.field public static final enum PROTECTED:Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;


# direct methods
.method private static synthetic $values()[Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;
    .locals 2

    .line 88
    sget-object v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;->HIDDEN:Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    sget-object v1, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;->PROTECTED:Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    filled-new-array {v0, v1}, [Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 89
    new-instance v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    const-string v1, "HIDDEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;->HIDDEN:Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    .line 90
    new-instance v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    const-string v1, "PROTECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;->PROTECTED:Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    .line 88
    invoke-static {}, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;->$values()[Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;->$VALUES:[Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 88
    const-class v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;
    .locals 1

    .line 88
    sget-object v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;->$VALUES:[Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    invoke-virtual {v0}, [Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    return-object v0
.end method
