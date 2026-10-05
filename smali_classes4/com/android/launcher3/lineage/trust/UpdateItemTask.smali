.class public Lcom/android/launcher3/lineage/trust/UpdateItemTask;
.super Landroid/os/AsyncTask;
.source "UpdateItemTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/lineage/trust/UpdateItemTask$UpdateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/launcher3/lineage/trust/UpdateItemTask$UpdateCallback;

.field private mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

.field private mKind:Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;


# direct methods
.method constructor <init>(Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;Lcom/android/launcher3/lineage/trust/UpdateItemTask$UpdateCallback;Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;)V
    .locals 0
    .param p1, "dbHelper"    # Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;
    .param p2, "callback"    # Lcom/android/launcher3/lineage/trust/UpdateItemTask$UpdateCallback;
    .param p3, "kind"    # Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    .line 37
    iput-object p2, p0, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->mCallback:Lcom/android/launcher3/lineage/trust/UpdateItemTask$UpdateCallback;

    .line 38
    iput-object p3, p0, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->mKind:Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    .line 39
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/launcher3/lineage/trust/db/TrustComponent;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "trustComponents"    # [Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    .line 43
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 44
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    aget-object v0, p1, v1

    .line 48
    .local v0, "component":Lcom/android/launcher3/lineage/trust/db/TrustComponent;
    invoke-virtual {v0}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "pkgName":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher3/lineage/trust/UpdateItemTask$1;->$SwitchMap$com$android$launcher3$lineage$trust$db$TrustComponent$Kind:[I

    iget-object v4, p0, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->mKind:Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;

    invoke-virtual {v4}, Lcom/android/launcher3/lineage/trust/db/TrustComponent$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->isProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->addProtectedApp(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->removeProtectedApp(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    iget-object v3, p0, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->addHiddenApp(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->mDbHelper:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->removeHiddenApp(Ljava/lang/String;)V

    .line 57
    nop

    .line 66
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, [Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->doInBackground([Lcom/android/launcher3/lineage/trust/db/TrustComponent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->mCallback:Lcom/android/launcher3/lineage/trust/UpdateItemTask$UpdateCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/lineage/trust/UpdateItemTask$UpdateCallback;->onUpdated(Z)V

    .line 72
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/lineage/trust/UpdateItemTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
