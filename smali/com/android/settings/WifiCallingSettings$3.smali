.class Lcom/android/settings/WifiCallingSettings$3;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WifiCallingSettings;->initPhoneStateListeners(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallingSettings;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallingSettings;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/WifiCallingSettings;
    .param p2, "$anonymous0"    # I
    .param p3, "val$i"    # I

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/WifiCallingSettings$3;->this$0:Lcom/android/settings/WifiCallingSettings;

    iput p3, p0, Lcom/android/settings/WifiCallingSettings$3;->val$i:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 13
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 107
    iget-object v11, p0, Lcom/android/settings/WifiCallingSettings$3;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v11}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 108
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 110
    .local v3, "isNonTtyOrTtyOnVolteEnabled":Z
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v9

    .line 111
    .local v9, "switchBar":Lcom/android/settings/widget/SwitchBar;
    invoke-virtual {v9}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 112
    move v4, v3

    .line 114
    :goto_0
    iget-object v11, p0, Lcom/android/settings/WifiCallingSettings$3;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-static {v11}, Lcom/android/settings/WifiCallingSettings;->-get0(Lcom/android/settings/WifiCallingSettings;)[I

    move-result-object v11

    iget v12, p0, Lcom/android/settings/WifiCallingSettings$3;->val$i:I

    aput p1, v11, v12

    .line 115
    iget-object v11, p0, Lcom/android/settings/WifiCallingSettings$3;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-static {v11}, Lcom/android/settings/WifiCallingSettings;->-wrap1(Lcom/android/settings/WifiCallingSettings;)Z

    move-result v11

    if-eqz v11, :cond_5

    .end local v3    # "isNonTtyOrTtyOnVolteEnabled":Z
    :goto_1
    invoke-virtual {v9, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 117
    const/4 v5, 0x1

    .line 118
    .local v5, "isWfcModeEditable":Z
    const/4 v6, 0x0

    .line 120
    .local v6, "isWfcRoamingModeEditable":Z
    const-string/jumbo v11, "carrier_config"

    invoke-virtual {v0, v11}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 121
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 123
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 125
    const-string/jumbo v11, "editable_wfc_mode_bool"

    .line 124
    invoke-virtual {v1, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 127
    .local v5, "isWfcModeEditable":Z
    const-string/jumbo v11, "editable_wfc_roaming_mode_bool"

    .line 126
    invoke-virtual {v1, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 131
    .end local v1    # "b":Landroid/os/PersistableBundle;
    .end local v5    # "isWfcModeEditable":Z
    .end local v6    # "isWfcRoamingModeEditable":Z
    :cond_0
    iget-object v11, p0, Lcom/android/settings/WifiCallingSettings$3;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v11}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    const-string/jumbo v12, "wifi_calling_mode"

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 132
    .local v7, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v7, :cond_1

    .line 133
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    iget-object v11, p0, Lcom/android/settings/WifiCallingSettings$3;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-static {v11}, Lcom/android/settings/WifiCallingSettings;->-wrap1(Lcom/android/settings/WifiCallingSettings;)Z

    move-result v11

    :goto_2
    invoke-virtual {v7, v11}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 135
    :cond_1
    iget-object v11, p0, Lcom/android/settings/WifiCallingSettings$3;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v11}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    const-string/jumbo v12, "wifi_calling_roaming_mode"

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 136
    .local v8, "pref_roam":Landroid/support/v7/preference/Preference;
    if-eqz v8, :cond_3

    .line 137
    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    iget-object v10, p0, Lcom/android/settings/WifiCallingSettings$3;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-static {v10}, Lcom/android/settings/WifiCallingSettings;->-wrap1(Lcom/android/settings/WifiCallingSettings;)Z

    move-result v10

    :cond_2
    invoke-virtual {v8, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 106
    :cond_3
    return-void

    .line 111
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    .end local v8    # "pref_roam":Landroid/support/v7/preference/Preference;
    .restart local v3    # "isNonTtyOrTtyOnVolteEnabled":Z
    :cond_4
    const/4 v4, 0x0

    .local v4, "isWfcEnabled":Z
    goto :goto_0

    .end local v4    # "isWfcEnabled":Z
    :cond_5
    move v3, v10

    .line 115
    goto :goto_1

    .end local v3    # "isNonTtyOrTtyOnVolteEnabled":Z
    .restart local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v7    # "pref":Landroid/support/v7/preference/Preference;
    :cond_6
    move v11, v10

    .line 133
    goto :goto_2
.end method
