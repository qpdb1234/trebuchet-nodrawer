.class public final Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion;
.super Ljava/lang/Object;
.source "ResponsiveCellSpecsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion;",
        "",
        "()V",
        "create",
        "Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;",
        "resourceHelper",
        "Lcom/android/launcher3/util/ResourceHelper;",
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/launcher3/util/ResourceHelper;)Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;
    .locals 3
    .param p1, "resourceHelper"    # Lcom/android/launcher3/util/ResourceHelper;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "resourceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;

    invoke-direct {v0, p1}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;-><init>(Lcom/android/launcher3/util/ResourceHelper;)V

    .line 71
    .local v0, "parser":Lcom/android/launcher3/responsive/ResponsiveSpecsParser;
    sget-object v1, Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;->Cell:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    sget-object v2, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion$create$specs$1;->INSTANCE:Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion$create$specs$1;

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->parseXML(Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Lkotlin/jvm/functions/Function3;)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "specs":Ljava/util/List;
    new-instance v2, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;

    invoke-direct {v2, v1}, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;-><init>(Ljava/util/List;)V

    return-object v2
.end method
