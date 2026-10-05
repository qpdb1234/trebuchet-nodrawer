.class public Lcom/android/launcher3/model/data/FolderInfo;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/data/FolderInfo$FolderListener;,
        Lcom/android/launcher3/model/data/FolderInfo$LabelState;
    }
.end annotation


# static fields
.field public static final EXTRA_FOLDER_SUGGESTIONS:Ljava/lang/String; = "suggest"

.field public static final FLAG_ITEMS_SORTED:I = 0x1

.field public static final FLAG_MANUAL_FOLDER_NAME:I = 0x8

.field public static final FLAG_MULTI_PAGE_ANIMATION:I = 0x4

.field public static final FLAG_WORK_FOLDER:I = 0x2

.field public static final NO_FLAGS:I


# instance fields
.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/FolderInfo$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field public options:I

.field public suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->itemType:I

    .line 112
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->user:Landroid/os/UserHandle;

    .line 113
    return-void
.end method

.method public static createAppPair(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/FolderInfo;
    .locals 2
    .param p0, "app1"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p1, "app2"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 119
    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    .line 120
    .local v0, "newAppPair":Lcom/android/launcher3/model/data/FolderInfo;
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->itemType:I

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    .line 122
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    .line 123
    return-object v0
.end method

.method static synthetic lambda$getAcceptedSuggestionIndex$0([Ljava/lang/CharSequence;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "labels"    # [Ljava/lang/CharSequence;
    .param p1, "newLabel"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 305
    aget-object v0, p0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, p0, p2

    .line 307
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0
.end method


# virtual methods
.method public add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "rank"    # I
    .param p3, "animate"    # Z

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p2

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;

    invoke-interface {v1, p1, p2}, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;->onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    .line 145
    return-void
.end method

.method public add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "animate"    # Z

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    .line 133
    return-void
.end method

.method public addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/model/data/FolderInfo$FolderListener;

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public buildProto()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/FolderInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 3
    .param p1, "fInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 223
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    move-result-object v0

    .line 225
    .local v0, "folderIcon":Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    sget-object v1, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->SUGGESTED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->setLabelInfo(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/FolderInfo;->rank:I

    .line 230
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setRank(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->-$$Nest$fgetmLogAttribute(Lcom/android/launcher3/model/data/FolderInfo$LabelState;)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->addItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$Attribute;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 228
    return-object v1
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    .line 217
    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s; labelState=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptedSuggestionIndex()Ljava/util/OptionalInt;
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "Expected valid folder label, but found null"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 299
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "newLabel":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameInfos;->hasSuggestions()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 304
    .local v1, "labels":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/data/FolderInfo$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v0}, Lcom/android/launcher3/model/data/FolderInfo$$ExternalSyntheticLambda1;-><init>([Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 305
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v2

    .line 308
    invoke-interface {v2}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v2

    .line 309
    invoke-interface {v2}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object v2

    .line 304
    return-object v2

    .line 301
    .end local v1    # "labels":[Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v1

    return-object v1
.end method

.method public getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 2

    .line 316
    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$1;->$SwitchMap$com$android$launcher3$model$data$FolderInfo$LabelState:[I

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 325
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 322
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 320
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_CUSTOM:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 318
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_EMPTY:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->UNLABELED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->EMPTY:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 272
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/FolderInfo;->hasOption(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->MANUAL:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 273
    :cond_2
    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->SUGGESTED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    .line 270
    :goto_0
    return-object v0
.end method

.method public getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 334
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasSuggestions()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_6

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasPrimary()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 346
    .local v0, "hasValidPrimary":Z
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 347
    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_1

    .line 348
    :cond_3
    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 347
    :goto_1
    return-object v1

    .line 351
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getAcceptedSuggestionIndex()Ljava/util/OptionalInt;

    move-result-object v1

    .line 352
    .local v1, "accepted_suggestion_index":Ljava/util/OptionalInt;
    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v2

    if-nez v2, :cond_6

    .line 353
    if-eqz v0, :cond_5

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_2

    .line 354
    :cond_5
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 353
    :goto_2
    return-object v2

    .line 357
    :cond_6
    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 372
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v2

    .line 367
    :pswitch_0
    if-eqz v0, :cond_7

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_3

    .line 368
    :cond_7
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 367
    :goto_3
    return-object v2

    .line 364
    :pswitch_1
    if-eqz v0, :cond_8

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_4

    .line 365
    :cond_8
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 364
    :goto_4
    return-object v2

    .line 361
    :pswitch_2
    if-eqz v0, :cond_9

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_5

    .line 362
    :cond_9
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 361
    :goto_5
    return-object v2

    .line 359
    :pswitch_3
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v2

    .line 340
    .end local v0    # "hasValidPrimary":Z
    .end local v1    # "accepted_suggestion_index":Ljava/util/OptionalInt;
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 341
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_7

    .line 342
    :cond_b
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 340
    :goto_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasOption(I)Z
    .locals 1
    .param p1, "optionFlag"    # I

    .line 195
    iget v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisabled()Z
    .locals 2

    .line 377
    iget v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->itemType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/data/FolderInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/FolderInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0

    .line 381
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public itemsChanged(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;->onItemsChanged(Z)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;
    .locals 2

    .line 279
    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    .line 280
    .local v0, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/data/FolderInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 281
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 282
    return-object v0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3
    .param p1, "writer"    # Lcom/android/launcher3/util/ContentWriter;

    .line 169
    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 170
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 172
    return-void
.end method

.method public remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "animate"    # Z

    .line 153
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/model/data/FolderInfo;->removeAll(Ljava/util/List;Z)V

    .line 154
    return-void
.end method

.method public removeAll(Ljava/util/List;Z)V
    .locals 2
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 160
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;->onRemove(Ljava/util/List;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    .line 165
    return-void
.end method

.method public removeListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/model/data/FolderInfo$FolderListener;

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public setOption(IZLcom/android/launcher3/model/ModelWriter;)V
    .locals 3
    .param p1, "option"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "writer"    # Lcom/android/launcher3/model/ModelWriter;

    .line 204
    iget v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    .line 205
    .local v0, "oldOptions":I
    if-eqz p2, :cond_0

    .line 206
    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    goto :goto_0

    .line 208
    :cond_0
    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    .line 210
    :goto_0
    if-eqz p3, :cond_1

    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    if-eq v0, v1, :cond_1

    .line 211
    invoke-virtual {p3, p0}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 213
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "modelWriter"    # Lcom/android/launcher3/model/ModelWriter;

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 241
    return-void

    .line 245
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    return-void

    .line 249
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 251
    if-nez p1, :cond_2

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->UNLABELED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 252
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->EMPTY:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getAcceptedSuggestionIndex()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->SUGGESTED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 254
    :cond_4
    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->MANUAL:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    :goto_0
    nop

    .line 256
    .local v0, "newLabelState":Lcom/android/launcher3/model/data/FolderInfo$LabelState;
    sget-object v1, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->MANUAL:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 257
    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    goto :goto_1

    .line 259
    :cond_5
    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    .line 261
    :goto_1
    if-eqz p2, :cond_6

    .line 262
    invoke-virtual {p2, p0}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 264
    :cond_6
    return-void
.end method
