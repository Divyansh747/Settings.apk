.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DevelopmentSettings$1;,
        Lcom/android/settings/DevelopmentSettings$2;,
        Lcom/android/settings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static final MOCK_LOCATION_APP_OPS:[I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

.field private mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

.field private mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

.field private mBugreport:Landroid/support/v7/preference/Preference;

.field private mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

.field private mClearAdbKeys:Landroid/support/v7/preference/Preference;

.field private mColorModePreference:Lcom/android/settings/ColorModePreference;

.field private mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/support/v7/preference/Preference;

.field private mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

.field private mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

.field private mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

.field private mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

.field private mForceResizable:Landroid/support/v14/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

.field private mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mLastEnabledState:Z

.field private mLogdSize:Landroid/support/v7/preference/ListPreference;

.field private mLogpersist:Landroid/support/v7/preference/ListPreference;

.field private mLogpersistClearDialog:Landroid/app/Dialog;

.field private mLogpersistCleared:Z

.field private mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

.field private mMockLocationApp:Ljava/lang/String;

.field private mMockLocationAppPref:Landroid/support/v7/preference/Preference;

.field private mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

.field private mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

.field private mPassword:Landroid/support/v7/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v14/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowTouches:Landroid/support/v14/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

.field private mStrictMode:Landroid/support/v14/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

.field private mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

.field private mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

.field private mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

.field private mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

.field private mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

.field private mWebViewProvider:Landroid/support/v7/preference/ListPreference;

.field private mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

.field private mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

.field private mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateUsbConfigurationValues()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3a

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    .line 2268
    new-instance v0, Lcom/android/settings/DevelopmentSettings$2;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$2;-><init>()V

    .line 2267
    sput-object v0, Lcom/android/settings/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 329
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    .line 316
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 2226
    new-instance v0, Lcom/android/settings/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$1;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    return-void
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 521
    .local v0, "pref":Landroid/support/v7/preference/ListPreference;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 523
    return-object v0
.end method

.method private confirmEnableOemUnlock()V
    .locals 5

    .prologue
    .line 1834
    new-instance v0, Lcom/android/settings/DevelopmentSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$3;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    .line 1843
    .local v0, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/settings/DevelopmentSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/DevelopmentSettings$4;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    .line 1853
    .local v1, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1854
    const v3, 0x7f0e0099

    .line 1853
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1855
    const v3, 0x7f0e009a

    .line 1853
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1856
    const v3, 0x7f0e06b7

    .line 1853
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1857
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 1853
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1833
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1072
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1073
    return v2

    .line 1075
    :cond_0
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1076
    .local v0, "enabled":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private defaultLogdSizeValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1466
    const-string/jumbo v1, "ro.logd.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1468
    :cond_0
    const-string/jumbo v1, "ro.config.low_ram"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1469
    const-string/jumbo v0, "65536"

    .line 1474
    :cond_1
    :goto_0
    return-object v0

    .line 1471
    :cond_2
    const-string/jumbo v0, "262144"

    goto :goto_0
.end method

.method private disableForUser(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 527
    if-eqz p1, :cond_0

    .line 528
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2135
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2137
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2140
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2141
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 2143
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 2144
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2145
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 2147
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 2148
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2149
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    .line 2134
    :cond_3
    return-void
.end method

.method private enableOemUnlockPreference()Z
    .locals 1

    .prologue
    .line 1029
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isBootloaderUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isOemUnlockAllowed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1000
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1001
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "adb_enabled"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 1002
    return v5

    .line 1004
    :cond_0
    const-string/jumbo v4, "package_verifier_enable"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 1005
    return v5

    .line 1007
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1008
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v3, "verification":Landroid/content/Intent;
    const-string/jumbo v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1011
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1012
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1013
    return v5

    .line 1016
    :cond_2
    return v6
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 535
    .local v0, "pref":Landroid/support/v14/preference/SwitchPreference;
    if-nez v0, :cond_0

    .line 536
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    return-object v0
.end method

.method private isBootloaderUnlocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2352
    const/4 v0, -0x1

    .line 2353
    .local v0, "flashLockState":I
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v2, :cond_0

    .line 2354
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v0

    .line 2357
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isOemUnlockAllowed()Z
    .locals 3

    .prologue
    .line 2366
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2367
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_oem_unlock"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2368
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_factory_reset"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    .line 2367
    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2257
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2258
    :catch_0
    move-exception v0

    .line 2259
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private isSimLockedDevice()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2339
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 2340
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2341
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getAllowedCarriers(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2342
    const/4 v2, 0x1

    return v2

    .line 2340
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2345
    :cond_1
    return v3
.end method

.method private removePreference(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 568
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 566
    return-void
.end method

.method private removePreferenceForProduction(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 559
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    .line 561
    const/4 v0, 0x1

    return v0

    .line 563
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 733
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 734
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 735
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 736
    .local v0, "cb":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 734
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    .end local v0    # "cb":Landroid/support/v14/preference/SwitchPreference;
    :cond_1
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 742
    invoke-direct {p0, v4, v3}, Lcom/android/settings/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 743
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 744
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 745
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 746
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v3, 0x2

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 748
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 749
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 751
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 752
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 753
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 754
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 755
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 756
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 732
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 5

    .prologue
    .line 906
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 907
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 906
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 908
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private resetShortcutManagerThrottling()V
    .locals 5

    .prologue
    .line 2306
    const-string/jumbo v2, "shortcut"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2305
    invoke-static {v2}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v1

    .line 2307
    .local v1, "service":Landroid/content/pm/IShortcutService;
    if-eqz v1, :cond_0

    .line 2309
    :try_start_0
    invoke-interface {v1}, Landroid/content/pm/IShortcutService;->resetThrottling()V

    .line 2310
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0d01

    .line 2311
    const/4 v4, 0x0

    .line 2310
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2304
    :cond_0
    :goto_0
    return-void

    .line 2312
    :catch_0
    move-exception v0

    .line 2313
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DevelopmentSettings"

    const-string/jumbo v3, "Failed to reset rate limiting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setBugreportStorageProviderStatus()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1057
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.shell"

    .line 1058
    const-string/jumbo v4, "com.android.shell.BugreportStorageProvider"

    .line 1057
    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1060
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1061
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1060
    :goto_0
    invoke-virtual {v4, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1056
    return-void

    :cond_0
    move v2, v3

    .line 1062
    goto :goto_0
.end method

.method private setLogpersistOff(Z)V
    .locals 6
    .param p1, "update"    # Z

    .prologue
    .line 1610
    const-string/jumbo v3, "persist.logd.logpersistd.buffer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const-string/jumbo v3, "logd.logpersistd.buffer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string/jumbo v3, "persist.logd.logpersistd"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    const-string/jumbo v4, "logd.logpersistd"

    .line 1615
    if-eqz p1, :cond_1

    const-string/jumbo v3, ""

    .line 1614
    :goto_0
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1617
    if-eqz p1, :cond_2

    .line 1618
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogpersistValues()V

    .line 1609
    :cond_0
    return-void

    .line 1615
    :cond_1
    const-string/jumbo v3, "stop"

    goto :goto_0

    .line 1620
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 1621
    const-string/jumbo v3, "logd.logpersistd"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1622
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1626
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1620
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1627
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method private setPrefsEnabledState(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 573
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 574
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 575
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 577
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 572
    return-void
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 1025
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .prologue
    .line 2068
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2069
    const v1, 0x7f0e0097

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2068
    invoke-virtual {v0, p2, v1}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1020
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1021
    const-string/jumbo v3, "verifier_setting_visible"

    .line 1020
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startBackgroundCheckFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2062
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 2063
    const-class v1, Lcom/android/settings/applications/BackgroundCheckSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2064
    const v3, 0x7f0e0c2b

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 2062
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2061
    return-void
.end method

.method private startInactiveAppsFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2056
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 2057
    const-class v1, Lcom/android/settings/fuelgauge/InactiveApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2058
    const v3, 0x7f0e0101

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 2056
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2055
    return-void
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 668
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 669
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 670
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 671
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    .line 672
    const-string/jumbo v2, "adb_enabled"

    .line 671
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 673
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 674
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 675
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    .line 674
    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 678
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    .line 679
    const-string/jumbo v2, "bugreport_in_power_menu"

    .line 678
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 680
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 681
    const-string/jumbo v2, "stay_on_while_plugged_in"

    .line 680
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 682
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    .line 683
    const-string/jumbo v2, "bluetooth_hci_log"

    .line 682
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 684
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    .line 685
    const-string/jumbo v2, "debug_view_attributes"

    .line 684
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_5
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 686
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    .line 687
    const-string/jumbo v5, "force_allow_on_external"

    .line 686
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    :goto_6
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 688
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 689
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePasswordSummary()V

    .line 690
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 691
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMockLocation()V

    .line 692
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 693
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 694
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 695
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V

    .line 696
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 697
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMsaaOptions()V

    .line 698
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 699
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 700
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 701
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 702
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 703
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 704
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 705
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 706
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 707
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 708
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 709
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 710
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOtaDisableAutomaticUpdateOptions()V

    .line 711
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 712
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateForceRtlOptions()V

    .line 713
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 714
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogpersistValues()V

    .line 715
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 716
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 717
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 718
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 719
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMobileDataAlwaysOnOptions()V

    .line 720
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 721
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 722
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateForceResizableOptions()V

    .line 723
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWebViewMultiprocessOptions()V

    .line 724
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWebViewProviderOptions()V

    .line 725
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOemUnlockOptions()V

    .line 726
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 727
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateColorTemperature()V

    .line 729
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBluetoothDisableAbsVolumeOptions()V

    .line 667
    return-void

    :cond_2
    move v2, v4

    .line 671
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 675
    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 678
    goto/16 :goto_2

    :cond_5
    move v2, v4

    .line 680
    goto/16 :goto_3

    :cond_6
    move v2, v4

    .line 682
    goto/16 :goto_4

    :cond_7
    move v2, v4

    .line 684
    goto/16 :goto_5

    :cond_8
    move v3, v4

    .line 686
    goto/16 :goto_6
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 1754
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 1755
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 1752
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/support/v7/preference/ListPreference;

    .prologue
    .line 1733
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2

    .line 1734
    .local v2, "scale":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_0

    .line 1735
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1737
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1738
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 1739
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1740
    .local v3, "val":F
    cmpg-float v5, v2, v3

    if-gtz v5, :cond_1

    .line 1741
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1742
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1743
    return-void

    .line 1738
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1746
    .end local v3    # "val":F
    :cond_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1747
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    .end local v1    # "i":I
    .end local v2    # "scale":F
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1748
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 8

    .prologue
    .line 1794
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v2

    .line 1795
    .local v2, "limit":I
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1796
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 1797
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1798
    .local v3, "val":I
    if-lt v3, v2, :cond_1

    .line 1799
    if-eqz v1, :cond_0

    .line 1800
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1802
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1803
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1804
    return-void

    .line 1796
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1807
    .end local v3    # "val":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1808
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1809
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateBluetoothDisableAbsVolumeOptions()V
    .locals 3

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    .line 1445
    const-string/jumbo v1, "persist.bluetooth.disableabsvol"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1444
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1443
    return-void
.end method

.method private updateBugreportOptions()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1051
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1052
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1053
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->setBugreportStorageProviderStatus()V

    .line 1050
    return-void
.end method

.method private updateColorTemperature()V
    .locals 3

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 1358
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1357
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1356
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1266
    const-string/jumbo v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1267
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1268
    const-string/jumbo v1, ""

    .line 1271
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1272
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1273
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1274
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1275
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1276
    return-void

    .line 1272
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1279
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1280
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1265
    return-void
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 1292
    const-string/jumbo v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1291
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1290
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 914
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "debug_app"

    .line 913
    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 915
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    .line 916
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "wait_for_debugger"

    .line 915
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 917
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 920
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 921
    const/16 v8, 0x200

    .line 920
    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 922
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 923
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 927
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v6

    const v6, 0x7f0e00c4

    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 929
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 912
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 915
    goto :goto_0

    .line 923
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 924
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .end local v3    # "label":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 925
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 931
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0e00c3

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 932
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1116
    :try_start_0
    const-string/jumbo v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1117
    .local v4, "flinger":Landroid/os/IBinder;
    if-eqz v4, :cond_0

    .line 1118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1119
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1120
    .local v5, "reply":Landroid/os/Parcel;
    const-string/jumbo v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1121
    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-interface {v4, v11, v0, v5, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1123
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1125
    .local v7, "showCpu":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1126
    .local v2, "enableGL":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1127
    .local v8, "showUpdates":I
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_1

    move v11, v9

    :goto_0
    invoke-virtual {p0, v12, v11}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1129
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1130
    .local v6, "showBackground":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1131
    .local v1, "disableOverlays":I
    iget-object v11, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v11, v9}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1132
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v4    # "flinger":Landroid/os/IBinder;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "showBackground":I
    .end local v7    # "showCpu":I
    .end local v8    # "showUpdates":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "enableGL":I
    .restart local v4    # "flinger":Landroid/os/IBinder;
    .restart local v5    # "reply":Landroid/os/Parcel;
    .restart local v7    # "showCpu":I
    .restart local v8    # "showUpdates":I
    :cond_1
    move v11, v10

    .line 1127
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v6    # "showBackground":I
    :cond_2
    move v9, v10

    .line 1131
    goto :goto_1

    .line 1135
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v4    # "flinger":Landroid/os/IBinder;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "showBackground":I
    .end local v7    # "showCpu":I
    .end local v8    # "showUpdates":I
    :catch_0
    move-exception v3

    .local v3, "ex":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private updateForceResizableOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1380
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1381
    const-string/jumbo v3, "force_resizable_activities"

    .line 1380
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1379
    return-void
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1391
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 1392
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1393
    const-string/jumbo v3, "debug.force_rtl"

    .line 1392
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1391
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1390
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    .line 1175
    const-string/jumbo v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1174
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1173
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 812
    const-string/jumbo v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    .line 813
    .local v1, "hdcpChecking":Landroid/support/v7/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 814
    const-string/jumbo v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 816
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 818
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 819
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 820
    move v3, v2

    .line 824
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 825
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 826
    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 811
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 818
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "summaries":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1727
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    .line 1728
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "always_finish_activities"

    .line 1727
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1726
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 13

    .prologue
    const v12, 0x7f0a0006

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1478
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-eqz v8, :cond_8

    .line 1479
    const-string/jumbo v8, "persist.log.tag"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1480
    .local v1, "currentTag":Ljava/lang/String;
    const-string/jumbo v8, "persist.logd.size"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1481
    .local v2, "currentValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v8, "Settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1482
    const-string/jumbo v2, "32768"

    .line 1484
    :cond_0
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-eqz v8, :cond_2

    .line 1486
    const-string/jumbo v8, "logd.logpersistd.enable"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1487
    .local v0, "currentLogpersistEnable":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1488
    const-string/jumbo v8, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1489
    const-string/jumbo v8, "32768"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1487
    if-eqz v8, :cond_9

    .line 1490
    :cond_1
    invoke-direct {p0, v9, v11}, Lcom/android/settings/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 1491
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 1496
    .end local v0    # "currentLogpersistEnable":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 1497
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v2

    .line 1499
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1500
    .local v7, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1501
    .local v6, "titles":[Ljava/lang/String;
    const/4 v4, 0x2

    .line 1502
    .local v4, "index":I
    const-string/jumbo v8, "ro.config.low_ram"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1503
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 1504
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1505
    const/4 v4, 0x1

    .line 1507
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1508
    .local v5, "summaries":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_7

    .line 1509
    aget-object v8, v7, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1510
    aget-object v8, v6, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1509
    if-eqz v8, :cond_a

    .line 1511
    :cond_6
    move v4, v3

    .line 1515
    :cond_7
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1516
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v9, v5, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1517
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1477
    .end local v1    # "currentTag":Ljava/lang/String;
    .end local v2    # "currentValue":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "summaries":[Ljava/lang/String;
    .end local v6    # "titles":[Ljava/lang/String;
    .end local v7    # "values":[Ljava/lang/String;
    :cond_8
    return-void

    .line 1492
    .restart local v0    # "currentLogpersistEnable":Ljava/lang/String;
    .restart local v1    # "currentTag":Ljava/lang/String;
    .restart local v2    # "currentValue":Ljava/lang/String;
    :cond_9
    iget-boolean v8, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eqz v8, :cond_2

    .line 1493
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1508
    .end local v0    # "currentLogpersistEnable":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "summaries":[Ljava/lang/String;
    .restart local v6    # "titles":[Ljava/lang/String;
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateLogpersistValues()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1564
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v5, :cond_0

    .line 1565
    return-void

    .line 1567
    :cond_0
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1568
    .local v2, "currentValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1569
    const-string/jumbo v2, ""

    .line 1571
    :cond_1
    const-string/jumbo v5, "logd.logpersistd.buffer"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1572
    .local v1, "currentBuffers":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 1573
    :cond_2
    const-string/jumbo v1, "all"

    .line 1575
    :cond_3
    const/4 v4, 0x0

    .line 1576
    .local v4, "index":I
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1577
    const/4 v4, 0x1

    .line 1578
    const-string/jumbo v5, "kernel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1579
    const/4 v4, 0x3

    .line 1596
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1597
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1598
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1599
    if-eqz v4, :cond_8

    .line 1600
    iput-boolean v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistCleared:Z

    .line 1563
    :cond_5
    :goto_1
    return-void

    .line 1580
    :cond_6
    const-string/jumbo v5, "all"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1581
    const-string/jumbo v5, "radio"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1582
    const-string/jumbo v5, "security"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1580
    if-eqz v5, :cond_4

    .line 1583
    const-string/jumbo v5, "kernel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1580
    if-eqz v5, :cond_4

    .line 1584
    const/4 v4, 0x2

    .line 1585
    const-string/jumbo v5, "default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1586
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "main"

    aput-object v5, v0, v8

    const-string/jumbo v5, "events"

    aput-object v5, v0, v9

    const-string/jumbo v5, "system"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const-string/jumbo v5, "crash"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    .line 1587
    .local v0, "contains":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_4

    .line 1588
    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1589
    const/4 v4, 0x1

    .line 1590
    goto/16 :goto_0

    .line 1587
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1601
    .end local v0    # "contains":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_8
    iget-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistCleared:Z

    if-nez v5, :cond_5

    .line 1603
    const-string/jumbo v5, "logd.logpersistd"

    const-string/jumbo v6, "clear"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1605
    iput-boolean v9, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistCleared:Z

    goto :goto_1
.end method

.method private updateMobileDataAlwaysOnOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1454
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    .line 1455
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1456
    const-string/jumbo v3, "mobile_data_always_on"

    .line 1454
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1453
    return-void
.end method

.method private updateMockLocation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 937
    const-string/jumbo v8, "appops"

    invoke-virtual {p0, v8}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 939
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v8, Lcom/android/settings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v2, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 940
    .local v7, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_1

    .line 941
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 942
    .local v5, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-nez v8, :cond_0

    .line 943
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 949
    .end local v5    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 950
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 952
    .local v4, "label":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 953
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v10, 0x200

    .line 952
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 954
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 955
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 956
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 962
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    const v10, 0x7f0e009d

    invoke-virtual {p0, v10, v9}, Lcom/android/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 963
    iput-boolean v12, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 936
    .end local v4    # "label":Ljava/lang/String;
    :goto_1
    return-void

    .line 965
    :cond_3
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    const v9, 0x7f0e009c

    invoke-virtual {p0, v9}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 958
    .restart local v4    # "label":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1183
    return-void
.end method

.method private updateOemUnlockOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1033
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1035
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOemUnlockSettingDescription()V

    .line 1037
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1038
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->enableOemUnlockPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 1039
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 1032
    :cond_1
    return-void
.end method

.method private updateOemUnlockSettingDescription()V
    .locals 3

    .prologue
    .line 2319
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_1

    .line 2320
    const v0, 0x7f0e0098

    .line 2321
    .local v0, "oemUnlockSummary":I
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isBootloaderUnlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2322
    const v0, 0x7f0e0d94

    .line 2333
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2318
    .end local v0    # "oemUnlockSummary":I
    :cond_1
    return-void

    .line 2323
    .restart local v0    # "oemUnlockSummary":I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isSimLockedDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2324
    const v0, 0x7f0e0d97

    goto :goto_0

    .line 2325
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isOemUnlockAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2331
    const v0, 0x7f0e0d96

    .line 2330
    goto :goto_0
.end method

.method private updateOtaDisableAutomaticUpdateOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 985
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    .line 986
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 987
    const-string/jumbo v4, "ota_disable_automatic_update"

    .line 985
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 981
    return-void

    :cond_0
    move v0, v1

    .line 985
    goto :goto_0
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1768
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1769
    const-string/jumbo v4, "overlay_display_devices"

    .line 1768
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1770
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1771
    const-string/jumbo v1, ""

    .line 1774
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1775
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1776
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1777
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1778
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1779
    return-void

    .line 1775
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1782
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1783
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1767
    return-void
.end method

.method private updatePasswordSummary()V
    .locals 3

    .prologue
    .line 832
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    const v2, 0x7f0e00fd

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    .line 830
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    const v2, 0x7f0e00fc

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1097
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    .line 1098
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1099
    const-string/jumbo v3, "pointer_location"

    .line 1098
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1097
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1096
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1829
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    .line 1830
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "anr_show_background"

    .line 1829
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1828
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 1256
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    .line 1255
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1254
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 1245
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1244
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1243
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1219
    const-string/jumbo v3, "debug.hwui.show_non_rect_clip"

    .line 1218
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1220
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1221
    const-string/jumbo v1, "hide"

    .line 1224
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1225
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1226
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1227
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1228
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1229
    return-void

    .line 1225
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1232
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1233
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1217
    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1108
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    .line 1109
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1110
    const-string/jumbo v3, "show_touches"

    .line 1109
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1108
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1107
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1302
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1304
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "accessibility_display_daltonizer_enabled"

    .line 1303
    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1305
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1307
    const-string/jumbo v6, "accessibility_display_daltonizer"

    .line 1306
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1309
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1310
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1311
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1313
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    new-array v4, v4, [Ljava/lang/Object;

    .line 1314
    const v7, 0x7f0e0118

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 1313
    const v5, 0x7f0e011a

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1301
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1303
    goto :goto_0

    .line 1316
    .restart local v1    # "enabled":Z
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v5, "%s"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1319
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    .line 1320
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1319
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1088
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1087
    return-void

    .line 1088
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1193
    const-string/jumbo v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1194
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1195
    const-string/jumbo v1, ""

    .line 1198
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1199
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1200
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1201
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1202
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1203
    return-void

    .line 1199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1206
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1207
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1192
    return-void
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1369
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1370
    const-string/jumbo v3, "usb_audio_automatic_routing_disabled"

    .line 1369
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1368
    return-void
.end method

.method private updateUsbConfigurationValues()V
    .locals 7

    .prologue
    .line 1689
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 1690
    const-string/jumbo v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 1692
    .local v2, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1693
    .local v4, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1694
    .local v3, "titles":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1695
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 1696
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1697
    move v1, v0

    .line 1701
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1702
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1703
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1688
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .end local v3    # "titles":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1695
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .restart local v3    # "titles":[Ljava/lang/String;
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 970
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 971
    const-string/jumbo v4, "verifier_verify_adb_installs"

    .line 970
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 972
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 969
    return-void

    :cond_0
    move v0, v1

    .line 970
    goto :goto_0
.end method

.method private updateWebViewMultiprocessOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 793
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 795
    const-string/jumbo v3, "webview_multiprocess"

    .line 794
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 793
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 792
    return-void
.end method

.method private updateWebViewProviderOptions()V
    .locals 9

    .prologue
    .line 761
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    .line 762
    .local v4, "providers":[Landroid/webkit/WebViewProviderInfo;
    if-nez v4, :cond_0

    .line 763
    const-string/jumbo v7, "DevelopmentSettings"

    const-string/jumbo v8, "No WebView providers available"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-void

    .line 766
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v6, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_2

    .line 769
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    aget-object v8, v4, v2

    iget-object v8, v8, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 770
    aget-object v7, v4, v2

    iget-object v7, v7, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    aget-object v7, v4, v2

    iget-object v7, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 774
    :cond_2
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 775
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 777
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v5

    .line 778
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 779
    const-string/jumbo v5, ""

    .line 782
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 783
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 784
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    return-void

    .line 782
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 788
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "providers":[Landroid/webkit/WebViewProviderInfo;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 759
    :cond_5
    return-void
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1426
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1427
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1425
    return-void

    .line 1426
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1435
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1436
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1434
    return-void

    .line 1435
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1405
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    .line 1406
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1407
    const-string/jumbo v3, "wifi_display_certification_on"

    .line 1405
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1404
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1417
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1418
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1416
    return-void

    .line 1417
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1329
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1331
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "accessibility_display_daltonizer_enabled"

    .line 1330
    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1332
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1334
    const-string/jumbo v6, "accessibility_display_daltonizer"

    .line 1335
    const/4 v7, -0x1

    .line 1333
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1336
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1337
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1339
    return v4

    .end local v1    # "enabled":Z
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_0
    move v1, v5

    .line 1330
    goto :goto_0

    .line 1342
    .restart local v1    # "enabled":Z
    :cond_1
    return v5
.end method

.method private writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/support/v7/preference/ListPreference;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1760
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1761
    .local v1, "scale":F
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1762
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    .end local v1    # "scale":F
    :goto_1
    return-void

    .line 1760
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "scale":F
    goto :goto_0

    .line 1763
    .end local v1    # "scale":F
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1815
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1816
    .local v1, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1817
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    .end local v1    # "limit":I
    :goto_1
    return-void

    .line 1815
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "limit":I
    goto :goto_0

    .line 1818
    .end local v1    # "limit":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeBluetoothDisableAbsVolumeOptions()V
    .locals 2

    .prologue
    .line 1449
    const-string/jumbo v1, "persist.bluetooth.disableabsvol"

    .line 1450
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1449
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    return-void

    .line 1450
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 843
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 844
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 846
    const-string/jumbo v3, "bluetooth_hci_log"

    .line 847
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 845
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 842
    return-void

    .line 847
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeColorTemperature()V
    .locals 3

    .prologue
    .line 1362
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    .line 1363
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    .line 1362
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1365
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0caf

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1361
    return-void

    .line 1363
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1284
    const-string/jumbo v1, "debug.hwui.overdraw"

    .line 1285
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1284
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1287
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1283
    return-void

    .line 1285
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1296
    const-string/jumbo v1, "debug.layout"

    .line 1297
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1296
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1295
    return-void

    .line 1297
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 5

    .prologue
    .line 863
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 864
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    const/4 v4, 0x1

    .line 863
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 7

    .prologue
    .line 1158
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1159
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1161
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1162
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 1163
    .local v1, "disableOverlays":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    const/16 v4, 0x3f0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1167
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_1
    return-void

    .line 1162
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v3    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "disableOverlays":I
    goto :goto_0

    .line 1169
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeForceResizableOptions()V
    .locals 3

    .prologue
    .line 1385
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1386
    const-string/jumbo v2, "force_resizable_activities"

    .line 1387
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1385
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1384
    return-void

    .line 1387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1397
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1398
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1399
    const-string/jumbo v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1398
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1400
    const-string/jumbo v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1396
    return-void

    .line 1399
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1400
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1179
    const-string/jumbo v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1178
    return-void

    .line 1179
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 3

    .prologue
    .line 1720
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1721
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 1720
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1718
    :goto_0
    return-void

    .line 1722
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 9
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1522
    if-eqz p1, :cond_8

    .line 1523
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "32768"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1524
    :goto_0
    const-string/jumbo v6, "persist.log.tag"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, "currentTag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1526
    const-string/jumbo v0, ""

    .line 1530
    :cond_0
    const-string/jumbo v6, ",+Settings"

    const-string/jumbo v7, ""

    .line 1529
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1531
    const-string/jumbo v7, "^Settings,*"

    const-string/jumbo v8, ""

    .line 1529
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1532
    const-string/jumbo v7, ",+"

    const-string/jumbo v8, ","

    .line 1529
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1533
    const-string/jumbo v7, ",+$"

    const-string/jumbo v8, ""

    .line 1529
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1534
    .local v3, "newTag":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1535
    const-string/jumbo p1, "65536"

    .line 1537
    const-string/jumbo v6, "persist.log.tag.snet_event_log"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1538
    .local v5, "snetValue":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1539
    :cond_1
    const-string/jumbo v6, "log.tag.snet_event_log"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1540
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1541
    :cond_2
    const-string/jumbo v6, "persist.log.tag.snet_event_log"

    const-string/jumbo v7, "I"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1546
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1549
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Settings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1551
    .end local v5    # "snetValue":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1552
    const-string/jumbo v6, "persist.log.tag"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v1

    .line 1555
    .local v1, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    .line 1556
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1557
    .local v4, "size":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "persist.logd.size"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v4, ""

    .end local v4    # "size":Ljava/lang/String;
    :cond_7
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const-string/jumbo v6, "ctl.start"

    const-string/jumbo v7, "logd-reinit"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1560
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1521
    return-void

    .line 1522
    .end local v0    # "currentTag":Ljava/lang/String;
    .end local v1    # "defaultValue":Ljava/lang/String;
    .end local v3    # "newTag":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    .local v2, "disable":Z
    goto/16 :goto_0

    .line 1556
    .end local v2    # "disable":Z
    .restart local v0    # "currentTag":Ljava/lang/String;
    .restart local v1    # "defaultValue":Ljava/lang/String;
    .restart local v3    # "newTag":Ljava/lang/String;
    :cond_9
    move-object v4, v1

    .restart local v4    # "size":Ljava/lang/String;
    goto :goto_1
.end method

.method private writeLogpersistOption(Ljava/lang/Object;Z)V
    .locals 8
    .param p1, "newValue"    # Ljava/lang/Object;
    .param p2, "skipWarning"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1634
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v5, :cond_0

    .line 1635
    return-void

    .line 1637
    :cond_0
    const-string/jumbo v5, "persist.log.tag"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1638
    .local v1, "currentTag":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v5, "Settings"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1639
    const/4 p1, 0x0

    .line 1640
    const/4 p2, 0x1

    .line 1643
    .end local p1    # "newValue":Ljava/lang/Object;
    .end local p2    # "skipWarning":Z
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1644
    :cond_2
    if-eqz p2, :cond_4

    .line 1645
    iput-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistCleared:Z

    .line 1663
    :cond_3
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/DevelopmentSettings;->setLogpersistOff(Z)V

    .line 1664
    return-void

    .line 1646
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistCleared:Z

    if-nez v5, :cond_3

    .line 1648
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1649
    .local v2, "currentValue":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1650
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1649
    if-eqz v5, :cond_3

    .line 1651
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1652
    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1653
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1654
    const v7, 0x7f0e00ac

    .line 1653
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1652
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1655
    const v6, 0x7f0e00ab

    .line 1652
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1656
    const v6, 0x1040013

    .line 1652
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1657
    const v6, 0x1040009

    .line 1652
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    .line 1659
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    invoke-virtual {v5, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1660
    return-void

    .line 1667
    .end local v2    # "currentValue":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "logd.logpersistd.buffer"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1668
    .local v0, "currentBuffer":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1671
    :cond_7
    :goto_0
    const-string/jumbo v5, "persist.logd.logpersistd.buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    const-string/jumbo v5, "persist.logd.logpersistd"

    const-string/jumbo v6, "logcatd"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1674
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_8

    .line 1675
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1676
    .restart local v2    # "currentValue":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 1677
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1676
    if-eqz v5, :cond_a

    .line 1685
    .end local v2    # "currentValue":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogpersistValues()V

    .line 1633
    return-void

    .line 1669
    .end local v4    # "i":I
    :cond_9
    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->setLogpersistOff(Z)V

    goto :goto_0

    .line 1681
    .restart local v2    # "currentValue":Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_a
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1682
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method private writeMobileDataAlwaysOnOptions()V
    .locals 3

    .prologue
    .line 1460
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1461
    const-string/jumbo v2, "mobile_data_always_on"

    .line 1462
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1460
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1459
    return-void

    .line 1462
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeMockLocation()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 870
    const-string/jumbo v7, "appops"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 873
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v7, Lcom/android/settings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 874
    .local v6, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_1

    .line 876
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 877
    .local v4, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 878
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 880
    .local v3, "oldMockLocationApp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 881
    const/16 v8, 0x200

    .line 880
    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 882
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3a

    .line 883
    const/4 v9, 0x2

    .line 882
    invoke-virtual {v1, v8, v7, v3, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 884
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 892
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "oldMockLocationApp":Ljava/lang/String;
    .end local v4    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 894
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 895
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v9, 0x200

    .line 894
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 896
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 897
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 896
    const/16 v9, 0x3a

    .line 897
    const/4 v10, 0x0

    .line 896
    invoke-virtual {v1, v9, v7, v8, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 869
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    return-void

    .line 898
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1188
    const-string/jumbo v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1187
    return-void

    .line 1188
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeOtaDisableAutomaticUpdateOptions()V
    .locals 3

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 995
    const-string/jumbo v2, "ota_disable_automatic_update"

    .line 996
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 994
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 990
    return-void

    .line 996
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1787
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1788
    const-string/jumbo v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .line 1787
    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1789
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1786
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1093
    const-string/jumbo v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1092
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1091
    return-void

    .line 1093
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1824
    const-string/jumbo v2, "anr_show_background"

    .line 1825
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1823
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1822
    return-void

    .line 1825
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1260
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    .line 1261
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1260
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1259
    return-void

    .line 1261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1249
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    .line 1250
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1249
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1248
    return-void

    .line 1250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1237
    const-string/jumbo v1, "debug.hwui.show_non_rect_clip"

    .line 1238
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1237
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1240
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1236
    return-void

    .line 1238
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1104
    const-string/jumbo v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1103
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1102
    return-void

    .line 1104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 7

    .prologue
    .line 1141
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1142
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1144
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1145
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 1146
    .local v3, "showUpdates":I
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    const/16 v4, 0x3ea

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1150
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v3    # "showUpdates":I
    :cond_0
    :goto_1
    return-void

    .line 1145
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "showUpdates":I
    goto :goto_0

    .line 1152
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v3    # "showUpdates":I
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1346
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1347
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1348
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1349
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1345
    :goto_0
    return-void

    .line 1351
    :cond_0
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1352
    const-string/jumbo v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 3

    .prologue
    .line 1081
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1082
    const-string/jumbo v1, "1"

    .line 1081
    :goto_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 1079
    :goto_1
    return-void

    .line 1082
    :cond_0
    const-string/jumbo v1, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1211
    const-string/jumbo v1, "debug.hwui.profile"

    .line 1212
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1211
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1214
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1210
    return-void

    .line 1212
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1374
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1375
    const-string/jumbo v2, "usb_audio_automatic_routing_disabled"

    .line 1376
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1374
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1373
    return-void

    .line 1376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUsbConfigurationOption(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1708
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 1709
    .local v1, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1710
    .local v0, "function":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1711
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1712
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 1707
    :goto_0
    return-void

    .line 1714
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 977
    const-string/jumbo v2, "verifier_verify_adb_installs"

    .line 978
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 976
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 975
    return-void

    .line 978
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWebViewMultiprocessOptions()V
    .locals 6

    .prologue
    .line 799
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 800
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 801
    const-string/jumbo v5, "webview_multiprocess"

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 800
    :goto_0
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 804
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, "wv_package":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 806
    const/4 v4, -0x1

    .line 805
    invoke-interface {v3, v2, v4}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    .end local v2    # "wv_package":Ljava/lang/String;
    :goto_1
    return-void

    .line 801
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeWebViewProviderOptions(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 852
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    .line 853
    if-nez p1, :cond_1

    const-string/jumbo v3, ""

    .line 852
    :goto_0
    invoke-interface {v4, v3}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 854
    .local v1, "updatedProvider":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWebViewProviderOptions()V

    .line 855
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    return v2

    .line 853
    .end local v1    # "updatedProvider":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1431
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1430
    return-void

    .line 1431
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1440
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1439
    return-void

    .line 1440
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1411
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1412
    const-string/jumbo v2, "wifi_display_certification_on"

    .line 1413
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1411
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1410
    return-void

    .line 1413
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1422
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1421
    return-void

    .line 1422
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 334
    const/16 v0, 0x27

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 545
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 549
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 550
    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 552
    return-void

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 544
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1892
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1893
    if-ne p2, v1, :cond_0

    .line 1894
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1895
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1896
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1891
    :cond_0
    :goto_0
    return-void

    .line 1898
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 1899
    if-ne p2, v1, :cond_0

    .line 1900
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1901
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeMockLocation()V

    .line 1902
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMockLocation()V

    goto :goto_0

    .line 1904
    :cond_2
    if-nez p1, :cond_4

    .line 1905
    if-ne p2, v1, :cond_0

    .line 1906
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1907
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 1909
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1913
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 2154
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_2

    .line 2155
    if-ne p2, v4, :cond_1

    .line 2156
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 2157
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2158
    const-string/jumbo v4, "adb_enabled"

    .line 2157
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2159
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 2160
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 2161
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2164
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 2166
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_3

    .line 2167
    if-ne p2, v4, :cond_0

    .line 2169
    :try_start_0
    const-string/jumbo v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2170
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 2171
    .local v2, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2172
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 2173
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DevelopmentSettings"

    const-string/jumbo v4, "Unable to clear adb keys"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2176
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_5

    .line 2177
    if-ne p2, v4, :cond_4

    .line 2178
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 2179
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2180
    const-string/jumbo v4, "development_settings_enabled"

    .line 2179
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2181
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 2182
    iget-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 2185
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 2187
    :cond_5
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_0

    .line 2188
    if-ne p2, v4, :cond_6

    .line 2189
    invoke-direct {p0, v5}, Lcom/android/settings/DevelopmentSettings;->setLogpersistOff(Z)V

    goto :goto_0

    .line 2191
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogpersistValues()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 339
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 341
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 343
    const-string/jumbo v6, "backup"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 342
    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 345
    const-string/jumbo v6, "webviewupdate"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v6

    .line 344
    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 347
    const-string/jumbo v7, "persistent_data_block"

    .line 346
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 348
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 351
    const-string/jumbo v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 353
    const-string/jumbo v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 355
    invoke-virtual {p0, v8}, Lcom/android/settings/DevelopmentSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->isUiRestricted()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 364
    const v6, 0x7f080023

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 367
    const-string/jumbo v6, "debug_debugging_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 366
    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    .line 368
    .local v1, "debugDebuggingCategory":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v6, "enable_adb"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    .line 369
    const-string/jumbo v6, "clear_adb_keys"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    .line 370
    const-string/jumbo v6, "ro.adb.secure"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 371
    if-eqz v1, :cond_0

    .line 372
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 375
    :cond_0
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const-string/jumbo v6, "enable_terminal"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.android.terminal"

    invoke-static {v6, v7}, Lcom/android/settings/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 378
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 379
    iput-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 382
    :cond_1
    const-string/jumbo v6, "bugreport"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/support/v7/preference/Preference;

    .line 383
    const-string/jumbo v6, "bugreport_in_power"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    .line 384
    const-string/jumbo v6, "keep_screen_on"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 385
    const-string/jumbo v6, "bt_hci_snoop_log"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    .line 386
    const-string/jumbo v6, "oem_unlock_enable"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 387
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v6

    if-nez v6, :cond_2

    .line 388
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    .line 389
    iput-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 392
    :cond_2
    const-string/jumbo v6, "debug_view_attributes"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    .line 393
    const-string/jumbo v6, "force_allow_on_external"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    .line 394
    const-string/jumbo v6, "local_backup_password"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    .line 395
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v6

    if-nez v6, :cond_3

    .line 398
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 399
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 400
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 401
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 404
    :cond_3
    const-string/jumbo v6, "debug_app"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    .line 405
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    const-string/jumbo v6, "wait_for_debugger"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    .line 408
    const-string/jumbo v6, "mock_location_app"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    .line 409
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    const-string/jumbo v6, "verify_apps_over_usb"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    .line 412
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v6

    if-nez v6, :cond_4

    .line 413
    if-eqz v1, :cond_9

    .line 414
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 419
    :cond_4
    :goto_0
    const-string/jumbo v6, "strict_mode"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    .line 420
    const-string/jumbo v6, "pointer_location"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    .line 421
    const-string/jumbo v6, "show_touches"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    .line 422
    const-string/jumbo v6, "show_screen_updates"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 423
    const-string/jumbo v6, "disable_overlays"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    .line 424
    const-string/jumbo v6, "force_hw_ui"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    .line 425
    const-string/jumbo v6, "force_msaa"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    .line 426
    const-string/jumbo v6, "track_frame_time"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    .line 427
    const-string/jumbo v6, "show_non_rect_clip"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    .line 428
    const-string/jumbo v6, "show_hw_screen_udpates"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 429
    const-string/jumbo v6, "show_hw_layers_udpates"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 430
    const-string/jumbo v6, "debug_layout"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 431
    const-string/jumbo v6, "force_rtl_layout_all_locales"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 432
    const-string/jumbo v6, "debug_hw_overdraw"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    .line 433
    const-string/jumbo v6, "wifi_display_certification"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    .line 434
    const-string/jumbo v6, "wifi_verbose_logging"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    .line 435
    const-string/jumbo v6, "wifi_aggressive_handover"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    .line 436
    const-string/jumbo v6, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    .line 437
    const-string/jumbo v6, "mobile_data_always_on"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    .line 438
    const-string/jumbo v6, "select_logd_size"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    .line 439
    const-string/jumbo v6, "1"

    const-string/jumbo v7, "ro.debuggable"

    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 440
    const-string/jumbo v6, "select_logpersist"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    .line 451
    :goto_1
    const-string/jumbo v6, "select_usb_configuration"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    .line 452
    const-string/jumbo v6, "select_webview_provider"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    .line 453
    const-string/jumbo v6, "enable_webview_multiprocess"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    .line 454
    const-string/jumbo v6, "bluetooth_disable_absolute_volume"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    .line 456
    const-string/jumbo v6, "window_animation_scale"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    .line 457
    const-string/jumbo v6, "transition_animation_scale"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    .line 458
    const-string/jumbo v6, "animator_duration_scale"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    .line 459
    const-string/jumbo v6, "overlay_display_devices"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    .line 460
    const-string/jumbo v6, "simulate_color_space"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    .line 461
    const-string/jumbo v6, "usb_audio"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    .line 462
    const-string/jumbo v6, "force_resizable_activities"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    .line 465
    const-string/jumbo v6, "immediately_destroy_activities"

    .line 464
    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    .line 466
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const-string/jumbo v6, "app_process_limit"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    .line 472
    const-string/jumbo v6, "show_all_anrs"

    .line 471
    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    .line 473
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const-string/jumbo v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 477
    .local v3, "hdcpChecking":Landroid/support/v7/preference/Preference;
    if-eqz v3, :cond_5

    .line 478
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->removePreferenceForProduction(Landroid/support/v7/preference/Preference;)Z

    .line 483
    :cond_5
    const-string/jumbo v6, "convert_to_file_encryption"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    .line 486
    .local v0, "convertFbePreference":Landroid/support/v7/preference/PreferenceScreen;
    :try_start_0
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 487
    .local v5, "service":Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 488
    .local v4, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->isConvertibleToFBE()Z

    move-result v6

    if-nez v6, :cond_c

    .line 489
    const-string/jumbo v6, "convert_to_file_encryption"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "service":Landroid/os/IBinder;
    :cond_6
    :goto_2
    const-string/jumbo v6, "ota_disable_automatic_update"

    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    .line 501
    const-string/jumbo v6, "color_mode"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/ColorModePreference;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    .line 502
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    invoke-virtual {v6}, Lcom/android/settings/ColorModePreference;->updateCurrentAndSupported()V

    .line 503
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    invoke-virtual {v6}, Lcom/android/settings/ColorModePreference;->getColorModeCount()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_7

    .line 504
    const-string/jumbo v6, "color_mode"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 505
    iput-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    .line 507
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWebViewProviderOptions()V

    .line 509
    const-string/jumbo v6, "color_temperature"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0032

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 511
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :goto_3
    return-void

    .line 359
    .end local v0    # "convertFbePreference":Landroid/support/v7/preference/PreferenceScreen;
    .end local v1    # "debugDebuggingCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v3    # "hdcpChecking":Landroid/support/v7/preference/Preference;
    :cond_8
    iput-boolean v8, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    .line 360
    new-instance v6, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 361
    return-void

    .line 416
    .restart local v1    # "debugDebuggingCategory":Landroid/support/v7/preference/PreferenceGroup;
    :cond_9
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 442
    :cond_a
    const-string/jumbo v6, "select_logpersist"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    .line 443
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-eqz v6, :cond_b

    .line 444
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 445
    if-eqz v1, :cond_b

    .line 446
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 449
    :cond_b
    iput-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    goto/16 :goto_1

    .line 490
    .restart local v0    # "convertFbePreference":Landroid/support/v7/preference/PreferenceScreen;
    .restart local v3    # "hdcpChecking":Landroid/support/v7/preference/Preference;
    .restart local v4    # "mountService":Landroid/os/storage/IMountService;
    .restart local v5    # "service":Landroid/os/IBinder;
    :cond_c
    :try_start_1
    const-string/jumbo v6, "file"

    const-string/jumbo v7, "ro.crypto.type"

    const-string/jumbo v8, "none"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 491
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 493
    const v7, 0x7f0e010d

    .line 492
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 495
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "convert_to_file_encryption"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 514
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_d
    const-string/jumbo v6, "color_temperature"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 515
    iput-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 642
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 643
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateUsbConfigurationValues()V

    .line 647
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 2215
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 2216
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 2214
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 652
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    .line 654
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 655
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 658
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 659
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 651
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2198
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 2199
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 2202
    :cond_0
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2196
    :cond_1
    :goto_0
    return-void

    .line 2203
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_4

    .line 2204
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 2205
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 2207
    :cond_3
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 2208
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 2209
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 633
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 634
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/ColorModePreference;->stopListening()V

    .line 632
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2074
    const-string/jumbo v1, "hdcp_checking"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2075
    const-string/jumbo v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 2077
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 2078
    return v3

    .line 2079
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 2080
    if-nez p2, :cond_1

    .line 2081
    const-string/jumbo v1, "DevelopmentSettings"

    const-string/jumbo v2, "Tried to set a null WebView provider"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    return v4

    .line 2084
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeWebViewProviderOptions(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2085
    return v3

    .line 2089
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2090
    const v2, 0x7f0e010a

    .line 2089
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2091
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2093
    return v4

    .line 2094
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 2095
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 2096
    return v3

    .line 2097
    :cond_4
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_5

    .line 2098
    invoke-direct {p0, p2, v4}, Lcom/android/settings/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 2099
    return v3

    .line 2100
    :cond_5
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_6

    .line 2101
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeUsbConfigurationOption(Ljava/lang/Object;)V

    .line 2102
    return v3

    .line 2103
    :cond_6
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_7

    .line 2104
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v4, v1, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2105
    return v3

    .line 2106
    :cond_7
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_8

    .line 2107
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v3, v1, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2108
    return v3

    .line 2109
    :cond_8
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_9

    .line 2110
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2111
    return v3

    .line 2112
    :cond_9
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_a

    .line 2113
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 2114
    return v3

    .line 2115
    :cond_a
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_b

    .line 2116
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    .line 2117
    return v3

    .line 2118
    :cond_b
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_c

    .line 2119
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    .line 2120
    return v3

    .line 2121
    :cond_c
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_d

    .line 2122
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    .line 2123
    return v3

    .line 2124
    :cond_d
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_e

    .line 2125
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 2126
    return v3

    .line 2127
    :cond_e
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_f

    .line 2128
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 2129
    return v3

    .line 2131
    :cond_f
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1919
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1920
    return v3

    .line 1923
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_4

    .line 1924
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1925
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1926
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1927
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1928
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1927
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1929
    const v4, 0x7f0e00b5

    .line 1927
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1930
    const v4, 0x1040013

    .line 1927
    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1931
    const v4, 0x1040009

    .line 1927
    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1933
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2052
    :cond_2
    :goto_0
    return v3

    .line 1935
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1936
    const-string/jumbo v4, "adb_enabled"

    .line 1935
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1937
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1938
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1939
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    .line 1941
    :cond_4
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    if-ne p1, v4, :cond_6

    .line 1942
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1943
    :cond_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1944
    const v4, 0x7f0e00b7

    .line 1943
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1945
    const v4, 0x104000a

    .line 1943
    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1946
    const/high16 v4, 0x1040000

    .line 1943
    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 1948
    :cond_6
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_8

    .line 1949
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1950
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "com.android.terminal"

    .line 1951
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1950
    :goto_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0

    :cond_7
    move v2, v3

    .line 1952
    goto :goto_1

    .line 1953
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_a

    .line 1954
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1955
    const-string/jumbo v5, "bugreport_in_power_menu"

    .line 1956
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1954
    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1957
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->setBugreportStorageProviderStatus()V

    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 1956
    goto :goto_2

    .line 1958
    :cond_a
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v4, :cond_c

    .line 1959
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1960
    const-string/jumbo v5, "stay_on_while_plugged_in"

    .line 1961
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1962
    const/4 v2, 0x3

    .line 1959
    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    move v2, v3

    .line 1962
    goto :goto_3

    .line 1963
    :cond_c
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_d

    .line 1964
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1965
    :cond_d
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v4, :cond_f

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1966
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1967
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1968
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_0

    .line 1971
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 1973
    :cond_f
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v4, :cond_10

    .line 1974
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/settings/AppPicker;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1975
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings.extra.REQUESTIING_PERMISSION"

    .line 1976
    const-string/jumbo v4, "android.permission.ACCESS_MOCK_LOCATION"

    .line 1975
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1977
    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1978
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_10
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_12

    .line 1979
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1980
    const-string/jumbo v5, "debug_view_attributes"

    .line 1981
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1979
    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_11
    move v2, v3

    .line 1981
    goto :goto_4

    .line 1982
    :cond_12
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_14

    .line 1983
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1984
    const-string/jumbo v5, "force_allow_on_external"

    .line 1985
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1983
    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    move v2, v3

    .line 1985
    goto :goto_5

    .line 1986
    :cond_14
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v4, :cond_15

    .line 1987
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/AppPicker;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1988
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings.extra.DEBUGGABLE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1989
    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1990
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_15
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_16

    .line 1991
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1992
    :cond_16
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_17

    .line 1993
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1994
    :cond_17
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_18

    .line 1995
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeOtaDisableAutomaticUpdateOptions()V

    goto/16 :goto_0

    .line 1996
    :cond_18
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_19

    .line 1997
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1998
    :cond_19
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_1a

    .line 1999
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 2000
    :cond_1a
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_1b

    .line 2001
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 2002
    :cond_1b
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_1c

    .line 2003
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 2004
    :cond_1c
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_1d

    .line 2005
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 2006
    :cond_1d
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_1e

    .line 2007
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 2008
    :cond_1e
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_1f

    .line 2009
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 2010
    :cond_1f
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_20

    .line 2011
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 2012
    :cond_20
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_21

    .line 2013
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 2014
    :cond_21
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_22

    .line 2015
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 2016
    :cond_22
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_23

    .line 2017
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 2018
    :cond_23
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_24

    .line 2019
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 2020
    :cond_24
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_25

    .line 2021
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 2022
    :cond_25
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_26

    .line 2023
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 2024
    :cond_26
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_27

    .line 2025
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_0

    .line 2026
    :cond_27
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_28

    .line 2027
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_0

    .line 2028
    :cond_28
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_29

    .line 2029
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_0

    .line 2030
    :cond_29
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2a

    .line 2031
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeMobileDataAlwaysOnOptions()V

    goto/16 :goto_0

    .line 2032
    :cond_2a
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2b

    .line 2033
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeColorTemperature()V

    goto/16 :goto_0

    .line 2034
    :cond_2b
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2c

    .line 2035
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_0

    .line 2036
    :cond_2c
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2d

    .line 2037
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeForceResizableOptions()V

    goto/16 :goto_0

    .line 2038
    :cond_2d
    const-string/jumbo v2, "inactive_apps"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2039
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->startInactiveAppsFragment()V

    goto/16 :goto_0

    .line 2040
    :cond_2e
    const-string/jumbo v2, "background_check"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2041
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->startBackgroundCheckFragment()V

    goto/16 :goto_0

    .line 2042
    :cond_2f
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_30

    .line 2043
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeBluetoothDisableAbsVolumeOptions()V

    goto/16 :goto_0

    .line 2044
    :cond_30
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_31

    .line 2045
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWebViewMultiprocessOptions()V

    goto/16 :goto_0

    .line 2046
    :cond_31
    const-string/jumbo v2, "reset_shortcut_manager_throttling"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2047
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetShortcutManagerThrottling()V

    goto/16 :goto_0

    .line 2049
    :cond_32
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 582
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 584
    iget-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e008a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 590
    return-void

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 597
    invoke-static {v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 599
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 600
    if-nez v0, :cond_5

    .line 601
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 606
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 608
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "development_settings_enabled"

    .line 607
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 609
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 610
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 612
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eqz v2, :cond_6

    .line 623
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 625
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    if-eqz v2, :cond_4

    .line 626
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/settings/ColorModePreference;->startListening()V

    .line 627
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/settings/ColorModePreference;->updateCurrentAndSupported()V

    .line 581
    :cond_4
    return-void

    .line 603
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_5
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 618
    const-string/jumbo v4, "development_settings_enabled"

    .line 617
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 619
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 620
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 621
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1865
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1866
    return-void

    .line 1868
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_2

    .line 1869
    if-eqz p2, :cond_3

    .line 1870
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1871
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1872
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1873
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1874
    const v2, 0x7f0e00b9

    .line 1873
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1872
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1875
    const v1, 0x7f0e00b8

    .line 1872
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1876
    const v1, 0x1040013

    .line 1872
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1877
    const v1, 0x1040009

    .line 1872
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1879
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1864
    :cond_2
    :goto_0
    return-void

    .line 1881
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetDangerousOptions()V

    .line 1882
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1883
    const-string/jumbo v1, "development_settings_enabled"

    .line 1882
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1884
    iput-boolean p2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1885
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 2220
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 2222
    new-instance v0, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2219
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V
    .locals 1
    .param p1, "switchPreference"    # Landroid/support/v14/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    .line 663
    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 664
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 662
    return-void
.end method
