.class Lcom/android/settings/DreamSettings$3;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DreamSettings;

.field final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DreamSettings;
    .param p2, "val$onClick"    # Ljava/lang/Runnable;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/DreamSettings$3;->this$0:Lcom/android/settings/DreamSettings;

    iput-object p2, p0, Lcom/android/settings/DreamSettings$3;->val$onClick:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/DreamSettings$3;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 172
    const/4 v0, 0x1

    return v0
.end method
