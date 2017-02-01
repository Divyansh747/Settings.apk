.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;
    }
.end annotation


# instance fields
.field private mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

.field private mUnavailable:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private getCellularToWlanValue()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isAutoConnectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    return v2

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cellular_to_wlan_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private ifNotifyConnect()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 339
    const-string/jumbo v2, "notify_user_when_connect_cmcc"

    .line 338
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initPreferences()V
    .locals 15

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v12, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v12, "com.android.certinstaller"

    .line 131
    const-string/jumbo v13, "com.android.certinstaller.CertInstallerMain"

    .line 130
    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v12, "install_as_uid"

    const/16 v13, 0x3f2

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string/jumbo v12, "install_credentials"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 134
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v4, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 136
    const-string/jumbo v12, "enable_hs2"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    .line 137
    .local v1, "enableHs2":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 138
    const v13, 0x11200ce

    .line 137
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 139
    new-instance v12, Lcom/android/settings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v12, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v1, v12}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 152
    const-string/jumbo v13, "wifi_hotspot2_enabled"

    const/4 v14, 0x0

    .line 151
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 152
    const/4 v13, 0x1

    .line 151
    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v1, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 159
    :cond_0
    :goto_1
    new-instance v7, Landroid/content/Intent;

    .line 160
    const-class v12, Lcom/android/settings/Settings$WifiP2pSettingsActivity;

    .line 159
    invoke-direct {v7, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v7, "wifiDirectIntent":Landroid/content/Intent;
    const-string/jumbo v12, "wifi_direct"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 162
    .local v8, "wifiDirectPref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v8, v7}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 165
    const-string/jumbo v12, "wps_push_button"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    .line 166
    .local v11, "wpsPushPref":Landroid/support/v7/preference/Preference;
    new-instance v12, Lcom/android/settings/wifi/AdvancedWifiSettings$2;

    invoke-direct {v12, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    const-string/jumbo v12, "wps_pin_entry"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    .line 176
    .local v10, "wpsPinPref":Landroid/support/v7/preference/Preference;
    new-instance v12, Lcom/android/settings/wifi/AdvancedWifiSettings$3;

    invoke-direct {v12, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v10, v12}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    const-string/jumbo v12, "wifi_priority_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 186
    .local v5, "prioritySettingPref":Landroid/support/v7/preference/Preference;
    if-eqz v5, :cond_9

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0015

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 195
    :cond_1
    :goto_2
    const-string/jumbo v12, "auto_connect_type"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/CheckBoxPreference;

    .line 194
    iput-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    .line 196
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v12, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0016

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 198
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isAutoConnectEnabled()Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v12, p0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    :cond_2
    :goto_3
    const-string/jumbo v12, "cellular_to_wlan"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/ListPreference;

    .line 205
    iput-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    .line 207
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    if-eqz v12, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0017

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 209
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getCellularToWlanValue()I

    move-result v6

    .line 210
    .local v6, "value":I
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 211
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v12, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    .line 212
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    .end local v6    # "value":I
    :cond_3
    :goto_4
    const-string/jumbo v12, "wlan_to_cellular_hint"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/CheckBoxPreference;

    .line 220
    .local v9, "wlanToCellularHintPref":Landroid/support/v7/preference/CheckBoxPreference;
    if-eqz v9, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c001a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 222
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isWlanToCellHintEnable()Z

    move-result v12

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 223
    invoke-virtual {v9, p0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    :cond_4
    :goto_5
    const-string/jumbo v12, "notify_ap_connected"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/CheckBoxPreference;

    .line 231
    .local v3, "notifyConnectedApPref":Landroid/support/v7/preference/CheckBoxPreference;
    if-eqz v3, :cond_5

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0018

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 233
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->ifNotifyConnect()Z

    move-result v12

    invoke-virtual {v3, v12}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 234
    invoke-virtual {v3, p0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 240
    :cond_5
    :goto_6
    const-string/jumbo v12, "cellular_to_wlan_hint"

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    .line 241
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v12, :cond_6

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0019

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 243
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isCellularToWlanHintEnable()Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v12, p0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    :cond_6
    :goto_7
    return-void

    .line 151
    .end local v3    # "notifyConnectedApPref":Landroid/support/v7/preference/CheckBoxPreference;
    .end local v5    # "prioritySettingPref":Landroid/support/v7/preference/Preference;
    .end local v7    # "wifiDirectIntent":Landroid/content/Intent;
    .end local v8    # "wifiDirectPref":Landroid/support/v7/preference/Preference;
    .end local v9    # "wlanToCellularHintPref":Landroid/support/v7/preference/CheckBoxPreference;
    .end local v10    # "wpsPinPref":Landroid/support/v7/preference/Preference;
    .end local v11    # "wpsPushPref":Landroid/support/v7/preference/Preference;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 154
    :cond_8
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 191
    .restart local v5    # "prioritySettingPref":Landroid/support/v7/preference/Preference;
    .restart local v7    # "wifiDirectIntent":Landroid/content/Intent;
    .restart local v8    # "wifiDirectPref":Landroid/support/v7/preference/Preference;
    .restart local v10    # "wpsPinPref":Landroid/support/v7/preference/Preference;
    .restart local v11    # "wpsPushPref":Landroid/support/v7/preference/Preference;
    :cond_9
    const-string/jumbo v12, "AdvancedWifiSettings"

    const-string/jumbo v13, "Fail to get priority pref..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 201
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_3

    .line 214
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_4

    .line 225
    .restart local v9    # "wlanToCellularHintPref":Landroid/support/v7/preference/CheckBoxPreference;
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_5

    .line 236
    .restart local v3    # "notifyConnectedApPref":Landroid/support/v7/preference/CheckBoxPreference;
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_6

    .line 246
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_7
.end method

.method private isAutoConnectEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 344
    const-string/jumbo v2, "wifi_auto_connect_type"

    .line 343
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCellularToWlanHintEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 323
    const-string/jumbo v2, "cellular_to_wlan_hint"

    .line 322
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWlanToCellHintEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 328
    const-string/jumbo v2, "wlan_to_cellular_hint"

    .line 327
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setApConnectedNotify(Z)V
    .locals 3
    .param p1, "needNotify"    # Z

    .prologue
    .line 379
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 380
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 381
    const-string/jumbo v2, "notify_user_when_connect_cmcc"

    .line 380
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    return-void

    .line 379
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private setAutoConnectTypeEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 348
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 349
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 350
    const-string/jumbo v2, "wifi_auto_connect_type"

    .line 349
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    return-void

    .line 348
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private setCellToWlanType(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cellular_to_wlan_type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0d3c

    .line 390
    const/4 v3, 0x0

    .line 389
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setCellularToWlanHintEnable(Z)V
    .locals 3
    .param p1, "needNotify"    # Z

    .prologue
    .line 373
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 374
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 375
    const-string/jumbo v2, "cellular_to_wlan_hint"

    .line 374
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    return-void

    .line 373
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private setWlanToCellularHintEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 332
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 333
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 334
    const-string/jumbo v2, "wlan_to_cellular_hint"

    .line 333
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    return-void

    .line 332
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private updateAutoConnectPref(Z)V
    .locals 1
    .param p1, "isAutoMode"    # Z

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setAutoConnectTypeEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 405
    return-void
.end method

.method private updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method

.method private updateCellularToWifiPrefs(Z)V
    .locals 3
    .param p1, "isAutoEnabled"    # Z

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 396
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 398
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 400
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cellular_to_wlan_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    .line 394
    return-void

    .line 399
    .end local v0    # "defaultValue":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private updateCellularToWlanHintPref(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 369
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setCellularToWlanHintEnable(Z)V

    .line 367
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x68

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e043f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 111
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mUnavailable:Z

    .line 104
    new-instance v0, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 100
    :goto_0
    return-void

    .line 106
    :cond_0
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 275
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "wlan_to_cellular_hint"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p2

    .line 278
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 279
    .local v0, "checked":Z
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setWlanToCellularHintEnable(Z)V

    .line 282
    .end local v0    # "checked":Z
    :cond_0
    const-string/jumbo v4, "auto_connect_type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, p2

    .line 283
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 284
    .restart local v0    # "checked":Z
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setAutoConnectTypeEnabled(Z)V

    .line 285
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellularToWifiPrefs(Z)V

    .line 286
    if-nez v0, :cond_1

    .line 287
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 291
    .end local v0    # "checked":Z
    :cond_1
    const-string/jumbo v4, "cellular_to_wlan"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p2

    .line 292
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 293
    .local v3, "value":I
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setCellToWlanType(I)V

    .line 294
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 295
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v4, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    .line 296
    if-nez v3, :cond_5

    move v4, v5

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateAutoConnectPref(Z)V

    .line 297
    if-eqz v3, :cond_2

    .line 298
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 302
    .end local v3    # "value":I
    :cond_2
    const-string/jumbo v4, "notify_ap_connected"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p2

    .line 303
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 304
    .restart local v0    # "checked":Z
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setApConnectedNotify(Z)V

    .line 307
    .end local v0    # "checked":Z
    :cond_3
    const-string/jumbo v4, "cellular_to_wlan_hint"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 308
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 309
    .restart local v0    # "checked":Z
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setCellularToWlanHintEnable(Z)V

    .line 310
    if-nez v0, :cond_4

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0d38

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 317
    .end local v0    # "checked":Z
    :cond_4
    return v5

    .restart local v3    # "value":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    move v4, v6

    .line 296
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mUnavailable:Z

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 120
    :cond_0
    return-void
.end method
