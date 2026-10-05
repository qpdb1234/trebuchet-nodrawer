.class public final Lcom/android/launcher3/config/GridSizeOverrides;
.super Ljava/lang/Object;
.source "GridSizeOverrides.java"


# static fields
.field public static final KEY_COLUMNS:Ljava/lang/String; = "pref_grid_columns"

.field public static final KEY_HOTSEAT_ICONS:Ljava/lang/String; = "pref_grid_hotseat_icons"

.field public static final KEY_ROWS:Ljava/lang/String; = "pref_grid_rows"

.field public static final MAX_COLUMNS:I = 0x8

.field public static final MAX_HOTSEAT_ICONS:I = 0x7

.field public static final MAX_ROWS:I = 0x8

.field public static final MIN_COLUMNS:I = 0x2

.field public static final MIN_HOTSEAT_ICONS:I = 0x2

.field public static final MIN_ROWS:I = 0x2

.field public static final PREF_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const-string v0, "pref_grid_columns"

    const-string v1, "pref_grid_hotseat_icons"

    const-string v2, "pref_grid_rows"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/GridSizeOverrides;->PREF_KEYS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 83
    if-gtz p0, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static getColumns(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    const-string v0, "pref_grid_columns"

    invoke-static {p0, v0}, Lcom/android/launcher3/config/GridSizeOverrides;->read(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/config/GridSizeOverrides;->clamp(III)I

    move-result v0

    return v0
.end method

.method public static getHotseatIcons(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    const-string v0, "pref_grid_hotseat_icons"

    invoke-static {p0, v0}, Lcom/android/launcher3/config/GridSizeOverrides;->read(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/config/GridSizeOverrides;->clamp(III)I

    move-result v0

    return v0
.end method

.method public static getRows(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    const-string v0, "pref_grid_rows"

    invoke-static {p0, v0}, Lcom/android/launcher3/config/GridSizeOverrides;->read(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/config/GridSizeOverrides;->clamp(III)I

    move-result v0

    return v0
.end method

.method private static read(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 64
    const-string v0, "com.android.launcher3.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "sp":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 74
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 76
    :goto_0
    :try_start_1
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    return v1

    .line 77
    :catch_2
    move-exception v2

    .line 78
    .local v2, "ignored":Ljava/lang/ClassCastException;
    return v1
.end method
