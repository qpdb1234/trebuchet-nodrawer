.class Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "TrustAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->bind(Lcom/android/launcher3/lineage/trust/db/TrustComponent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;

.field final synthetic val$component:Lcom/android/launcher3/lineage/trust/db/TrustComponent;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;

    .line 112
    iput-object p1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$1;->this$1:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;

    iput p2, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$1;->val$position:I

    iput-object p3, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$1;->val$component:Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$1;->this$1:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;

    iget v1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$1;->val$position:I

    iget-object v2, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$1;->val$component:Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->-$$Nest$mupdateHiddenList(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V

    .line 116
    return-void
.end method
