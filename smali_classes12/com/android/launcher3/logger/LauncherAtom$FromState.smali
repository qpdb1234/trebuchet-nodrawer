.class public final enum Lcom/android/launcher3/logger/LauncherAtom$FromState;
.super Ljava/lang/Enum;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FromState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$FromState$FromStateVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$FromState;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field public static final enum FROM_CUSTOM:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field public static final FROM_CUSTOM_VALUE:I = 0x2

.field public static final enum FROM_EMPTY:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field public static final FROM_EMPTY_VALUE:I = 0x1

.field public static final enum FROM_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field public static final FROM_STATE_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field public static final FROM_SUGGESTED_VALUE:I = 0x3

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/launcher3/logger/LauncherAtom$FromState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 4

    .line 717
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_EMPTY:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_CUSTOM:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 727
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    const-string v1, "FROM_STATE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$FromState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 736
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    const-string v1, "FROM_EMPTY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$FromState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_EMPTY:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 745
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    const-string v1, "FROM_CUSTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$FromState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_CUSTOM:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 754
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    const-string v1, "FROM_SUGGESTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$FromState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 717
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FromState;->$values()[Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 825
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FromState$1;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$FromState$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 849
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 850
    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->value:I

    .line 851
    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 1
    .param p0, "value"    # I

    .line 811
    packed-switch p0, :pswitch_data_0

    .line 816
    const/4 v0, 0x0

    return-object v0

    .line 815
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 814
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_CUSTOM:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 813
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_EMPTY:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 812
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/launcher3/logger/LauncherAtom$FromState;",
            ">;"
        }
    .end annotation

    .line 822
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 835
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState$FromStateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 807
    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$FromState;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 717
    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 1

    .line 717
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FromState;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$FromState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 797
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->value:I

    return v0
.end method
