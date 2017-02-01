.class Lcom/android/settings/WirelessSettings$8;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WirelessSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/WirelessSettings;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$8;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 411
    const/4 v3, -0x1

    .line 413
    .local v3, "wfcPreference":I
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$8;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->-get7(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/wfcservice/IWFCService;

    move-result-object v4

    invoke-interface {v4}, Lorg/codeaurora/wfcservice/IWFCService;->getWifiCallingPreference()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 419
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 422
    .local v0, "isChecked":Z
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$8;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->-get7(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/wfcservice/IWFCService;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lorg/codeaurora/wfcservice/IWFCService;->setWifiCalling(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 427
    :goto_0
    if-nez v0, :cond_0

    .line 428
    check-cast p1, Lcom/android/settings/WFCPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    const v4, 0x7f0e06d2

    invoke-virtual {p1, v4}, Lcom/android/settings/WFCPreference;->setSummary(I)V

    .line 431
    :cond_0
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$8;->this$0:Lcom/android/settings/WirelessSettings;

    iget-object v5, p0, Lcom/android/settings/WirelessSettings$8;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v5}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5, v0, v3}, Lcom/android/settings/WirelessSettings;->-wrap0(Lcom/android/settings/WirelessSettings;Landroid/content/Context;ZI)V

    .line 432
    return v6

    .line 414
    .end local v0    # "isChecked":Z
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    .restart local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 415
    .local v2, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "WirelessSettings"

    const-string/jumbo v5, "getWifiCallingPreference RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v6

    .line 423
    .end local v2    # "re":Landroid/os/RemoteException;
    .end local p2    # "value":Ljava/lang/Object;
    .restart local v0    # "isChecked":Z
    :catch_1
    move-exception v1

    .line 424
    .local v1, "r":Landroid/os/RemoteException;
    const-string/jumbo v4, "WirelessSettings"

    const-string/jumbo v5, "setWifiCalling RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
