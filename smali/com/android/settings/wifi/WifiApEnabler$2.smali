.class Lcom/android/settings/wifi/WifiApEnabler$2;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApEnabler;->showWifiTetheringActivatedDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p2, "val$ctx"    # Landroid/content/Context;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->val$ctx:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->-wrap2(Lcom/android/settings/wifi/WifiApEnabler;Landroid/content/Context;)V

    .line 192
    return-void
.end method
