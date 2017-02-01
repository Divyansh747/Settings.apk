.class public Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DashboardItemHolder"
.end annotation


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field public final summary:Landroid/widget/TextView;

.field public final sw:Landroid/widget/Switch;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "hasSwitch"    # Z

    .prologue
    const v2, 0x1020016

    const v1, 0x1020010

    const v0, 0x1020006

    .line 579
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 580
    if-nez p2, :cond_0

    .line 581
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    .line 582
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    .line 583
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->sw:Landroid/widget/Switch;

    .line 578
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    .line 587
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    .line 588
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    .line 589
    const v0, 0x7f11007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->sw:Landroid/widget/Switch;

    goto :goto_0
.end method
