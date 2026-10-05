.class public final Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12224
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12225
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGridX()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1

    .line 12327
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 12328
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$mclearGridX(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 12329
    return-object p0
.end method

.method public clearGridY()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1

    .line 12379
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 12380
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$mclearGridY(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 12381
    return-object p0
.end method

.method public clearPageIndex()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1

    .line 12275
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 12276
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$mclearPageIndex(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 12277
    return-object p0
.end method

.method public getGridX()I
    .locals 1

    .line 12302
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridX()I

    move-result v0

    return v0
.end method

.method public getGridY()I
    .locals 1

    .line 12354
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridY()I

    move-result v0

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 12250
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getPageIndex()I

    move-result v0

    return v0
.end method

.method public hasGridX()Z
    .locals 1

    .line 12290
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->hasGridX()Z

    move-result v0

    return v0
.end method

.method public hasGridY()Z
    .locals 1

    .line 12342
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->hasGridY()Z

    move-result v0

    return v0
.end method

.method public hasPageIndex()Z
    .locals 1

    .line 12238
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->hasPageIndex()Z

    move-result v0

    return v0
.end method

.method public setGridX(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 12314
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 12315
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$msetGridX(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;I)V

    .line 12316
    return-object p0
.end method

.method public setGridY(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 12366
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 12367
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$msetGridY(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;I)V

    .line 12368
    return-object p0
.end method

.method public setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 12262
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 12263
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$msetPageIndex(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;I)V

    .line 12264
    return-object p0
.end method
