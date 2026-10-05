.class public final enum Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
.super Ljava/lang/Enum;
.source "LauncherAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParentContainerCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

.field public static final enum PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

.field public static final enum TASKBAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
    .locals 2

    .line 5434
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->TASKBAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    filled-new-array {v0, v1}, [Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5435
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    const-string v1, "TASKBAR_CONTAINER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->TASKBAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    .line 5436
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    const-string v1, "PARENTCONTAINER_NOT_SET"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    .line 5434
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->$values()[Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5438
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5439
    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->value:I

    .line 5440
    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
    .locals 1
    .param p0, "value"    # I

    .line 5450
    packed-switch p0, :pswitch_data_0

    .line 5453
    const/4 v0, 0x0

    return-object v0

    .line 5451
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->TASKBAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    return-object v0

    .line 5452
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5446
    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5434
    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
    .locals 1

    .line 5434
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 5457
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->value:I

    return v0
.end method
