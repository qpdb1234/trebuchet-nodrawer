.class public final Lcom/android/launcher3/ContextualItem;
.super Lcom/android/launcher3/Item;
.source "LauncherPrefs.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/launcher3/Item;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002BP\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012!\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00028\u00000\u0008\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u000e\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0010\u00a2\u0006\u0002\u0010\u0011J\t\u0010\u001b\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0006H\u00c6\u0003J$\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00028\u00000\u0008H\u00c2\u0003J\t\u0010\u001e\u001a\u00020\u000eH\u00c6\u0003J\u0011\u0010\u001f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0010H\u00c6\u0003Jd\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062#\u0008\u0002\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00028\u00000\u00082\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0010H\u00c6\u0001J\u0013\u0010!\u001a\u00028\u00002\u0006\u0010\"\u001a\u00020\t\u00a2\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020\u00062\u0008\u0010%\u001a\u0004\u0018\u00010&H\u00d6\u0003J\u0013\u0010\'\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0002\u0010#J\t\u0010(\u001a\u00020)H\u00d6\u0001J\t\u0010*\u001a\u00020\u0004H\u00d6\u0001R\u0012\u0010\u0012\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R)\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006+"
    }
    d2 = {
        "Lcom/android/launcher3/ContextualItem;",
        "T",
        "Lcom/android/launcher3/Item;",
        "sharedPrefKey",
        "",
        "isBackedUp",
        "",
        "defaultSupplier",
        "Lkotlin/Function1;",
        "Landroid/content/Context;",
        "Lkotlin/ParameterName;",
        "name",
        "c",
        "encryptionType",
        "Lcom/android/launcher3/EncryptionType;",
        "type",
        "Ljava/lang/Class;",
        "(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lcom/android/launcher3/EncryptionType;Ljava/lang/Class;)V",
        "default",
        "Ljava/lang/Object;",
        "getEncryptionType",
        "()Lcom/android/launcher3/EncryptionType;",
        "()Z",
        "getSharedPrefKey",
        "()Ljava/lang/String;",
        "getType",
        "()Ljava/lang/Class;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "defaultValueFromContext",
        "context",
        "(Landroid/content/Context;)Ljava/lang/Object;",
        "equals",
        "other",
        "",
        "get",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private default:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final defaultSupplier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final encryptionType:Lcom/android/launcher3/EncryptionType;

.field private final isBackedUp:Z

.field private final sharedPrefKey:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lcom/android/launcher3/EncryptionType;Ljava/lang/Class;)V
    .locals 1
    .param p1, "sharedPrefKey"    # Ljava/lang/String;
    .param p2, "isBackedUp"    # Z
    .param p3, "defaultSupplier"    # Lkotlin/jvm/functions/Function1;
    .param p4, "encryptionType"    # Lcom/android/launcher3/EncryptionType;
    .param p5, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+TT;>;",
            "Lcom/android/launcher3/EncryptionType;",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "sharedPrefKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultSupplier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-direct {p0}, Lcom/android/launcher3/Item;-><init>()V

    .line 534
    iput-object p1, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    .line 535
    iput-boolean p2, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    .line 536
    iput-object p3, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lkotlin/jvm/functions/Function1;

    .line 537
    iput-object p4, p0, Lcom/android/launcher3/ContextualItem;->encryptionType:Lcom/android/launcher3/EncryptionType;

    .line 538
    iput-object p5, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    .line 533
    return-void
.end method

.method private final component3()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/ContextualItem;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lcom/android/launcher3/EncryptionType;Ljava/lang/Class;ILjava/lang/Object;)Lcom/android/launcher3/ContextualItem;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lkotlin/jvm/functions/Function1;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/android/launcher3/ContextualItem;->encryptionType:Lcom/android/launcher3/EncryptionType;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/android/launcher3/ContextualItem;->copy(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lcom/android/launcher3/EncryptionType;Ljava/lang/Class;)Lcom/android/launcher3/ContextualItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    return v0
.end method

.method public final component4()Lcom/android/launcher3/EncryptionType;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->encryptionType:Lcom/android/launcher3/EncryptionType;

    return-object v0
.end method

.method public final component5()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lcom/android/launcher3/EncryptionType;Ljava/lang/Class;)Lcom/android/launcher3/ContextualItem;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+TT;>;",
            "Lcom/android/launcher3/EncryptionType;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/android/launcher3/ContextualItem<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sharedPrefKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultSupplier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/ContextualItem;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/ContextualItem;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lcom/android/launcher3/EncryptionType;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final defaultValueFromContext(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->default:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ContextualItem;->default:Ljava/lang/Object;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->default:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/ContextualItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/ContextualItem;

    iget-object v3, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    iget-boolean v4, v1, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lkotlin/jvm/functions/Function1;

    iget-object v4, v1, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/ContextualItem;->encryptionType:Lcom/android/launcher3/EncryptionType;

    iget-object v4, v1, Lcom/android/launcher3/ContextualItem;->encryptionType:Lcom/android/launcher3/EncryptionType;

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ContextualItem;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionType()Lcom/android/launcher3/EncryptionType;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->encryptionType:Lcom/android/launcher3/EncryptionType;

    return-object v0
.end method

.method public getSharedPrefKey()Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/ContextualItem;->encryptionType:Lcom/android/launcher3/EncryptionType;

    invoke-virtual {v2}, Lcom/android/launcher3/EncryptionType;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public isBackedUp()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    iget-object v2, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/android/launcher3/ContextualItem;->encryptionType:Lcom/android/launcher3/EncryptionType;

    iget-object v4, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContextualItem(sharedPrefKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", isBackedUp="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultSupplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
