.class Lcom/android/launcher3/LauncherAppState$1;
.super Ljava/lang/Object;
.source "LauncherAppState.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherAppState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherAppState;

    .line 136
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$1;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 140
    const-string v0, "pref_smartspace_home_screen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$1;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->-$$Nest$fgetmModel(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 143
    :cond_0
    return-void
.end method
