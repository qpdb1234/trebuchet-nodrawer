.class public final Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion;
.super Ljava/lang/Object;
.source "ResponsiveSpecsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion;",
        "",
        "()V",
        "create",
        "Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;",
        "resourceHelper",
        "Lcom/android/launcher3/util/ResourceHelper;",
        "type",
        "Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;",
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
.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/launcher3/util/ResourceHelper;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;)Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;
    .locals 3
    .param p1, "resourceHelper"    # Lcom/android/launcher3/util/ResourceHelper;
    .param p2, "type"    # Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "resourceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;

    invoke-direct {v0, p1}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;-><init>(Lcom/android/launcher3/util/ResourceHelper;)V

    .line 133
    .local v0, "parser":Lcom/android/launcher3/responsive/ResponsiveSpecsParser;
    sget-object v1, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion$create$specs$1;->INSTANCE:Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion$create$specs$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->parseXML(Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Lkotlin/jvm/functions/Function3;)Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, "specs":Ljava/util/List;
    new-instance v2, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;

    invoke-direct {v2, p2, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;-><init>(Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Ljava/util/List;)V

    return-object v2
.end method
