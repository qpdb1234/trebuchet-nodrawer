.class interface abstract Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$Callback;
.super Ljava/lang/Object;
.source "LoadTrustComponentsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onLoadCompleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLoadListProgress(I)V
.end method
