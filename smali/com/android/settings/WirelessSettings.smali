.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/WirelessSettings$1;,
        Lcom/android/settings/WirelessSettings$2;,
        Lcom/android/settings/WirelessSettings$3;,
        Lcom/android/settings/WirelessSettings$4;,
        Lcom/android/settings/WirelessSettings$5;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final KEY:Ljava/lang/String;

.field private imsInterfaceListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mButtonWfc:Landroid/support/v7/preference/Preference;

.field private mCallback:Lorg/codeaurora/wfcservice/IWFCServiceCB;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEnhancedWFCSettingsEnabled:Z

.field private mImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

.field private mImsResponseHandler:Landroid/os/Handler;

.field mIsNetworkSettingsAvailable:Z

.field private mLteEnabled:Z

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field mProvisioningVWiFiEnabled:Z

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;

.field private mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mWFCService:Lorg/codeaurora/wfcservice/IWFCService;


# direct methods
.method static synthetic -get0(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->imsInterfaceListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/WirelessSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/wfcservice/IWFCServiceCB;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mCallback:Lorg/codeaurora/wfcservice/IWFCServiceCB;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/WirelessSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/ims/QtiImsExtManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/WirelessSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mImsResponseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/WirelessSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/wfcservice/IWFCService;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWFCService:Lorg/codeaurora/wfcservice/IWFCService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/WirelessSettings;Lorg/codeaurora/wfcservice/IWFCService;)Lorg/codeaurora/wfcservice/IWFCService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WirelessSettings;->mWFCService:Lorg/codeaurora/wfcservice/IWFCService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/WirelessSettings;Landroid/content/Context;ZI)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "isTurnOn"    # Z
    .param p3, "preference"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/WirelessSettings;->broadcastWifiCallingStatus(Landroid/content/Context;ZI)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 674
    new-instance v0, Lcom/android/settings/WirelessSettings$3;

    invoke-direct {v0}, Lcom/android/settings/WirelessSettings$3;-><init>()V

    .line 673
    sput-object v0, Lcom/android/settings/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 129
    iput-boolean v1, p0, Lcom/android/settings/WirelessSettings;->mIsNetworkSettingsAvailable:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/settings/WirelessSettings;->mProvisioningVWiFiEnabled:Z

    .line 134
    const-string/jumbo v0, "persist.sys.provisioning"

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->KEY:Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Lcom/android/settings/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    .line 141
    new-instance v0, Lcom/android/settings/WirelessSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/WirelessSettings$1;-><init>(Lcom/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mConnection:Landroid/content/ServiceConnection;

    .line 158
    new-instance v0, Lcom/android/settings/WirelessSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/WirelessSettings$2;-><init>(Lcom/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mCallback:Lorg/codeaurora/wfcservice/IWFCServiceCB;

    .line 213
    iput-boolean v1, p0, Lcom/android/settings/WirelessSettings;->mLteEnabled:Z

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    .line 764
    new-instance v0, Lcom/android/settings/WirelessSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/WirelessSettings$4;-><init>(Lcom/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->imsInterfaceListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 785
    new-instance v0, Lcom/android/settings/WirelessSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/WirelessSettings$5;-><init>(Lcom/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mImsResponseHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method private broadcastWifiCallingStatus(Landroid/content/Context;ZI)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "isTurnOn"    # Z
    .param p3, "preference"    # I

    .prologue
    .line 358
    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v2, "broadcastWifiCallingStatus:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v0, Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string/jumbo v1, "com.android.wificall.TURNON"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "preference"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 357
    return-void

    .line 360
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v1, "com.android.wificall.TURNOFF"

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 349
    const-string/jumbo v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method private unbindWFCService()V
    .locals 4

    .prologue
    .line 189
    iget-boolean v1, p0, Lcom/android/settings/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    if-nez v1, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mWFCService:Lorg/codeaurora/wfcservice/IWFCService;

    if-eqz v1, :cond_1

    .line 194
    :try_start_0
    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v2, "WFCService unbindService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mWFCService:Lorg/codeaurora/wfcservice/IWFCService;

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mCallback:Lorg/codeaurora/wfcservice/IWFCServiceCB;

    invoke-interface {v1, v2}, Lorg/codeaurora/wfcservice/IWFCService;->unregisterCallback(Lorg/codeaurora/wfcservice/IWFCServiceCB;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 202
    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v2, "WFCService unbind error "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WFCService unregister error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 667
    const v0, 0x7f0e0a4e

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 354
    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 656
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 657
    const-string/jumbo v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 659
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 660
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    .line 659
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 662
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 655
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 367
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 368
    if-eqz p1, :cond_0

    .line 369
    const-string/jumbo v22, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 371
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 373
    const-string/jumbo v22, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 374
    const-string/jumbo v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 376
    const-string/jumbo v22, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 378
    const v22, 0x7f080081

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v8

    .line 382
    .local v8, "isAdmin":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 383
    .local v2, "activity":Landroid/app/Activity;
    const-string/jumbo v22, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 384
    const-string/jumbo v22, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v14/preference/SwitchPreference;

    .line 386
    .local v14, "nfc":Landroid/support/v14/preference/SwitchPreference;
    const-string/jumbo v22, "android_beam_settings"

    .line 385
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/RestrictedPreference;

    .line 388
    .local v4, "androidBeam":Lcom/android/settingslib/RestrictedPreference;
    new-instance v22, Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 389
    new-instance v22, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v14, v4}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;Lcom/android/settingslib/RestrictedPreference;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 392
    const v23, 0x7f0c0040

    .line 391
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    .line 393
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 394
    const-string/jumbo v22, "wifi_calling_enhanced_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/WFCPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    .line 395
    const-string/jumbo v22, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/WirelessSettings$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/WirelessSettings$7;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/WirelessSettings$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/WirelessSettings$8;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 450
    :goto_0
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 451
    const-string/jumbo v23, "airplane_mode_toggleable_radios"

    .line 450
    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 454
    .local v20, "toggleable":Ljava/lang/String;
    if-eqz v8, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 455
    const v23, 0x112006d

    .line 454
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 456
    .local v11, "isWimaxEnabled":Z
    :goto_1
    if-eqz v11, :cond_1

    .line 457
    const-string/jumbo v22, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    .line 456
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 458
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    .line 459
    .local v18, "root":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v22, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    .line 460
    .local v17, "ps":Landroid/support/v7/preference/Preference;
    if-eqz v17, :cond_2

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 470
    .end local v17    # "ps":Landroid/support/v7/preference/Preference;
    .end local v18    # "root":Landroid/support/v7/preference/PreferenceScreen;
    :cond_2
    :goto_2
    if-eqz v20, :cond_15

    const-string/jumbo v22, "wifi"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 475
    :goto_3
    if-eqz v8, :cond_3

    .line 476
    const-string/jumbo v22, "no_config_vpn"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    .line 475
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 477
    :cond_3
    const-string/jumbo v22, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 481
    :cond_4
    if-eqz v20, :cond_5

    const-string/jumbo v22, "bluetooth"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 486
    :cond_5
    if-eqz v20, :cond_16

    const-string/jumbo v22, "nfc"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 492
    :goto_4
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 496
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 501
    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 503
    const-string/jumbo v22, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    .line 502
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v22

    .line 501
    if-eqz v22, :cond_17

    .line 504
    :cond_7
    const-string/jumbo v22, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 505
    const-string/jumbo v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 511
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 512
    const v23, 0x7f0c0011

    .line 511
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 513
    .local v9, "isMobilePlanEnabled":Z
    if-nez v9, :cond_8

    .line 514
    const-string/jumbo v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    .line 515
    .local v16, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v16, :cond_8

    .line 516
    const-string/jumbo v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 521
    .end local v16    # "pref":Landroid/support/v7/preference/Preference;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "android.hardware.type.television"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 522
    const-string/jumbo v22, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 526
    :cond_9
    const-string/jumbo v22, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    .line 528
    .local v13, "mGlobalProxy":Landroid/support/v7/preference/Preference;
    const-string/jumbo v22, "device_policy"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 527
    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    .line 530
    .local v12, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 531
    invoke-virtual {v12}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v22

    if-nez v22, :cond_18

    const/16 v22, 0x1

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 535
    const-string/jumbo v22, "connectivity"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 537
    .local v5, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 538
    const v23, 0x7f0c0021

    .line 537
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 539
    .local v10, "isRJILlayout":Z
    if-eqz v10, :cond_a

    .line 540
    const-string/jumbo v22, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 543
    :cond_a
    const-string/jumbo v22, "no_config_tethering"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    .line 542
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v22

    if-eqz v22, :cond_19

    const/4 v3, 0x1

    .line 544
    .local v3, "adminDisallowedTetherConfig":Z
    :goto_7
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v22

    if-nez v22, :cond_b

    if-eqz v3, :cond_c

    .line 546
    :cond_b
    const-string/jumbo v22, "no_config_tethering"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    .line 545
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v22

    .line 544
    if-nez v22, :cond_c

    if-eqz v10, :cond_1a

    .line 548
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v22

    const-string/jumbo v23, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 585
    :cond_d
    :goto_8
    const-string/jumbo v22, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    .line 584
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 586
    const-string/jumbo v22, "network_reset"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 366
    :cond_e
    return-void

    .line 436
    .end local v3    # "adminDisallowedTetherConfig":Z
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    .end local v9    # "isMobilePlanEnabled":Z
    .end local v10    # "isRJILlayout":Z
    .end local v11    # "isWimaxEnabled":Z
    .end local v12    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v13    # "mGlobalProxy":Landroid/support/v7/preference/Preference;
    .end local v20    # "toggleable":Ljava/lang/String;
    :cond_f
    const-string/jumbo v22, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 438
    const v23, 0x7f0c004a

    .line 437
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/WirelessSettings;->mProvisioningVWiFiEnabled:Z

    .line 439
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/WirelessSettings;->mProvisioningVWiFiEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 440
    const-string/jumbo v22, "persist.sys.provisioning"

    const-string/jumbo v23, "false"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 441
    .local v21, "value":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 443
    .local v6, "context":Landroid/content/Context;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v6, v0}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 445
    .end local v6    # "context":Landroid/content/Context;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 447
    .end local v21    # "value":Ljava/lang/String;
    :cond_11
    const-string/jumbo v22, "wifi_calling_enhanced_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    .restart local v20    # "toggleable":Ljava/lang/String;
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 462
    .restart local v11    # "isWimaxEnabled":Z
    :cond_13
    if-eqz v20, :cond_14

    const-string/jumbo v22, "wimax"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    if-eqz v11, :cond_2

    .line 464
    :cond_14
    const-string/jumbo v22, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    .line 465
    .restart local v17    # "ps":Landroid/support/v7/preference/Preference;
    const-string/jumbo v22, "toggle_airplane"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 471
    .end local v17    # "ps":Landroid/support/v7/preference/Preference;
    :cond_15
    const-string/jumbo v22, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    const-string/jumbo v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 487
    :cond_16
    const-string/jumbo v22, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    const-string/jumbo v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 488
    const-string/jumbo v22, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    const-string/jumbo v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 507
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isNetworkSettingsApkAvailable(Landroid/content/Context;)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/WirelessSettings;->mIsNetworkSettingsAvailable:Z

    goto/16 :goto_5

    .line 531
    .restart local v9    # "isMobilePlanEnabled":Z
    .restart local v12    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v13    # "mGlobalProxy":Landroid/support/v7/preference/Preference;
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 542
    .restart local v5    # "cm":Landroid/net/ConnectivityManager;
    .restart local v10    # "isRJILlayout":Z
    :cond_19
    const/4 v3, 0x0

    .restart local v3    # "adminDisallowedTetherConfig":Z
    goto/16 :goto_7

    .line 549
    :cond_1a
    if-nez v3, :cond_d

    .line 550
    const-string/jumbo v22, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    .line 551
    .local v15, "p":Landroid/support/v7/preference/Preference;
    invoke-static {v5}, Lcom/android/settingslib/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 554
    const v23, 0x7f0c003e

    .line 553
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    move-object/from16 v19, v15

    .line 555
    check-cast v19, Lcom/android/settingslib/RestrictedPreference;

    .line 556
    .local v19, "rp":Lcom/android/settingslib/RestrictedPreference;
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->useAdminDisabledSummary(Z)V

    .line 557
    const v22, 0x7f0e0d55

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 561
    .end local v19    # "rp":Lcom/android/settingslib/RestrictedPreference;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    .line 560
    invoke-static/range {v22 .. v22}, Lcom/android/settings/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1c

    const/16 v22, 0x0

    :goto_9
    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 564
    const v23, 0x11200d0

    .line 563
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/WirelessSettings;->mLteEnabled:Z

    .line 565
    const-string/jumbo v22, "voice_over_lte"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 566
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/WirelessSettings;->mLteEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 568
    invoke-static {}, Lorg/codeaurora/ims/QtiImsExtManager;->getInstance()Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 571
    :try_start_0
    const-string/jumbo v22, "WirelessSettings"

    const-string/jumbo v23, "queryVoltePreference!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/QtiImsExtManager;->getImsPhoneId()I

    move-result v23

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->imsInterfaceListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-object/from16 v24, v0

    .line 572
    invoke-virtual/range {v22 .. v24}, Lorg/codeaurora/ims/QtiImsExtManager;->queryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 574
    :catch_0
    move-exception v7

    .line 575
    .local v7, "e":Lorg/codeaurora/ims/QtiImsException;
    const-string/jumbo v22, "WirelessSettings"

    invoke-virtual {v7}, Lorg/codeaurora/ims/QtiImsException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 560
    .end local v7    # "e":Lorg/codeaurora/ims/QtiImsException;
    :cond_1c
    const/16 v22, 0x1

    goto/16 :goto_9

    .line 579
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_8
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 330
    packed-switch p1, :pswitch_data_0

    .line 345
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 332
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 332
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 334
    const/4 v1, 0x0

    .line 332
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 336
    new-instance v1, Lcom/android/settings/WirelessSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/WirelessSettings$6;-><init>(Lcom/android/settings/WirelessSettings;)V

    .line 335
    const v2, 0x104000a

    .line 332
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->unbindWFCService()V

    .line 208
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 206
    return-void
.end method

.method public onManageMobilePlanClick()V
    .locals 13

    .prologue
    const v12, 0x7f0e061a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 263
    const-string/jumbo v8, "onManageMobilePlanClick:"

    invoke-direct {p0, v8}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 264
    iput-object v9, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 267
    .local v6, "resources":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 268
    .local v3, "ni":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v3, :cond_7

    .line 270
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v5, "provisioningIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 283
    :cond_0
    iget-object v8, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 285
    const-string/jumbo v8, "android.intent.action.MAIN"

    .line 286
    const-string/jumbo v9, "android.intent.category.APP_BROWSER"

    .line 285
    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 287
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 288
    const/high16 v8, 0x10400000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 291
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 322
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onManageMobilePlanClick: message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->showDialog(I)V

    .line 262
    :cond_1
    return-void

    .line 274
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_3

    .line 275
    const-string/jumbo v8, "WirelessSettings"

    const-string/jumbo v9, "Multiple matching carrier apps found, launching the first."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_3
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v5}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 279
    return-void

    .line 292
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v8, "WirelessSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "operatorName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 301
    iget-object v8, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 304
    const v8, 0x7f0e0619

    .line 303
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_5
    new-array v8, v11, [Ljava/lang/Object;

    .line 307
    aput-object v4, v8, v10

    .line 306
    invoke-virtual {v6, v12, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 310
    :cond_6
    new-array v8, v11, [Ljava/lang/Object;

    .line 311
    aput-object v4, v8, v10

    .line 310
    invoke-virtual {v6, v12, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 314
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_8

    .line 316
    const v8, 0x7f0e061b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 319
    :cond_8
    const v8, 0x7f0e061c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onMobileNetworkSettingsClick()V
    .locals 4

    .prologue
    .line 253
    const-string/jumbo v1, "onMobileNetworkSettingsClick:"

    invoke-direct {p0, v1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "qti MobileNetworkSettings Enabled"

    invoke-direct {p0, v1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 257
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.qualcomm.qti.networksetting"

    .line 258
    const-string/jumbo v3, "com.qualcomm.qti.networksetting.MobileNetworkSettings"

    .line 257
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 646
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 648
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 649
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 645
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreferenceTreeClick: preference="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_0

    .line 224
    const-string/jumbo v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    invoke-virtual {p0, v3, v2}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 229
    return v2

    .line 230
    :cond_0
    const-string/jumbo v3, "manage_mobile_plan"

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->onManageMobilePlanClick()V

    .line 249
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    .line 232
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/WirelessSettings;->mLteEnabled:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_4

    .line 233
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 234
    .local v1, "translateValue":Z
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    if-eqz v3, :cond_1

    .line 236
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    invoke-virtual {v4}, Lorg/codeaurora/ims/QtiImsExtManager;->getImsPhoneId()I

    move-result v4

    .line 237
    if-eqz v1, :cond_3

    :goto_1
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->imsInterfaceListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 236
    invoke-virtual {v3, v4, v2, v5}, Lorg/codeaurora/ims/QtiImsExtManager;->updateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    const-string/jumbo v2, "WirelessSettings"

    invoke-virtual {v0}, Lorg/codeaurora/ims/QtiImsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    .end local v0    # "e":Lorg/codeaurora/ims/QtiImsException;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 243
    .end local v1    # "translateValue":Z
    :cond_4
    const-string/jumbo v3, "mobile_network_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 244
    iget-boolean v3, p0, Lcom/android/settings/WirelessSettings;->mIsNetworkSettingsAvailable:Z

    .line 243
    if-eqz v3, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->onMobileNetworkSettingsClick()V

    .line 246
    return v2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 592
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 594
    iget-boolean v2, p0, Lcom/android/settings/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mWFCService:Lorg/codeaurora/wfcservice/IWFCService;

    if-nez v2, :cond_0

    .line 596
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 597
    .local v1, "intentWfc":Landroid/content/Intent;
    const-string/jumbo v2, "com.qualcomm.qti.wfcservice.IWFCService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string/jumbo v2, "com.qualcomm.qti.wfcservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 602
    .end local v1    # "intentWfc":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v2}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 603
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 609
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 610
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v2

    .line 609
    if-eqz v2, :cond_5

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 613
    iget-boolean v2, p0, Lcom/android/settings/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    if-nez v2, :cond_3

    .line 614
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    .line 615
    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v3

    .line 614
    invoke-static {v0, v3}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 627
    :goto_0
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    .line 628
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v3

    .line 627
    invoke-static {v0, v3}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 591
    :cond_2
    :goto_1
    return-void

    .line 617
    :cond_3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 618
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    check-cast v2, Lcom/android/settings/WFCPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/WFCPreference;->setChecked(Z)V

    .line 619
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    check-cast v2, Lcom/android/settings/WFCPreference;

    const v3, 0x7f0e06d2

    invoke-virtual {v2, v3}, Lcom/android/settings/WFCPreference;->setSummary(I)V

    goto :goto_0

    .line 621
    :cond_4
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    check-cast v2, Lcom/android/settings/WFCPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/WFCPreference;->setChecked(Z)V

    .line 622
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    check-cast v2, Lcom/android/settings/WFCPreference;

    .line 623
    const-string/jumbo v3, "sys.wificall.status.msg"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    invoke-virtual {v2, v3}, Lcom/android/settings/WFCPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 630
    :cond_5
    const-string/jumbo v2, "WFC not supported. Remove WFC menu"

    invoke-direct {p0, v2}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 631
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 637
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 639
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    const-string/jumbo v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_0
    return-void
.end method
