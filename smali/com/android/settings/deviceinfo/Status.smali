.class public Lcom/android/settings/deviceinfo/Status;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Status$1;,
        Lcom/android/settings/deviceinfo/Status$2;,
        Lcom/android/settings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/support/v7/preference/Preference;

.field private mBatteryStatus:Landroid/support/v7/preference/Preference;

.field private mBtAddress:Landroid/support/v7/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIpAddress:Landroid/support/v7/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/support/v7/preference/Preference;

.field private mWifiMacAddress:Landroid/support/v7/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/Status;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/deviceinfo/Status;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 71
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 70
    sput-object v0, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 126
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 339
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 340
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 341
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 343
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 331
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 332
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 248
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 246
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 301
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "address":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 307
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 290
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object p2, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 272
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 286
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mWifiMacAddress:Landroid/support/v7/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    return-void

    .line 286
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, "macAddress":Ljava/lang/String;
    goto :goto_0

    .line 287
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    .line 279
    const-string/jumbo v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 220
    const/16 v0, 0x2c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    new-instance v2, Lcom/android/settings/deviceinfo/Status$MyHandler;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 163
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    .line 164
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 166
    const v2, 0x7f080027

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 167
    const-string/jumbo v2, "battery_level"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/support/v7/preference/Preference;

    .line 168
    const-string/jumbo v2, "battery_status"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/support/v7/preference/Preference;

    .line 169
    const-string/jumbo v2, "bt_address"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/support/v7/preference/Preference;

    .line 170
    const-string/jumbo v2, "wifi_mac_address"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mWifiMacAddress:Landroid/support/v7/preference/Preference;

    .line 171
    const-string/jumbo v2, "wimax_mac_address"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/support/v7/preference/Preference;

    .line 172
    const-string/jumbo v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/support/v7/preference/Preference;

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 175
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0e0195

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 176
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0e0536

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .line 179
    const-string/jumbo v2, "up_time"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/support/v7/preference/Preference;

    .line 181
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->hasBluetooth()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 183
    iput-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/support/v7/preference/Preference;

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->hasWimax()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 188
    iput-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/support/v7/preference/Preference;

    .line 191
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 192
    sget-object v4, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 193
    .local v0, "intent":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "intent":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->updateConnectivity()V

    .line 198
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 199
    .local v1, "serial":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 202
    :cond_3
    const-string/jumbo v2, "serial_number"

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 208
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    .line 208
    if-eqz v2, :cond_5

    .line 210
    :cond_4
    const-string/jumbo v2, "sim_status"

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v2, "imei_info"

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 213
    :cond_5
    const-string/jumbo v2, "ro.alarm_boot"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 214
    const-string/jumbo v2, "imei_info"

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 158
    :cond_6
    return-void

    .line 200
    :cond_7
    const-string/jumbo v2, "serial_number"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 227
    const-string/jumbo v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    .line 226
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 229
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    return-void
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    .line 314
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 315
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 316
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setIpAddressStatus()V

    .line 312
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 321
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 323
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 324
    const-wide/16 v2, 0x1

    .line 327
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method
