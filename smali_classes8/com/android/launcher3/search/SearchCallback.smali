.class public interface abstract Lcom/android/launcher3/search/SearchCallback;
.super Ljava/lang/Object;
.source "SearchCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FINAL:I = 0x2

.field public static final INTERMEDIATE:I = 0x1

.field public static final UNKNOWN:I


# virtual methods
.method public abstract clearSearchResult()V
.end method

.method public abstract onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p3, "searchResultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "TT;>;I)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/android/launcher3/search/SearchCallback;, "Lcom/android/launcher3/search/SearchCallback<TT;>;"
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/search/SearchCallback;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    return-void
.end method
