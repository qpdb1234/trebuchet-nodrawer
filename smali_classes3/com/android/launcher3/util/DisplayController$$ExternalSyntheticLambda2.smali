.class public final synthetic Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/util/DisplayController;->lambda$dump$2(Ljava/io/PrintWriter;Lcom/android/launcher3/util/window/CachedDisplayInfo;Ljava/util/List;)V

    return-void
.end method
