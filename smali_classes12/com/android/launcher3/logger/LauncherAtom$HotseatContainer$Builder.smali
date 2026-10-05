.class public final Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$HotseatContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$HotseatContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12613
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12614
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIndex()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;
    .locals 1

    .line 12648
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->copyOnWrite()V

    .line 12649
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->-$$Nest$mclearIndex(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V

    .line 12650
    return-object p0
.end method

.method public getIndex()I
    .locals 1

    .line 12631
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result v0

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .line 12623
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->hasIndex()Z

    move-result v0

    return v0
.end method

.method public setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 12639
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->copyOnWrite()V

    .line 12640
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->-$$Nest$msetIndex(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;I)V

    .line 12641
    return-object p0
.end method
