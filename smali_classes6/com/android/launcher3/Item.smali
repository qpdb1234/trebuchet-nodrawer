.class public abstract Lcom/android/launcher3/Item;
.super Ljava/lang/Object;
.source "LauncherPrefs.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u0002H\u00160\u0015\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0017\u001a\u0002H\u0016\u00a2\u0006\u0002\u0010\u0018R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u0016\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/android/launcher3/Item;",
        "",
        "()V",
        "encryptionType",
        "Lcom/android/launcher3/EncryptionType;",
        "getEncryptionType",
        "()Lcom/android/launcher3/EncryptionType;",
        "isBackedUp",
        "",
        "()Z",
        "sharedPrefFile",
        "",
        "getSharedPrefFile",
        "()Ljava/lang/String;",
        "sharedPrefKey",
        "getSharedPrefKey",
        "type",
        "Ljava/lang/Class;",
        "getType",
        "()Ljava/lang/Class;",
        "to",
        "Lkotlin/Pair;",
        "T",
        "value",
        "(Ljava/lang/Object;)Lkotlin/Pair;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEncryptionType()Lcom/android/launcher3/EncryptionType;
.end method

.method public final getSharedPrefFile()Ljava/lang/String;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lcom/android/launcher3/Item;->isBackedUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.launcher3.prefs"

    goto :goto_0

    :cond_0
    const-string v0, "com.android.launcher3.device.prefs"

    :goto_0
    return-object v0
.end method

.method public abstract getSharedPrefKey()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract isBackedUp()Z
.end method

.method public final to(Ljava/lang/Object;)Lkotlin/Pair;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/Pair<",
            "Lcom/android/launcher3/Item;",
            "TT;>;"
        }
    .end annotation

    .line 510
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
