.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$1;,
        Lcom/android/settings/TetherSettings$OnStartTetheringCallback;,
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConfigureReceiver:Landroid/content/BroadcastReceiver;

.field private mCreateNetwork:Landroid/support/v7/preference/Preference;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDataSaverFooter:Landroid/support/v7/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/support/v7/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mIsWifiEnabled:Z

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRestartWifiApAfterConfigChange:Z

.field private mSecurityType:[Ljava/lang/String;

.field private mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbEnable:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWifiStatusManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mIsWifiEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/TetherSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbEnable:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/TetherSettings;)Lcom/android/settings/wifi/WifiApEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/TetherSettings;Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->isNeedShowHelp(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/TetherSettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->showUSBTetheringLearning(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/TetherSettings;I)V
    .locals 0
    .param p1, "choice"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    const-string/jumbo v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 157
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mUsbEnable:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mIsWifiEnabled:Z

    .line 935
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    .line 934
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 166
    return-void
.end method

.method private checkDefaultValue(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 861
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 862
    const v6, 0x7f0c0034

    .line 861
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 863
    .local v1, "def_ssid":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 864
    .local v0, "clear_pwd":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 866
    :cond_0
    const-string/jumbo v5, "MY_PERFS"

    .line 865
    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 868
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "def_wifiap_set"

    .line 867
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 869
    .local v3, "hasSetDefaultValue":Z
    if-nez v3, :cond_1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/TetherSettings;->setDefaultValue(Landroid/content/Context;ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 870
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 871
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "def_wifiap_set"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 872
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 860
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "hasSetDefaultValue":Z
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method private checkWifiApConfig()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 613
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 614
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v4

    if-lez v4, :cond_1

    move v1, v3

    .line 618
    .local v1, "isNotNoneSecurity":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 619
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 620
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 619
    :cond_0
    :goto_1
    return v2

    .end local v1    # "isNotNoneSecurity":Z
    :cond_1
    move v1, v2

    .line 614
    goto :goto_0

    .restart local v1    # "isNotNoneSecurity":Z
    :cond_2
    move v2, v3

    .line 620
    goto :goto_1

    .line 622
    :cond_3
    return v3
.end method

.method private checkWifiConnectivityState(Landroid/content/Context;)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 658
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 660
    const-string/jumbo v2, "connectivity"

    .line 659
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 662
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 663
    .local v0, "info":Landroid/net/NetworkInfo;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :goto_1
    return v2

    .line 662
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    .line 663
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v6, 0x7f0e0464

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 310
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 312
    iput-boolean v7, p0, Lcom/android/settings/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 314
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    if-nez v3, :cond_0

    .line 315
    return-void

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_1

    .line 320
    const v3, 0x10403f8

    .line 319
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 322
    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    .line 321
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 325
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 326
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 327
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    .line 325
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isFirstUseUSBTethering(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 825
    const-string/jumbo v3, "MY_PERFS"

    .line 824
    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 826
    .local v2, "sharedPereference":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "FirstLaunchUSBTethering"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 827
    .local v1, "isNeed":Z
    if-eqz v1, :cond_0

    .line 828
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 829
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "FirstLaunchUSBTethering"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 830
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 832
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v1
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 702
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 703
    const v6, 0x107001a

    .line 702
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 704
    .local v2, "provisionApp":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 705
    return v4

    .line 707
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 708
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v0, "intent":Landroid/content/Intent;
    aget-object v5, v2, v4

    aget-object v6, v2, v3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const/high16 v5, 0x10000

    .line 711
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private isNeedShowHelp(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 813
    const-string/jumbo v3, "MY_PERFS"

    .line 812
    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 814
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 815
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "FirstLaunchHotspotTethering"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 816
    .local v1, "isFirstUse":Z
    if-eqz v1, :cond_0

    .line 817
    const-string/jumbo v3, "FirstLaunchHotspotTethering"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 818
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 820
    :cond_0
    return v1
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 697
    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    invoke-static {p0}, Lcom/android/settings/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return v0

    .line 698
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimCardReady(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 608
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 609
    const/4 v1, 0x5

    .line 608
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerConfigureReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 915
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "Hotspot_PreConfigure_Response"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 916
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 917
    new-instance v1, Lcom/android/settings/TetherSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/TetherSettings$6;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    .line 932
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 914
    return-void
.end method

.method private setDefaultValue(Landroid/content/Context;ZZ)Z
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "default_ssid"    # Z
    .param p3, "clear_password"    # Z

    .prologue
    const/4 v6, 0x0

    .line 878
    const-string/jumbo v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 879
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_0

    .line 880
    return v6

    .line 882
    :cond_0
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 883
    .local v3, "wifiAPConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v3, :cond_1

    .line 884
    return v6

    .line 886
    :cond_1
    if-eqz p2, :cond_3

    .line 888
    const-string/jumbo v5, "phone"

    .line 887
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 889
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "deviceId":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 891
    .local v1, "lastFourDigits":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 892
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 894
    :cond_2
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 895
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 896
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    .line 897
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 900
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "lastFourDigits":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    if-eqz p3, :cond_4

    .line 901
    const-string/jumbo v5, ""

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 903
    :cond_4
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 904
    const/4 v5, 0x1

    return v5
.end method

.method private showFirstUseUSBTetheringDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 836
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 837
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0d62

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 838
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0d63

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 839
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 840
    new-instance v2, Lcom/android/settings/TetherSettings$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/TetherSettings$5;-><init>(Lcom/android/settings/TetherSettings;Landroid/content/Context;)V

    .line 839
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 846
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e024e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 847
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 848
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 835
    return-void
.end method

.method private showNoSimCardDialog(Landroid/content/Context;)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 588
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 589
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->isSimCardReady(Landroid/telephony/TelephonyManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 590
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 591
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0d58

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 592
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0d59

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0265

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 594
    new-instance v3, Lcom/android/settings/TetherSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/TetherSettings$3;-><init>(Lcom/android/settings/TetherSettings;)V

    .line 593
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 600
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 601
    const/4 v2, 0x1

    return v2

    .line 603
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private showTurnOffWifiDialog(Landroid/content/Context;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 668
    const-string/jumbo v6, "layout_inflater"

    .line 667
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 669
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400ab

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 670
    .local v5, "showAgainView":Landroid/view/View;
    const v6, 0x7f110184

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 672
    .local v2, "notShowAgainCheckbox":Landroid/widget/CheckBox;
    const-string/jumbo v6, "MY_PERFS"

    .line 671
    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 673
    .local v3, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "TurnOffWifiShowAgain"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 674
    .local v4, "showAgain":Z
    if-nez v4, :cond_0

    .line 675
    return-void

    .line 677
    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 678
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0d5e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 677
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 679
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0d5f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 677
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 681
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 682
    const v8, 0x7f0e0265

    .line 681
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 682
    new-instance v8, Lcom/android/settings/TetherSettings$4;

    invoke-direct {v8, p0, v3, v2}, Lcom/android/settings/TetherSettings$4;-><init>(Lcom/android/settings/TetherSettings;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    .line 677
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 691
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 692
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 666
    return-void
.end method

.method private showUSBTetheringLearning(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 852
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 853
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0d64

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 854
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0d65

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 855
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 856
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 857
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 851
    return-void
.end method

.method private startTethering(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 716
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 718
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 719
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 720
    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 721
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 722
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f0e01f7

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 723
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 724
    return-void

    .line 728
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    if-ne p1, v4, :cond_1

    .line 729
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mUsbEnable:Z

    if-eqz v1, :cond_1

    .line 730
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v4, v2, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 715
    return-void
.end method

.method private unRegisterConfigureReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 908
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 910
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    .line 907
    :cond_0
    return-void
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 541
    const/4 v2, 0x0

    .line 542
    .local v2, "bluetoothErrored":Z
    const/4 v9, 0x0

    move-object/from16 v0, p3

    array-length v11, v0

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v7, p3, v10

    .line 543
    .local v7, "s":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v13, v12

    :goto_1
    if-ge v9, v13, :cond_1

    aget-object v6, v12, v9

    .line 544
    .local v6, "regex":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v2, 0x1

    .line 543
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 542
    .end local v6    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 548
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 549
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v1, :cond_3

    .line 550
    return-void

    .line 552
    :cond_3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 553
    .local v5, "btState":I
    const/16 v9, 0xd

    if-ne v5, v9, :cond_4

    .line 554
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 555
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0e01f8

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 540
    :goto_2
    return-void

    .line 556
    :cond_4
    const/16 v9, 0xb

    if-ne v5, v9, :cond_5

    .line 557
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 558
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0e01f7

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 560
    :cond_5
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 561
    .local v3, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v9, 0xc

    if-ne v5, v9, :cond_a

    if-eqz v3, :cond_a

    .line 562
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v9

    .line 561
    if-eqz v9, :cond_a

    .line 563
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 564
    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 565
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 566
    .local v4, "bluetoothTethered":I
    const/4 v9, 0x1

    if-le v4, v9, :cond_7

    .line 567
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 569
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 568
    const v10, 0x7f0e0609

    .line 567
    invoke-virtual {p0, v10, v9}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 570
    .local v8, "summary":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v8}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 564
    .end local v4    # "bluetoothTethered":I
    .end local v8    # "summary":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x1

    goto :goto_3

    .line 571
    .restart local v4    # "bluetoothTethered":I
    :cond_7
    const/4 v9, 0x1

    if-ne v4, v9, :cond_8

    .line 572
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    .line 573
    const v10, 0x7f0e0608

    .line 572
    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 574
    :cond_8
    if-eqz v2, :cond_9

    .line 575
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0e060c

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 577
    :cond_9
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0e0607

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 580
    .end local v4    # "bluetoothTethered":I
    :cond_a
    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 581
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 582
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0e060b

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 580
    :cond_b
    const/4 v9, 0x1

    goto :goto_4
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 473
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "available":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "tethered":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 482
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 488
    iget-boolean v6, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v6, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 489
    .local v2, "usbAvailable":Z
    :goto_0
    const/4 v3, 0x0

    .line 490
    .local v3, "usbError":I
    const/4 v6, 0x0

    array-length v8, p1

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v1, p1, v7

    .line 491
    .local v1, "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_2
    if-ge v6, v10, :cond_3

    aget-object v0, v9, v6

    .line 492
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 493
    if-nez v3, :cond_1

    .line 494
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v1}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v3

    .line 491
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 488
    .end local v0    # "regex":Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "usbAvailable":Z
    .end local v3    # "usbError":I
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "usbAvailable":Z
    goto :goto_0

    .line 490
    .restart local v1    # "s":Ljava/lang/String;
    .restart local v3    # "usbError":I
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 499
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    .line 500
    .local v5, "usbTethered":Z
    const/4 v6, 0x0

    array-length v8, p2

    move v7, v6

    :goto_3
    if-ge v7, v8, :cond_7

    aget-object v1, p2, v7

    .line 501
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_4
    if-ge v6, v10, :cond_6

    aget-object v0, v9, v6

    .line 502
    .restart local v0    # "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v5, 0x1

    .line 501
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 500
    .end local v0    # "regex":Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_3

    .line 505
    .end local v1    # "s":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .line 506
    .local v4, "usbErrored":Z
    const/4 v6, 0x0

    array-length v8, p3

    move v7, v6

    :goto_5
    if-ge v7, v8, :cond_a

    aget-object v1, p3, v7

    .line 507
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_6
    if-ge v6, v10, :cond_9

    aget-object v0, v9, v6

    .line 508
    .restart local v0    # "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v4, 0x1

    .line 507
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 506
    .end local v0    # "regex":Ljava/lang/String;
    :cond_9
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_5

    .line 512
    .end local v1    # "s":Ljava/lang/String;
    :cond_a
    if-eqz v5, :cond_c

    .line 513
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e0601

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 514
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 515
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 487
    :goto_8
    return-void

    .line 514
    :cond_b
    const/4 v6, 0x1

    goto :goto_7

    .line 516
    :cond_c
    if-eqz v2, :cond_f

    .line 517
    if-nez v3, :cond_d

    .line 518
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e0600

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 522
    :goto_9
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 523
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 520
    :cond_d
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e0605

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_9

    .line 522
    :cond_e
    const/4 v6, 0x1

    goto :goto_a

    .line 524
    :cond_f
    if-eqz v4, :cond_10

    .line 525
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e0605

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 526
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 527
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 528
    :cond_10
    iget-boolean v6, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v6, :cond_11

    .line 529
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e0602

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 530
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 531
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 533
    :cond_11
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e0603

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 534
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 535
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 808
    const v0, 0x7f0e0a55

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x5a

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    .line 305
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 783
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 784
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 785
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 791
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 792
    const-string/jumbo v1, "TetheringSettings"

    .line 793
    const-string/jumbo v2, "Wifi AP config changed while enabled, stop and restart"

    .line 792
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iput-boolean v6, p0, Lcom/android/settings/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 795
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 798
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 799
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0464

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 800
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 801
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    .line 799
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 782
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    if-eqz p1, :cond_0

    .line 175
    const-string/jumbo v9, "TETHER_TYPE"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 177
    :cond_0
    const v9, 0x7f08006a

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 179
    new-instance v9, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 180
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v9}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    .line 181
    const-string/jumbo v9, "disabled_on_data_saver"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    .line 183
    invoke-virtual {p0, v13}, Lcom/android/settings/TetherSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isUiRestricted()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 185
    iput-boolean v13, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    .line 186
    new-instance v9, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 187
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 191
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 192
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    .line 193
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 194
    const/4 v11, 0x5

    .line 193
    invoke-virtual {v1, v9, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 197
    :cond_2
    const-string/jumbo v9, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 200
    const v10, 0x7f0c001c

    .line 199
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 201
    .local v4, "enableWifiApSettingsExt":Z
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c001d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 202
    .local v5, "isWifiApEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/TetherSettings;->checkDefaultValue(Landroid/content/Context;)V

    .line 203
    if-eqz v4, :cond_8

    .line 205
    const-string/jumbo v9, "enable_wifi_ap_ext"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/HotspotPreference;

    .line 204
    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "enable_wifi_ap"

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 208
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    new-instance v10, Lcom/android/settings/TetherSettings$2;

    invoke-direct {v10, p0}, Lcom/android/settings/TetherSettings$2;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 226
    :goto_0
    if-eqz v5, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 231
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 232
    const v10, 0x7f0c003b

    .line 231
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 233
    const-string/jumbo v9, "tethering_help"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

    .line 238
    :goto_1
    const-string/jumbo v9, "usb_tether_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    .line 239
    const-string/jumbo v9, "enable_bluetooth_tethering"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    .line 241
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v9, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 243
    const-string/jumbo v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 244
    const-string/jumbo v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 246
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 247
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 248
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 250
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_a

    const/4 v7, 0x1

    .line 251
    .local v7, "usbAvailable":Z
    :goto_2
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_b

    const/4 v8, 0x1

    .line 252
    .local v8, "wifiAvailable":Z
    :goto_3
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_c

    const/4 v2, 0x1

    .line 254
    .local v2, "bluetoothAvailable":Z
    :goto_4
    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 258
    :cond_5
    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 262
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 266
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 267
    const v10, 0x7f0c0046

    .line 266
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 268
    .local v3, "configHideBluetoothAndHelpMenu":Z
    if-eqz v2, :cond_7

    if-eqz v3, :cond_e

    .line 269
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 279
    :goto_6
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v9}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->onDataSaverChanged(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0037

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/TetherSettings;->mUsbEnable:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 282
    const-string/jumbo v10, "wifi"

    .line 281
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiStatusManager:Landroid/net/wifi/WifiManager;

    .line 171
    return-void

    .line 223
    .end local v2    # "bluetoothAvailable":Z
    .end local v3    # "configHideBluetoothAndHelpMenu":Z
    .end local v7    # "usbAvailable":Z
    .end local v8    # "wifiAvailable":Z
    :cond_8
    const-string/jumbo v9, "enable_wifi_ap"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    .line 222
    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "enable_wifi_ap_ext"

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    .line 235
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "tethering_help"

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 250
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "usbAvailable":Z
    goto/16 :goto_2

    .line 251
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "wifiAvailable":Z
    goto/16 :goto_3

    .line 252
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "bluetoothAvailable":Z
    goto/16 :goto_4

    .line 259
    :cond_d
    new-instance v9, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-direct {v9, v0, v10, v11}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/DataSaverBackend;Landroid/support/v7/preference/Preference;)V

    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 260
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    goto :goto_5

    .line 271
    .restart local v3    # "configHideBluetoothAndHelpMenu":Z
    :cond_e
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothPan;

    .line 272
    .local v6, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 273
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v13}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6

    .line 275
    :cond_f
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 333
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 335
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 336
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    return-object v1

    .line 339
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDataSaverChanged(Z)V
    .locals 4
    .param p1, "isDataSaving"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 293
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    .line 294
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 295
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 292
    return-void

    :cond_0
    move v0, v2

    .line 294
    goto :goto_0

    :cond_1
    move v0, v2

    .line 295
    goto :goto_1

    :cond_2
    move v1, v2

    .line 296
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 288
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 286
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 628
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 629
    .local v0, "enable":Z
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 630
    const v4, 0x7f0c001c

    .line 629
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 631
    .local v1, "enableWifiApSettingsExt":Z
    if-eqz v0, :cond_5

    .line 632
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->showNoSimCardDialog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    check-cast p1, Lcom/android/settings/HotspotPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v5}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 634
    return v5

    .line 635
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    if-eqz v1, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->isNeedShowHelp(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->checkWifiApConfig()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->checkWifiConnectivityState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 645
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiStaSapConcurrency()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 649
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    .line 654
    :goto_0
    return v5

    .line 637
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 638
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "Hotspot_PreConfigure"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string/jumbo v3, "com.qualcomm.qti.extsettings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string/jumbo v3, "needShowHelpLater"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 642
    check-cast p1, Lcom/android/settings/HotspotPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v5}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 643
    return v5

    .line 646
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->showTurnOffWifiDialog(Landroid/content/Context;)V

    .line 647
    invoke-direct {p0, v5}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 652
    :cond_5
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 738
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_6

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->showNoSimCardDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 740
    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 779
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 742
    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mUsbEnable:Z

    if-eqz v1, :cond_2

    .line 744
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiStatusManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mIsWifiEnabled:Z

    .line 746
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->isFirstUseUSBTethering(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->showFirstUseUSBTetheringDialog(Landroid/content/Context;)V

    .line 751
    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 748
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->checkWifiConnectivityState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->showTurnOffWifiDialog(Landroid/content/Context;)V

    goto :goto_1

    .line 753
    :cond_5
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 754
    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mIsWifiEnabled:Z

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 758
    :cond_6
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_8

    .line 759
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 760
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 762
    :cond_7
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 765
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    goto :goto_0

    .line 767
    :cond_8
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_9

    .line 768
    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_0

    .line 769
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 770
    const v2, 0x7f0c003b

    .line 769
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 772
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 773
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0d4f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 774
    const v1, 0x7f0e0d50

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 775
    const v1, 0x7f0e0265

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 776
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 411
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 413
    iget-boolean v3, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v3, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0e008c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 418
    return-void

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 423
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    invoke-direct {v3, p0}, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    .line 425
    const-string/jumbo v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 426
    new-instance v3, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$TetherChangeReceiver;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 427
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 431
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 432
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 435
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 436
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string/jumbo v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    const-string/jumbo v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 439
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 442
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 446
    :cond_2
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v3, :cond_3

    .line 447
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 448
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 451
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->registerConfigureReceiver(Landroid/content/Context;)V

    .line 410
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 459
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 460
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 464
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    .line 465
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 469
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->unRegisterConfigureReceiver()V

    .line 456
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    .line 301
    return-void
.end method
