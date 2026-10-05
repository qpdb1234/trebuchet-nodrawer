.class public final Lcom/android/launcher3/states/EditModeState;
.super Lcom/android/launcher3/LauncherState;
.source "EditModeState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/states/EditModeState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\'\u0010\u0005\u001a\u00020\u0006\"\u0010\u0008\u0000\u0010\u0007*\u0004\u0018\u00010\u0008*\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u0002H\u0007H\u0014\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J/\u0010\u0010\u001a\u00020\u0003\"\u0010\u0008\u0000\u0010\u0007*\u0004\u0018\u00010\u0008*\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u0002H\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001c\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/android/launcher3/states/EditModeState;",
        "Lcom/android/launcher3/LauncherState;",
        "id",
        "",
        "(I)V",
        "getDepthUnchecked",
        "",
        "T",
        "Landroid/content/Context;",
        "Lcom/android/launcher3/views/ActivityContext;",
        "context",
        "(Landroid/content/Context;)F",
        "getHotseatScaleAndTranslation",
        "Lcom/android/launcher3/LauncherState$ScaleAndTranslation;",
        "launcher",
        "Lcom/android/launcher3/Launcher;",
        "getTransitionDuration",
        "isToState",
        "",
        "(Landroid/content/Context;Z)I",
        "getWorkspaceBackgroundAlpha",
        "getWorkspaceScaleAndTranslation",
        "onLeavingState",
        "",
        "toState",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/android/launcher3/states/EditModeState$Companion;

.field private static final STATE_FLAGS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/states/EditModeState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/states/EditModeState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/states/EditModeState;->Companion:Lcom/android/launcher3/states/EditModeState$Companion;

    .line 29
    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    .line 30
    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_INACCESSIBLE:I

    .line 29
    or-int/2addr v0, v1

    .line 31
    nop

    .line 29
    or-int/lit8 v0, v0, 0x2

    .line 32
    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    .line 29
    or-int/2addr v0, v1

    .line 33
    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_HAS_BACKGROUNDS:I

    .line 29
    or-int/2addr v0, v1

    sput v0, Lcom/android/launcher3/states/EditModeState;->STATE_FLAGS:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .line 25
    const/4 v0, 0x2

    sget v1, Lcom/android/launcher3/states/EditModeState;->STATE_FLAGS:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/LauncherState;-><init>(III)V

    return-void
.end method


# virtual methods
.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)F"
        }
    .end annotation

    .line 43
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->getWorkspaceSpringLoadScale(Landroid/content/Context;)F

    move-result v0

    .line 53
    .local v0, "scale":F
    new-instance v1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v1
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isToState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;Z)I"
        }
    .end annotation

    .line 39
    const/16 v0, 0x96

    return v0
.end method

.method public getWorkspaceBackgroundAlpha(Lcom/android/launcher3/Launcher;)F
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->getWorkspaceSpringLoadScale(Landroid/content/Context;)F

    move-result v0

    .line 48
    .local v0, "scale":F
    new-instance v1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v1
.end method

.method public onLeavingState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 62
    return-void
.end method
