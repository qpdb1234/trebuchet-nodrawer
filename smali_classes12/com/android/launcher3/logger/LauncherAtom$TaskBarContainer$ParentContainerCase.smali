.class public final enum Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
.super Ljava/lang/Enum;
.source "LauncherAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParentContainerCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

.field public static final enum PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

.field public static final enum TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
    .locals 2

    .line 7518
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    filled-new-array {v0, v1}, [Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7519
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    const/4 v1, 0x3

    const-string v2, "TASK_SWITCHER_CONTAINER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    .line 7520
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    const-string v1, "PARENTCONTAINER_NOT_SET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    .line 7518
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->$values()[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

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

    .line 7522
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7523
    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->value:I

    .line 7524
    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
    .locals 1
    .param p0, "value"    # I

    .line 7534
    sparse-switch p0, :sswitch_data_0

    .line 7537
    const/4 v0, 0x0

    return-object v0

    .line 7535
    :sswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    return-object v0

    .line 7536
    :sswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7530
    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7518
    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
    .locals 1

    .line 7518
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 7541
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->value:I

    return v0
.end method
