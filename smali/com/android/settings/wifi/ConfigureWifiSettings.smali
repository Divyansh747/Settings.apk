.class public Lcom/android/settings/wifi/ConfigureWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ConfigureWifiSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ConfigureWifiSettings$1;
    }
.end annotation


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/ConfigureWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 316
    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;-><init>(Lcom/android/settings/wifi/ConfigureWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    return-void
.end method

.method private avoidBadWifiConfig()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    const v2, 0x10e0011

    .line 174
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private avoidBadWifiCurrentSettings()Z
    .locals 3

    .prologue
    .line 179
    const-string/jumbo v0, "1"

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 180
    const-string/jumbo v2, "network_avoid_bad_wifi"

    .line 179
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private initPreferences()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 102
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 104
    :cond_0
    const-string/jumbo v11, "saved_networks"

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->removePreference(Ljava/lang/String;)V

    .line 108
    :cond_1
    const-string/jumbo v11, "notify_open_networks"

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    .line 109
    .local v3, "notifyOpenNetworks":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 110
    const-string/jumbo v12, "wifi_networks_available_notification_on"

    .line 109
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_7

    :goto_0
    invoke-virtual {v3, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 111
    iget-object v9, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    invoke-virtual {v3, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 114
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->avoidBadWifiConfig()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 116
    const-string/jumbo v9, "wifi_cellular_data_fallback"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/ConfigureWifiSettings;->removePreference(Ljava/lang/String;)V

    .line 128
    :cond_2
    :goto_1
    const-string/jumbo v9, "wifi_assistant"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/AppListSwitchPreference;

    iput-object v9, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    .line 130
    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v5

    .line 131
    .local v5, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 134
    :cond_3
    iget-object v9, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    if-eqz v9, :cond_4

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 138
    :cond_4
    :goto_2
    const-string/jumbo v9, "sleep_policy"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    .line 139
    .local v6, "sleepPolicyPref":Landroid/support/v7/preference/ListPreference;
    if-eqz v6, :cond_6

    .line 140
    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 141
    const v9, 0x7f0a0042

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 143
    :cond_5
    invoke-virtual {v6, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 145
    const-string/jumbo v10, "wifi_sleep_policy"

    .line 146
    const/4 v11, 0x2

    .line 144
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 147
    .local v8, "value":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "stringValue":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/ConfigureWifiSettings;->updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 101
    .end local v7    # "stringValue":Ljava/lang/String;
    .end local v8    # "value":I
    :cond_6
    return-void

    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    .end local v6    # "sleepPolicyPref":Landroid/support/v7/preference/ListPreference;
    :cond_7
    move v9, v10

    .line 109
    goto :goto_0

    .line 119
    .restart local v1    # "context":Landroid/content/Context;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->avoidBadWifiCurrentSettings()Z

    move-result v2

    .line 120
    .local v2, "currentSetting":Z
    const-string/jumbo v9, "wifi_cellular_data_fallback"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    .line 123
    .local v4, "pref":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v4, :cond_2

    .line 124
    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 132
    .end local v2    # "currentSetting":Z
    .end local v4    # "pref":Landroid/support/v14/preference/SwitchPreference;
    .restart local v5    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    :cond_9
    iget-object v9, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/AppListSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/ConfigureWifiSettings;->initWifiAssistantPreference(Ljava/util/Collection;)V

    goto :goto_2
.end method

.method private initWifiAssistantPreference(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 301
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    .line 302
    .local v2, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 303
    .local v1, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "scorer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 304
    .local v3, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v5, v3, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    aput-object v5, v2, v1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v3    # "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings/AppListSwitchPreference;

    .line 308
    iget-object v6, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v6}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v6

    .line 307
    invoke-virtual {v5, v2, v6}, Lcom/android/settings/AppListSwitchPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 299
    return-void
.end method

.method private refreshWifiInfo()V
    .locals 14

    .prologue
    const v13, 0x7f0e0536

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, "context":Landroid/content/Context;
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 255
    .local v7, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v11, "mac_address"

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 256
    .local v9, "wifiMacAddressPref":Landroid/support/v7/preference/Preference;
    if-nez v7, :cond_6

    .line 257
    .local v4, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .end local v4    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 261
    const-string/jumbo v11, "current_ip_address"

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 262
    .local v8, "wifiIpAddressPref":Landroid/support/v7/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "ipAddress":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 264
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 263
    .end local v3    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v8, v12}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 268
    const-string/jumbo v11, "current_gateway"

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 269
    .local v6, "wifiGatewayPref":Landroid/support/v7/preference/Preference;
    const/4 v2, 0x0

    .line 270
    .local v2, "gateway":Ljava/lang/String;
    const-string/jumbo v11, "current_netmask"

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    .line 271
    .local v10, "wifiNetmaskPref":Landroid/support/v7/preference/Preference;
    const/4 v5, 0x0

    .line 272
    .local v5, "netmask":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0014

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 273
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 274
    .local v1, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v7, :cond_1

    .line 275
    if-eqz v1, :cond_1

    .line 276
    iget v11, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v11}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "gateway":Ljava/lang/String;
    iget v11, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v11}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    .end local v2    # "gateway":Ljava/lang/String;
    .end local v5    # "netmask":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_3

    .line 281
    if-eqz v2, :cond_2

    iget v11, v1, Landroid/net/DhcpInfo;->gateway:I

    if-nez v11, :cond_8

    .line 282
    :cond_2
    invoke-virtual {p0, v13}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 281
    :goto_2
    invoke-virtual {v6, v11}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    :cond_3
    if-eqz v10, :cond_5

    .line 285
    if-eqz v5, :cond_4

    iget v11, v1, Landroid/net/DhcpInfo;->netmask:I

    if-nez v11, :cond_9

    .line 286
    :cond_4
    invoke-virtual {p0, v13}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 285
    :goto_3
    invoke-virtual {v10, v11}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    .end local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_5
    :goto_4
    return-void

    .line 256
    .end local v6    # "wifiGatewayPref":Landroid/support/v7/preference/Preference;
    .end local v8    # "wifiIpAddressPref":Landroid/support/v7/preference/Preference;
    .end local v10    # "wifiNetmaskPref":Landroid/support/v7/preference/Preference;
    :cond_6
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 258
    .restart local v4    # "macAddress":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .end local v4    # "macAddress":Ljava/lang/String;
    .restart local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v6    # "wifiGatewayPref":Landroid/support/v7/preference/Preference;
    .restart local v8    # "wifiIpAddressPref":Landroid/support/v7/preference/Preference;
    .restart local v10    # "wifiNetmaskPref":Landroid/support/v7/preference/Preference;
    :cond_8
    move-object v11, v2

    .line 282
    goto :goto_2

    :cond_9
    move-object v11, v5

    .line 286
    goto :goto_3

    .line 289
    .end local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    .local v2, "gateway":Ljava/lang/String;
    .restart local v5    # "netmask":Ljava/lang/String;
    :cond_a
    if-eqz v6, :cond_b

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 292
    :cond_b
    if-eqz v10, :cond_5

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4
.end method

.method private updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p2, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    const v2, 0x7f0a0042

    .line 158
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 160
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 162
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    return-void

    .line 157
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    :cond_0
    const v2, 0x7f0a0041

    .restart local v2    # "summaryArrayResId":I
    goto :goto_0

    .line 159
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    const-string/jumbo v4, "ConfigureWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 313
    const/16 v0, 0x152

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 83
    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->addPreferencesFromResource(I)V

    .line 71
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 205
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v7, "wifi_assistant"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 209
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v1, p2}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v6

    .line 210
    .local v6, "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v6, :cond_0

    .line 211
    iget-object v7, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v7, v8}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    .line 212
    return v11

    .line 215
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 220
    iget-object v7, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    .line 221
    iget-object v8, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    .line 220
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ConfigureWifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 232
    return v10

    .line 224
    :cond_1
    const-string/jumbo v7, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string/jumbo v7, "packageName"

    .line 226
    iget-object v8, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    .line 225
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 235
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v7, "sleep_policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 237
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 238
    .local v5, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_sleep_policy"

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 238
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    invoke-direct {p0, p1, v5}, Lcom/android/settings/wifi/ConfigureWifiSettings;->updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v5    # "stringValue":Ljava/lang/String;
    :cond_3
    return v11

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/NumberFormatException;
    const v7, 0x7f0e03d0

    invoke-static {v1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 244
    return v10
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 185
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "notify_open_networks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 189
    const-string/jumbo v5, "wifi_networks_available_notification_on"

    .line 190
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 188
    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    :goto_1
    return v3

    .line 190
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 191
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_1
    const-string/jumbo v2, "wifi_cellular_data_fallback"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    const-string/jumbo v1, "network_avoid_bad_wifi"

    .line 194
    .local v1, "settingName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 195
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "1"

    .line 194
    :goto_2
    invoke-static {v4, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 195
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 197
    .end local v1    # "settingName":Ljava/lang/String;
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->initPreferences()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->refreshWifiInfo()V

    .line 88
    return-void
.end method
