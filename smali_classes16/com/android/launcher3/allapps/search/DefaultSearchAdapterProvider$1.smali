.class Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DefaultSearchAdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;-><init>(Lcom/android/launcher3/views/ActivityContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;

    .line 39
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider$1;->this$0:Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method
