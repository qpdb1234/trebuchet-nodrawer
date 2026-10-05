.class public final Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
.super Ljava/lang/Object;
.source "ResponsiveSpecGroup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/responsive/ResponsiveSpecGroup$Companion;,
        Lcom/android/launcher3/responsive/ResponsiveSpecGroup$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/responsive/IResponsiveSpec;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResponsiveSpecGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponsiveSpecGroup.kt\ncom/android/launcher3/responsive/ResponsiveSpecGroup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1#2:96\n1045#3:97\n1045#3:98\n288#3,2:99\n288#3,2:101\n*S KotlinDebug\n*F\n+ 1 ResponsiveSpecGroup.kt\ncom/android/launcher3/responsive/ResponsiveSpecGroup\n*L\n40#1:97\n41#1:98\n54#1:99,2\n56#1:101,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u0017*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\u0017B)\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\tJ\u001b\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/ResponsiveSpecGroup;",
        "T",
        "Lcom/android/launcher3/responsive/IResponsiveSpec;",
        "",
        "aspectRatio",
        "",
        "widthSpecs",
        "",
        "heightSpecs",
        "(FLjava/util/List;Ljava/util/List;)V",
        "getAspectRatio",
        "()F",
        "getHeightSpecs",
        "()Ljava/util/List;",
        "getWidthSpecs",
        "getSpec",
        "type",
        "Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;",
        "availableSize",
        "",
        "(Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;I)Lcom/android/launcher3/responsive/IResponsiveSpec;",
        "toString",
        "",
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
.field public static final Companion:Lcom/android/launcher3/responsive/ResponsiveSpecGroup$Companion;

.field public static final XML_GROUP_NAME:Ljava/lang/String; = "specs"


# instance fields
.field private final aspectRatio:F

.field private final heightSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final widthSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->Companion:Lcom/android/launcher3/responsive/ResponsiveSpecGroup$Companion;

    return-void
.end method

