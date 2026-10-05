.class Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper$1;
.super Landroidx/preference/PreferenceDataStore;
.source "PluginManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->getPluginEnabler()Landroidx/preference/PreferenceDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    .line 54
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper$1;->this$0:Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    return-void
.end method
