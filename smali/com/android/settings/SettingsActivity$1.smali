.class Lcom/android/settings/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$1;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 402
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    invoke-static {p2}, Lcom/android/settings/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result v1

    .line 406
    .local v1, "batteryPresent":Z
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$1;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->-get0(Lcom/android/settings/SettingsActivity;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 407
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$1;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2, v1}, Lcom/android/settings/SettingsActivity;->-set0(Lcom/android/settings/SettingsActivity;Z)Z

    .line 408
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$1;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->-wrap1(Lcom/android/settings/SettingsActivity;)V

    .line 401
    .end local v1    # "batteryPresent":Z
    :cond_0
    return-void
.end method