.method public constructor <init>(FLjava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "aspectRatio"    # F
    .param p2, "widthSpecs"    # Ljava/util/List;
    .param p3, "heightSpecs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "widthSpecs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "heightSpecs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->aspectRatio:F

    .line 38
    nop

    .line 39
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 40
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$f$sortedBy":I
    new-instance v2, Lcom/android/launcher3/responsive/ResponsiveSpecGroup$special$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup$special$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 40
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    iput-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->widthSpecs:Ljava/util/List;

    .line 41
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 98
    .restart local v1    # "$i$f$sortedBy":I
    new-instance v2, Lcom/android/launcher3/responsive/ResponsiveSpecGroup$special$$inlined$sortedBy$2;

    invoke-direct {v2}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup$special$$inlined$sortedBy$2;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 41
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    iput-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->heightSpecs:Ljava/util/List;

    .line 42
    nop

    .line 30
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    .line 39
    .local v0, "$i$a$-check-ResponsiveSpecGroup$1":I
    nop

    .end local v0    # "$i$a$-check-ResponsiveSpecGroup$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid aspect ratio! Aspect ratio should be bigger than zero."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$toString$printSpec(Lcom/android/launcher3/responsive/IResponsiveSpec;)Ljava/lang/String;
    .locals 1
    .param p0, "spec"    # Lcom/android/launcher3/responsive/IResponsiveSpec;

    .line 30
    invoke-static {p0}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->toString$printSpec(Lcom/android/launcher3/responsive/IResponsiveSpec;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final toString$printSpec(Lcom/android/launcher3/responsive/IResponsiveSpec;)Ljava/lang/String;
    .locals 2
    .param p0, "spec"    # Lcom/android/launcher3/responsive/IResponsiveSpec;

    .line 64
    invoke-interface {p0}, Lcom/android/launcher3/responsive/IResponsiveSpec;->getSpecType()Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/responsive/ResponsiveSpecGroup$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 69
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const-string v0, "null cannot be cast to non-null type com.android.launcher3.responsive.CellSpec"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/responsive/CellSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/CellSpec;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_1
    const-string v0, "null cannot be cast to non-null type com.android.launcher3.responsive.HotseatSpec"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/responsive/HotseatSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/HotseatSpec;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_2
    const-string v0, "null cannot be cast to non-null type com.android.launcher3.responsive.ResponsiveSpec"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/responsive/ResponsiveSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/ResponsiveSpec;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->aspectRatio:F

    return v0
.end method

.method public final getHeightSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->heightSpecs:Ljava/util/List;

    return-object v0
.end method

.method public final getSpec(Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;I)Lcom/android/launcher3/responsive/IResponsiveSpec;
    .locals 10
    .param p1, "type"    # Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;
    .param p2, "availableSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;",
            "I)TT;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->WIDTH:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->widthSpecs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 99
    .local v4, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/android/launcher3/responsive/IResponsiveSpec;

    .local v7, "it":Lcom/android/launcher3/responsive/IResponsiveSpec;
    const/4 v8, 0x0

    .line 54
    .local v8, "$i$a$-firstOrNull-ResponsiveSpecGroup$getSpec$spec$1":I
    invoke-interface {v7}, Lcom/android/launcher3/responsive/IResponsiveSpec;->getMaxAvailableSize()I

    move-result v9

    if-gt p2, v9, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v3

    .line 99
    .end local v7    # "it":Lcom/android/launcher3/responsive/IResponsiveSpec;
    .end local v8    # "$i$a$-firstOrNull-ResponsiveSpecGroup$getSpec$spec$1":I
    :goto_0
    if-eqz v7, :cond_0

    move-object v1, v6

    goto :goto_1

    .line 100
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v1, Lcom/android/launcher3/responsive/IResponsiveSpec;

    goto :goto_4

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->heightSpecs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 101
    .restart local v4    # "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/android/launcher3/responsive/IResponsiveSpec;

    .restart local v7    # "it":Lcom/android/launcher3/responsive/IResponsiveSpec;
    const/4 v8, 0x0

    .line 56
    .local v8, "$i$a$-firstOrNull-ResponsiveSpecGroup$getSpec$spec$2":I
    invoke-interface {v7}, Lcom/android/launcher3/responsive/IResponsiveSpec;->getMaxAvailableSize()I

    move-result v9

    if-gt p2, v9, :cond_5

    move v7, v2

    goto :goto_2

    :cond_5
    move v7, v3

    .line 101
    .end local v7    # "it":Lcom/android/launcher3/responsive/IResponsiveSpec;
    .end local v8    # "$i$a$-firstOrNull-ResponsiveSpecGroup$getSpec$spec$2":I
    :goto_2
    if-eqz v7, :cond_4

    move-object v1, v6

    goto :goto_3

    .line 102
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$firstOrNull":I
    :goto_3
    check-cast v1, Lcom/android/launcher3/responsive/IResponsiveSpec;

    .line 53
    :goto_4
    nop

    .line 52
    move-object v0, v1

    .line 58
    .local v0, "spec":Lcom/android/launcher3/responsive/IResponsiveSpec;
    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    if-eqz v2, :cond_8

    .line 59
    return-object v0

    .line 96
    :cond_8
    const/4 v1, 0x0

    .line 58
    .local v1, "$i$a$-check-ResponsiveSpecGroup$getSpec$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No available "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spec found within "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-check-ResponsiveSpecGroup$getSpec$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getWidthSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->widthSpecs:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->widthSpecs:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/android/launcher3/responsive/ResponsiveSpecGroup$toString$widthSpecsString$1;->INSTANCE:Lcom/android/launcher3/responsive/ResponsiveSpecGroup$toString$widthSpecsString$1;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "widthSpecsString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->heightSpecs:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup$toString$heightSpecsString$1;->INSTANCE:Lcom/android/launcher3/responsive/ResponsiveSpecGroup$toString$heightSpecsString$1;

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x1e

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "heightSpecsString":Ljava/lang/String;
    iget v2, p0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->aspectRatio:F

    .line 76
    nop

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResponsiveSpecGroup(aspectRatio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", widthSpecs=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], heightSpecs=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "])"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    return-object v2
.end method
