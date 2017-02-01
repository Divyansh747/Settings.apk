.class Lcom/android/settings/WirelessSettings$2$1;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WirelessSettings$2;->updateWFCMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/WirelessSettings$2;

.field final synthetic val$errorCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/WirelessSettings$2;
    .param p2, "val$errorCode"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$2$1;->this$1:Lcom/android/settings/WirelessSettings$2;

    iput-object p2, p0, Lcom/android/settings/WirelessSettings$2$1;->val$errorCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v2, "new UI thread."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2$1;->this$1:Lcom/android/settings/WirelessSettings$2;

    iget-object v1, v1, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->-get7(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/wfcservice/IWFCService;

    move-result-object v1

    invoke-interface {v1}, Lorg/codeaurora/wfcservice/IWFCService;->getWifiCallingStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2$1;->this$1:Lcom/android/settings/WirelessSettings$2;

    iget-object v1, v1, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->-get1(Lcom/android/settings/WirelessSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/WFCPreference;

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2$1;->this$1:Lcom/android/settings/WirelessSettings$2;

    iget-object v1, v1, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->-get1(Lcom/android/settings/WirelessSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/WFCPreference;

    iget-object v2, p0, Lcom/android/settings/WirelessSettings$2$1;->val$errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/WFCPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2$1;->this$1:Lcom/android/settings/WirelessSettings$2;

    iget-object v1, v1, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->-get1(Lcom/android/settings/WirelessSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WirelessSettings$2$1;->val$errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "r":Landroid/os/RemoteException;
    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v2, "getWifiCallingStatus RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
