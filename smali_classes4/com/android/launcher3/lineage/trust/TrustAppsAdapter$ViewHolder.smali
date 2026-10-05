.class Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TrustAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private mHiddenView:Landroid/widget/ImageView;

.field private mIconView:Landroid/widget/ImageView;

.field private mLabelView:Landroid/widget/TextView;

.field private mProtectedView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;


# direct methods
.method public static synthetic $r8$lambda$bRLELGk05ubrNB8e8Ig894r5ztg(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;Lcom/android/launcher3/lineage/trust/db/TrustComponent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->lambda$bind$1(Lcom/android/launcher3/lineage/trust/db/TrustComponent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cnv9bHCJ6lXR-z-_mr0492AI7dQ(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;Lcom/android/launcher3/lineage/trust/db/TrustComponent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->lambda$bind$0(Lcom/android/launcher3/lineage/trust/db/TrustComponent;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHiddenList(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->updateHiddenList(ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateProtectedList(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->updateProtectedList(ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 83
    iput-object p1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->this$0:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;

    .line 84
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 86
    sget v0, Lcom/android/launcher3/R$id;->item_hidden_app_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcom/android/launcher3/R$id;->item_hidden_app_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/android/launcher3/R$id;->item_hidden_app_switch:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mHiddenView:Landroid/widget/ImageView;

    .line 89
    sget v0, Lcom/android/launcher3/R$id;->item_protected_app_switch:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mProtectedView:Landroid/widget/ImageView;

    .line 90
    return-void
.end method

.method private synthetic lambda$bind$0(Lcom/android/launcher3/lineage/trust/db/TrustComponent;Landroid/view/View;)V
    .locals 3
    .param p1, "component"    # Lcom/android/launcher3/lineage/trust/db/TrustComponent;
    .param p2, "v"    # Landroid/view/View;

    .line 104
    invoke-virtual {p1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->invertVisibility()V

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mHiddenView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    sget v1, Lcom/android/launcher3/R$drawable;->avd_hidden_lock:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/launcher3/R$drawable;->avd_hidden_unlock:I

    .line 106
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mHiddenView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 110
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 111
    .local v1, "position":I
    nop

    .line 112
    new-instance v2, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$1;-><init>(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 118
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 123
    return-void
.end method

.method private synthetic lambda$bind$1(Lcom/android/launcher3/lineage/trust/db/TrustComponent;Landroid/view/View;)V
    .locals 3
    .param p1, "component"    # Lcom/android/launcher3/lineage/trust/db/TrustComponent;
    .param p2, "v"    # Landroid/view/View;

    .line 126
    invoke-virtual {p1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->invertProtection()V

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mProtectedView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->isProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    sget v1, Lcom/android/launcher3/R$drawable;->avd_protected_lock:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/launcher3/R$drawable;->avd_protected_unlock:I

    .line 128
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mProtectedView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 132
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 133
    .local v1, "position":I
    nop

    .line 134
    new-instance v2, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$2;-><init>(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 140
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 145
    return-void
.end method

.method private updateHiddenList(ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "component"    # Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->this$0:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;

    invoke-static {v0}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->-$$Nest$fgetmListener(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;)Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;->onHiddenItemChanged(Lcom/android/launcher3/lineage/trust/db/TrustComponent;)V

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->updateList(ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V

    .line 151
    return-void
.end method

.method private updateList(ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "component"    # Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->this$0:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;

    invoke-static {v0}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->-$$Nest$fgetmList(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->this$0:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->notifyItemChanged(I)V

    .line 161
    return-void
.end method

.method private updateProtectedList(ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "component"    # Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->this$0:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;

    invoke-static {v0}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->-$$Nest$fgetmListener(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;)Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;->onProtectedItemChanged(Lcom/android/launcher3/lineage/trust/db/TrustComponent;)V

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->updateList(ILcom/android/launcher3/lineage/trust/db/TrustComponent;)V

    .line 156
    return-void
.end method


# virtual methods
.method bind(Lcom/android/launcher3/lineage/trust/db/TrustComponent;Z)V
    .locals 2
    .param p1, "component"    # Lcom/android/launcher3/lineage/trust/db/TrustComponent;
    .param p2, "hasSecureKeyguard"    # Z

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mHiddenView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    sget v1, Lcom/android/launcher3/R$drawable;->ic_hidden_locked:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/launcher3/R$drawable;->ic_hidden_unlocked:I

    .line 96
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mProtectedView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->isProtected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    sget v1, Lcom/android/launcher3/R$drawable;->ic_protected_locked:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/android/launcher3/R$drawable;->ic_protected_unlocked:I

    .line 98
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mProtectedView:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mHiddenView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;Lcom/android/launcher3/lineage/trust/db/TrustComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->mProtectedView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;Lcom/android/launcher3/lineage/trust/db/TrustComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method
