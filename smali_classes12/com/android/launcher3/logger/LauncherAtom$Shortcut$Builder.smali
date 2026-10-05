.class public final Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$ShortcutOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$Shortcut;",
        "Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$ShortcutOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8731
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8732
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearShortcutId()Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 1

    .line 8833
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->copyOnWrite()V

    .line 8834
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->-$$Nest$mclearShortcutId(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V

    .line 8835
    return-object p0
.end method

.method public clearShortcutName()Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 1

    .line 8776
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->copyOnWrite()V

    .line 8777
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->-$$Nest$mclearShortcutName(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V

    .line 8778
    return-object p0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .line 8806
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8815
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutName()Ljava/lang/String;
    .locals 1

    .line 8749
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8758
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasShortcutId()Z
    .locals 1

    .line 8798
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->hasShortcutId()Z

    move-result v0

    return v0
.end method

.method public hasShortcutName()Z
    .locals 1

    .line 8741
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->hasShortcutName()Z

    move-result v0

    return v0
.end method

.method public setShortcutId(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8824
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->copyOnWrite()V

    .line 8825
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->-$$Nest$msetShortcutId(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;Ljava/lang/String;)V

    .line 8826
    return-object p0
.end method

.method public setShortcutIdBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8844
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->copyOnWrite()V

    .line 8845
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->-$$Nest$msetShortcutIdBytes(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;Lcom/google/protobuf/ByteString;)V

    .line 8846
    return-object p0
.end method

.method public setShortcutName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8767
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->copyOnWrite()V

    .line 8768
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->-$$Nest$msetShortcutName(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;Ljava/lang/String;)V

    .line 8769
    return-object p0
.end method

.method public setShortcutNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8787
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->copyOnWrite()V

    .line 8788
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->-$$Nest$msetShortcutNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;Lcom/google/protobuf/ByteString;)V

    .line 8789
    return-object p0
.end method
