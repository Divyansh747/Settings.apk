.class Lcom/android/settings/dashboard/DashboardAdapter$6;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->onBindSuggestionHeader(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V
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
    .line 415
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap0(Lcom/android/settings/dashboard/DashboardAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {}, Lcom/android/settings/dashboard/DashboardAdapter;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-set0(Lcom/android/settings/dashboard/DashboardAdapter;I)I

    .line 423
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap1(Lcom/android/settings/dashboard/DashboardAdapter;)V

    .line 417
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-set0(Lcom/android/settings/dashboard/DashboardAdapter;I)I

    goto :goto_0
.end method
