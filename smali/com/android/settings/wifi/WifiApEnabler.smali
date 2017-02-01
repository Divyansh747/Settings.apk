.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApEnabler$1;
    }
.end annotation


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mEnabling:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/support/v7/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/WifiApEnabler;II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/WifiApEnabler;Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->showWifiTetheringLearning(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/DataSaverBackend;Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataSaverBackend"    # Lcom/android/settings/datausage/DataSaverBackend;
    .param p3, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnabling:Z

    .line 61
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 94
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    .line 95
    invoke-virtual {p3}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p3, v1}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 98
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private enableWifiSwitch()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 119
    const-string/jumbo v4, "airplane_mode_on"

    .line 118
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 120
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_2

    .line 121
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 117
    :goto_2
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_0
    move v0, v1

    .line 118
    goto :goto_0

    .restart local v0    # "isAirplaneMode":Z
    :cond_1
    move v1, v2

    .line 121
    goto :goto_1

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private handleWifiApStateChanged(II)V
    .locals 10
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    const v9, 0x7f0e045d

    const v8, 0x7f0e03c0

    const v7, 0x7f0e03bf

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 223
    const v6, 0x7f0c001c

    .line 222
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 224
    .local v0, "enableWifiApSettingsExt":Z
    if-eqz v0, :cond_2

    .line 225
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    check-cast v1, Lcom/android/settings/HotspotPreference;

    .line 226
    .local v1, "hSwitch":Lcom/android/settings/HotspotPreference;
    packed-switch p1, :pswitch_data_0

    .line 253
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 254
    if-ne p2, v4, :cond_1

    .line 255
    invoke-virtual {v1, v8}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 259
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 221
    .end local v1    # "hSwitch":Lcom/android/settings/HotspotPreference;
    :goto_1
    return-void

    .line 228
    .restart local v1    # "hSwitch":Lcom/android/settings/HotspotPreference;
    :pswitch_0
    invoke-virtual {v1, v9}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 229
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    goto :goto_1

    .line 236
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v3}, Lcom/android/settings/wifi/WifiApEnabler;->postTurnOn(Landroid/content/Context;I)Z

    .line 237
    invoke-virtual {v1, v4}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 239
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v5}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    .line 240
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->showActivatedDialog(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    move v3, v4

    .line 239
    goto :goto_2

    .line 243
    :pswitch_2
    const v4, 0x7f0e045e

    invoke-virtual {v1, v4}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 244
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 245
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    goto :goto_1

    .line 248
    :pswitch_3
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 249
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    goto :goto_0

    .line 262
    .end local v1    # "hSwitch":Lcom/android/settings/HotspotPreference;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 263
    .local v2, "sSwitch":Landroid/support/v14/preference/SwitchPreference;
    packed-switch p1, :pswitch_data_1

    .line 288
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 289
    if-ne p2, v4, :cond_4

    .line 290
    invoke-virtual {v2, v8}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 294
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    .line 265
    :pswitch_4
    invoke-virtual {v2, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 266
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 273
    :pswitch_5
    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 275
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v5}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_4
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_4

    .line 278
    :pswitch_6
    const v4, 0x7f0e045e

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 279
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 280
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 283
    :pswitch_7
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 284
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto/16 :goto_1

    .line 292
    :cond_4
    invoke-virtual {v2, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 263
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isNeedShowActivated(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 203
    const-string/jumbo v3, "MY_PERFS"

    .line 202
    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 204
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "FirstHotspotActivated"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 206
    .local v1, "isFirstUse":Z
    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    const-string/jumbo v3, "FirstHotspotActivated"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    :cond_0
    return v1
.end method

.method private postTurnOn(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "choice"    # I

    .prologue
    .line 299
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnabling:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 300
    const v2, 0x7f0c0035

    .line 299
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "Hotspot_PostConfigure"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "hotspot_postConfigure_intent":Landroid/content/Intent;
    const-string/jumbo v1, "choice"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 304
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnabling:Z

    .line 306
    .end local v0    # "hotspot_postConfigure_intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private showActivatedDialog(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->isNeedShowActivated(Landroid/content/Context;)Z

    move-result v0

    .line 215
    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->showWifiTetheringActivatedDialog(Landroid/content/Context;)V

    .line 214
    :cond_0
    return-void
.end method

.method private showWifiTetheringActivatedDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 186
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0d7c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0d7d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    new-instance v2, Lcom/android/settings/wifi/WifiApEnabler$2;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/WifiApEnabler$2;-><init>(Lcom/android/settings/wifi/WifiApEnabler;Landroid/content/Context;)V

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e024e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 185
    return-void
.end method

.method private showWifiTetheringLearning(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 176
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0d66

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0d67

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 175
    return-void
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 151
    const/4 v5, 0x0

    .line 152
    .local v5, "wifiTethered":Z
    const/4 v4, 0x0

    .line 154
    .local v4, "wifiErrored":Z
    const/4 v6, 0x0

    array-length v8, p2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, p2, v7

    .local v0, "o":Ljava/lang/Object;
    move-object v2, v0

    .line 155
    check-cast v2, Ljava/lang/String;

    .line 156
    .local v2, "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_1
    if-ge v6, v10, :cond_1

    aget-object v1, v9, v6

    .line 157
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v5, 0x1

    .line 156
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 154
    .end local v1    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 160
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    array-length v8, p3

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v0, p3, v7

    .restart local v0    # "o":Ljava/lang/Object;
    move-object v2, v0

    .line 161
    check-cast v2, Ljava/lang/String;

    .line 162
    .restart local v2    # "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_3
    if-ge v6, v10, :cond_4

    aget-object v1, v9, v6

    .line 163
    .restart local v1    # "regex":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    .line 162
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 160
    .end local v1    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    .line 167
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_7

    .line 168
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 169
    .local v3, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 150
    .end local v3    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 170
    :cond_7
    if-eqz v4, :cond_6

    .line 171
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    const v7, 0x7f0e03bf

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 108
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "Checked"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    check-cast v0, Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 128
    return-void
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 144
    const v2, 0x10403f8

    .line 143
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    .line 146
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0e045f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 147
    if-nez p1, :cond_0

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 145
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    return-void

    .line 147
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
