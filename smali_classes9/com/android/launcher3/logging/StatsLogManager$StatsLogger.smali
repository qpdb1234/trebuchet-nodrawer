.class public interface abstract Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
.super Ljava/lang/Object;
.source "StatsLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/StatsLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatsLogger"
.end annotation


# virtual methods
.method public log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 935
    return-void
.end method

.method public sendToInteractionJankMonitor(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View;)V
    .locals 0
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .param p2, "v"    # Landroid/view/View;

    .line 942
    return-void
.end method

.method public withCardinality(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "cardinality"    # I

    .line 907
    return-object p0
.end method

.method public withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "containerInfo"    # Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 886
    return-object p0
.end method

.method public withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "dstState"    # I

    .line 855
    return-object p0
.end method

.method public withEditText(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "editText"    # Ljava/lang/String;

    .line 876
    return-object p0
.end method

.method public withFeatures(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "feature"    # I

    .line 921
    return-object p0
.end method

.method public withFromState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "fromState"    # Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 862
    return-object p0
.end method

.method public withInputType(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "inputType"    # I

    .line 914
    return-object p0
.end method

.method public withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 834
    return-object p0
.end method

.method public withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 826
    return-object p0
.end method

.method public withPackageName(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 928
    return-object p0
.end method

.method public withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "rank"    # I

    .line 841
    return-object p0
.end method

.method public withSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "slice"    # Lcom/android/launcher3/logger/LauncherAtom$Slice;

    .line 900
    return-object p0
.end method

.method public withSliceItem(Landroidx/slice/SliceItem;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "sliceItem"    # Landroidx/slice/SliceItem;

    .line 893
    return-object p0
.end method

.method public withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "srcState"    # I

    .line 848
    return-object p0
.end method

.method public withToState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "toState"    # Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 869
    return-object p0
.end method
