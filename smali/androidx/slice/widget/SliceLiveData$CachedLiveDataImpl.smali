.class Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;
.super Landroidx/lifecycle/LiveData;
.source "SliceLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedLiveDataImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Landroidx/slice/Slice;",
        ">;"
    }
.end annotation


# instance fields
.field private mActive:Z

.field final mContext:Landroid/content/Context;

.field private final mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

.field private mLive:Z

.field mPendingContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mPendingIntent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field mPendingUri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

.field private mSliceCallbackRegistered:Z

.field final mSliceViewManager:Landroidx/slice/SliceViewManager;

.field mStructure:Landroidx/slice/SliceStructure;

.field private final mUpdateSlice:Ljava/lang/Runnable;

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroidx/slice/SliceViewManager;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "listener"    # Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    .line 134
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingUri:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingContext:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingIntent:Ljava/util/List;

    .line 203
    new-instance v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;-><init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    .line 211
    new-instance v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;-><init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    .line 135
    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    .line 138
    iput-object p4, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    .line 139
    new-instance v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;

    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;-><init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/content/Context;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 119
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 119
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method goLive(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "actionUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    .line 163
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingUri:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingContext:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingIntent:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 168
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 169
    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    .line 171
    :cond_0
    return-void
.end method

.method protected onActive()V
    .locals 4

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mActive:Z

    .line 176
    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 178
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 179
    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    .line 181
    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 4

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mActive:Z

    .line 186
    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 188
    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    .line 190
    :cond_0
    return-void
.end method

.method onSliceError(ILjava/lang/Throwable;)V
    .locals 4
    .param p1, "error"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 193
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    invoke-interface {v0, p1, p2}, Landroidx/slice/widget/SliceLiveData$OnErrorListener;->onSliceError(ILjava/lang/Throwable;)V

    .line 194
    iget-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    if-eqz v0, :cond_1

    .line 195
    iget-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v0, v2, v3}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 197
    iput-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    .line 199
    :cond_0
    iput-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    .line 201
    :cond_1
    return-void
.end method
