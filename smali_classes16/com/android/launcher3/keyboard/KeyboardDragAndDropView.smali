.class public Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "KeyboardDragAndDropView.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;,
        Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/AbstractFloatingView;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field private static final MINOR_AXIS_WEIGHT:J = 0xdL


# instance fields
.field private mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusIndicator:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;

.field private final mIntList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempNodeInfo:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$7krswmVEmS33m36WpSNQ6RGUnrI(Landroid/graphics/Rect;)I
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8h9ZKp5MgQQYy1vIK8jKQdKbNek(Landroid/graphics/Rect;)I
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Y2B4AFGa3dOCgUkv0LU5Minor_A(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->lambda$getNextSelection$0(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y2kunP0yak1IGXS0rUA2D81k2o8(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->lambda$getNextSelection$1(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mIntList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mDelegates:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect2:Landroid/graphics/Rect;

    .line 73
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempNodeInfo:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 87
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 88
    new-instance v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mFocusIndicator:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->setWillNotDraw(Z)V

    .line 90
    return-void
.end method

.method private getNextSelection(I)Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;
    .locals 20
    .param p1, "direction"    # I

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v1, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v1, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    .line 180
    .local v1, "openFolder":Lcom/android/launcher3/folder/Folder;
    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v2

    .line 181
    .local v2, "pv":Lcom/android/launcher3/PagedView;
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    .line 182
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 183
    iget-object v5, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getDragAndDropAccessibilityDelegate()Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 185
    .end local v4    # "i":I
    :cond_1
    if-nez v1, :cond_2

    .line 186
    iget-object v4, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 187
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/Hotseat;->getDragAndDropAccessibilityDelegate()Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    move-result-object v6

    .line 186
    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 189
    :cond_2
    iget-object v4, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mDelegates:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 195
    iget-object v4, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 196
    return-object v5

    .line 198
    :cond_3
    iget-object v4, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 199
    .local v4, "index":I
    iget-object v6, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    if-eqz v6, :cond_8

    if-gez v4, :cond_4

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_5

    .line 202
    :cond_4
    iget-object v6, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 207
    .local v6, "totalNodes":I
    sparse-switch p1, :sswitch_data_0

    .line 230
    return-object v5

    .line 221
    :sswitch_0
    new-instance v5, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda7;-><init>()V

    .line 222
    .local v5, "majorAxis":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    new-instance v7, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda6;-><init>()V

    .line 223
    .local v7, "minorAxis":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Landroid/graphics/Rect;>;"
    goto :goto_2

    .line 209
    .end local v5    # "majorAxis":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    .end local v7    # "minorAxis":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Landroid/graphics/Rect;>;"
    :sswitch_1
    new-instance v5, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda2;-><init>()V

    .line 210
    .restart local v5    # "majorAxis":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    new-instance v7, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda3;-><init>()V

    .line 211
    .restart local v7    # "minorAxis":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Landroid/graphics/Rect;>;"
    goto :goto_2

    .line 217
    .end local v5    # "majorAxis":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    .end local v7    # "minorAxis":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Landroid/graphics/Rect;>;"
    :sswitch_2
    new-instance v5, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda5;-><init>()V

    .line 218
    .restart local v5    # "majorAxis":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    new-instance v7, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda6;-><init>()V

    .line 219
    .restart local v7    # "minorAxis":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Landroid/graphics/Rect;>;"
    goto :goto_2

    .line 213
    .end local v5    # "majorAxis":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    .end local v7    # "minorAxis":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Landroid/graphics/Rect;>;"
    :sswitch_3
    new-instance v5, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda4;-><init>()V

    .line 214
    .restart local v5    # "majorAxis":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    new-instance v7, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda3;-><init>()V

    .line 215
    .restart local v7    # "minorAxis":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Landroid/graphics/Rect;>;"
    nop

    .line 232
    :goto_2
    iget-object v8, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    iget-object v9, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempNodeInfo:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->populate(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 234
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 235
    .local v8, "minWeight":F
    const/4 v9, 0x0

    .line 236
    .local v9, "match":Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v6, :cond_7

    .line 237
    iget-object v11, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    .line 238
    .local v11, "node":Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;
    iget-object v12, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempNodeInfo:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v11, v12}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->populate(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v12

    iget-object v13, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 240
    iget-object v12, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect2:Landroid/graphics/Rect;

    invoke-interface {v5, v12, v13}, Ljava/util/function/ToIntBiFunction;->applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 241
    .local v12, "majorAxisWeight":I
    if-gtz v12, :cond_5

    .line 242
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_4

    .line 244
    :cond_5
    iget-object v13, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect2:Landroid/graphics/Rect;

    invoke-interface {v7, v13}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v13

    iget-object v14, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempRect:Landroid/graphics/Rect;

    .line 245
    invoke-interface {v7, v14}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v14

    sub-int/2addr v13, v14

    .line 247
    .local v13, "minorAxisWeight":I
    mul-int v14, v12, v12

    int-to-long v14, v14

    move-object/from16 v16, v1

    .end local v1    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .local v16, "openFolder":Lcom/android/launcher3/folder/Folder;
    mul-int v1, v13, v13

    move-object/from16 v17, v2

    .end local v2    # "pv":Lcom/android/launcher3/PagedView;
    .local v17, "pv":Lcom/android/launcher3/PagedView;
    int-to-long v1, v1

    const-wide/16 v18, 0xd

    mul-long v1, v1, v18

    add-long/2addr v14, v1

    long-to-float v1, v14

    .line 249
    .local v1, "weight":F
    cmpg-float v2, v1, v8

    if-gez v2, :cond_6

    .line 250
    move v2, v1

    .line 251
    .end local v8    # "minWeight":F
    .local v2, "minWeight":F
    move-object v8, v11

    move-object v9, v8

    move v8, v2

    .line 236
    .end local v1    # "weight":F
    .end local v2    # "minWeight":F
    .end local v11    # "node":Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;
    .end local v12    # "majorAxisWeight":I
    .end local v13    # "minorAxisWeight":I
    .restart local v8    # "minWeight":F
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_3

    .line 254
    .end local v10    # "i":I
    .end local v16    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .end local v17    # "pv":Lcom/android/launcher3/PagedView;
    .local v1, "openFolder":Lcom/android/launcher3/folder/Folder;
    .local v2, "pv":Lcom/android/launcher3/PagedView;
    :cond_7
    return-object v9

    .line 225
    .end local v5    # "majorAxis":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    .end local v7    # "minorAxis":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Landroid/graphics/Rect;>;"
    .end local v8    # "minWeight":F
    .end local v9    # "match":Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;
    :sswitch_4
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .end local v2    # "pv":Lcom/android/launcher3/PagedView;
    .restart local v16    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .restart local v17    # "pv":Lcom/android/launcher3/PagedView;
    iget-object v1, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    add-int/lit8 v2, v4, 0x1

    rem-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    return-object v1

    .line 227
    .end local v16    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .end local v17    # "pv":Lcom/android/launcher3/PagedView;
    .restart local v1    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .restart local v2    # "pv":Lcom/android/launcher3/PagedView;
    :sswitch_5
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .end local v2    # "pv":Lcom/android/launcher3/PagedView;
    .restart local v16    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .restart local v17    # "pv":Lcom/android/launcher3/PagedView;
    iget-object v1, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    add-int v2, v4, v6

    add-int/lit8 v2, v2, -0x1

    rem-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    return-object v1

    .line 199
    .end local v6    # "totalNodes":I
    .end local v16    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .end local v17    # "pv":Lcom/android/launcher3/PagedView;
    .restart local v1    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .restart local v2    # "pv":Lcom/android/launcher3/PagedView;
    :cond_8
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 200
    .end local v1    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .end local v2    # "pv":Lcom/android/launcher3/PagedView;
    .restart local v16    # "openFolder":Lcom/android/launcher3/folder/Folder;
    .restart local v17    # "pv":Lcom/android/launcher3/PagedView;
    :goto_5
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic lambda$getNextSelection$0(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "delegate"    # Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
    .param p2, "id"    # Ljava/lang/Integer;

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mNodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;-><init>(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$getNextSelection$1(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V
    .locals 2
    .param p1, "delegate"    # Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mIntList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mIntList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mIntList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 193
    return-void
.end method

.method static synthetic lambda$getNextSelection$2(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;

    .line 209
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$getNextSelection$3(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;

    .line 213
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$getNextSelection$4(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;

    .line 217
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$getNextSelection$5(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;

    .line 221
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private setCurrentSelection(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;)V
    .locals 10
    .param p1, "nodeInfo"    # Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    .line 131
    iput-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    .line 132
    sget v0, Lcom/android/launcher3/R$id;->label:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempNodeInfo:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 133
    invoke-virtual {p1, v1}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->populate(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 136
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mTempNodeInfo:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 137
    iget-object v1, p1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {v1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getHost()Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, "host":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 139
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Lcom/android/launcher3/PagedView;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 140
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/PagedView;

    .line 141
    .local v3, "pv":Lcom/android/launcher3/PagedView;
    invoke-virtual {v3, v1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 143
    .local v5, "pageIndex":I
    invoke-virtual {v3, v5}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 144
    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v6

    invoke-virtual {v3, v5}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 146
    .end local v3    # "pv":Lcom/android/launcher3/PagedView;
    .end local v5    # "pageIndex":I
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [F

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    aput v5, v3, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    const/4 v6, 0x1

    aput v5, v3, v6

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    const/4 v7, 0x2

    aput v5, v3, v7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    const/4 v8, 0x3

    aput v5, v3, v8

    .line 147
    .local v3, "pos":[F
    iget-object v5, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v5

    invoke-static {v1, v5, v3, v6}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    .line 149
    new-instance v5, Landroid/graphics/RectF;

    aget v4, v3, v4

    aget v9, v3, v6

    aget v7, v3, v7

    aget v8, v3, v8

    invoke-direct {v5, v4, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 150
    iget-object v4, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mFocusIndicator:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;->changeFocus(Ljava/lang/Object;Z)V

    .line 151
    return-void
.end method


# virtual methods
.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 160
    invoke-direct {p0, p2}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->getNextSelection(I)Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    move-result-object v0

    .line 161
    .local v0, "nodeInfo":Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;
    if-nez v0, :cond_0

    .line 162
    const/4 v1, 0x0

    return v1

    .line 164
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->setCurrentSelection(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;)V

    .line 165
    const/4 v1, 0x1

    return v1
.end method

.method protected handleClose(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setDefaultKeyMode(I)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mIsOpen:Z

    .line 98
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 102
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mFocusIndicator:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;->draw(Landroid/graphics/Canvas;)V

    .line 156
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 259
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, v0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    iget-object v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    iget v1, v1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->id:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    .line 262
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 1
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mCurrentSelection:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, v0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->setCurrentSelection(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;)V

    .line 128
    :cond_0
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .locals 1
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 118
    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->close(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 113
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->setPadding(IIII)V

    .line 114
    return-void
.end method

.method public showForIcon(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 7
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "dragOptions"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mIsOpen:Z

    .line 272
    iget-object v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 273
    iget-object v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 277
    .local v1, "currentParent":Lcom/android/launcher3/CellLayout;
    const/4 v2, 0x2

    new-array v3, v2, [F

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 278
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v2, v4

    aput v2, v3, v0

    move-object v2, v3

    .line 279
    .local v2, "iconPos":[F
    invoke-static {p1, v1, v2, v5}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    .line 281
    iget-object v3, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v3, p2, p3}, Lcom/android/launcher3/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 283
    nop

    .line 284
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getDragAndDropAccessibilityDelegate()Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    move-result-object v3

    .line 285
    .local v3, "dndDelegate":Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
    new-instance v4, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    aget v6, v2, v5

    aget v0, v2, v0

    .line 286
    invoke-virtual {v3, v6, v0}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getVirtualViewAt(FF)I

    move-result v0

    invoke-direct {v4, v3, v0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;-><init>(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;I)V

    .line 285
    invoke-direct {p0, v4}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->setCurrentSelection(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;)V

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/Launcher;->setDefaultKeyMode(I)V

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->requestFocus()Z

    .line 290
    return-void
.end method
