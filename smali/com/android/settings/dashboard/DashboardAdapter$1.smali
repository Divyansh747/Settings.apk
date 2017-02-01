.class Lcom/android/settings/dashboard/DashboardAdapter$1;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardAdapter;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get5(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get5(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-get5(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap2(Lcom/android/settings/dashboard/DashboardAdapter;Z)V

    .line 316
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
