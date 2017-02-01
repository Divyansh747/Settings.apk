.class public Lcom/android/settings/WifiCallingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiCallingSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/WifiCallingSettings$1;,
        Lcom/android/settings/WifiCallingSettings$2;
    }
.end annotation


# instance fields
.field private mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

.field private mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

.field private mCallState:[I

.field private mEditableWfcMode:Z

.field private mEditableWfcRoamingMode:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUpdateAddress:Landroid/support/v7/preference/Preference;

.field private final mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/WifiCallingSettings;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/WifiCallingSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings/WifiCallingSettings;->getCarrierActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/WifiCallingSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/WifiCallingSettings;->isCallStateIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/WifiCallingSettings;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/WifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mCallState:[I

    .line 80
    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcRoamingMode:Z

    .line 144
    new-instance v0, Lcom/android/settings/WifiCallingSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/WifiCallingSettings$1;-><init>(Lcom/android/settings/WifiCallingSettings;)V

    .line 143
    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 198
    new-instance v0, Lcom/android/settings/WifiCallingSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/WifiCallingSettings$2;-><init>(Lcom/android/settings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    return-void
.end method

.method private static getCarrierActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 372
    const-class v5, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    .line 373
    .local v3, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v3, :cond_0

    return-object v6

    .line 375
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 376
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-nez v0, :cond_1

    return-object v6

    .line 379
    :cond_1
    const-string/jumbo v5, "wfc_emergency_address_carrier_app_string"

    .line 378
    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "carrierApp":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v6

    .line 382
    :cond_2
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 383
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_3

    return-object v6

    .line 386
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 387
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 388
    return-object v4
.end method

.method static getWfcModeSummary(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    .prologue
    .line 490
    const v0, 0x10400f9

    .line 491
    .local v0, "resId":I
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    packed-switch p1, :pswitch_data_0

    .line 503
    const-string/jumbo v1, "WifiCallingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected WFC mode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    :goto_0
    return v0

    .line 494
    :pswitch_0
    const v0, 0x10400fc

    .line 495
    goto :goto_0

    .line 497
    :pswitch_1
    const v0, 0x10400fb

    .line 498
    goto :goto_0

    .line 500
    :pswitch_2
    const v0, 0x10400fa

    .line 501
    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initPhoneStateListeners(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 88
    .local v3, "subMgr":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 90
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_0

    .line 91
    const-string/jumbo v4, "WifiCallingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initPhoneStateListeners subInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 92
    const-string/jumbo v6, " for phone Id: "

    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 96
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 97
    .local v1, "subId":I
    move v0, p1

    .line 104
    .local v0, "i":I
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v5, Lcom/android/settings/WifiCallingSettings$3;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/settings/WifiCallingSettings$3;-><init>(Lcom/android/settings/WifiCallingSettings;II)V

    aput-object v5, v4, p1

    .line 86
    return-void
.end method

.method private isCallStateIdle()Z
    .locals 5

    .prologue
    .line 510
    const/4 v0, 0x1

    .line 511
    .local v0, "callStateIdle":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 512
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 513
    const/4 v0, 0x0

    .line 511
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_1
    const-string/jumbo v2, "WifiCallingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v0
.end method

.method private registerPhoneStateListeners(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 322
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 323
    invoke-direct {p0, v0}, Lcom/android/settings/WifiCallingSettings;->initPhoneStateListeners(I)V

    .line 324
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 325
    const-string/jumbo v2, "WifiCallingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Register for call state change for phone Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 322
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    return-void
.end method

.method private showAlert(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 184
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v5, "alertTitle"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 185
    .local v4, "title":Ljava/lang/CharSequence;
    const-string/jumbo v5, "alertMessage"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 187
    .local v3, "message":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 190
    const v6, 0x1080027

    .line 188
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 191
    const v6, 0x104000a

    const/4 v7, 0x0

    .line 188
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 193
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 181
    return-void
.end method

.method private unRegisterPhoneStateListeners(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 333
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 334
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 336
    const-string/jumbo v2, "WifiCallingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unRegister for call state change for phone Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 338
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v5, v2, v0

    .line 334
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_1
    return-void
.end method

.method private updateButtonWfcMode(Landroid/content/Context;ZII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfcEnabled"    # Z
    .param p3, "wfcMode"    # I
    .param p4, "wfcRoamingMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 425
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1, p3}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    .line 426
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    :goto_0
    invoke-virtual {v4, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 428
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    if-eqz p2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcRoamingMode:Z

    :goto_1
    invoke-virtual {v4, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 431
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-static {p1}, Lcom/android/settings/WifiCallingSettings;->getCarrierActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 432
    .local v1, "updateAddressEnabled":Z
    :goto_2
    if-eqz p2, :cond_6

    invoke-static {p1, v3}, Lcom/android/ims/ImsManager;->displayWfcMode(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 433
    iget-boolean v2, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    if-eqz v2, :cond_3

    .line 434
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 439
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcRoamingMode:Z

    if-eqz v2, :cond_4

    .line 440
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 445
    :goto_4
    if-eqz v1, :cond_5

    .line 446
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 424
    :goto_5
    return-void

    .end local v0    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    .end local v1    # "updateAddressEnabled":Z
    :cond_0
    move v2, v3

    .line 426
    goto :goto_0

    :cond_1
    move v2, v3

    .line 428
    goto :goto_1

    .line 431
    .restart local v0    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "updateAddressEnabled":Z
    goto :goto_2

    .line 437
    :cond_3
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    .line 443
    :cond_4
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    .line 448
    :cond_5
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_5

    .line 451
    :cond_6
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 452
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 453
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_5
.end method

.method private updateWfcMode(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfcEnabled"    # Z

    .prologue
    .line 395
    const-string/jumbo v2, "WifiCallingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWfcMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 398
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v0

    .line 399
    .local v0, "wfcMode":I
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v1

    .line 400
    .local v1, "wfcRoamingMode":I
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZII)V

    .line 401
    if-eqz p2, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getMetricsCategory()I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 394
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getMetricsCategory()I

    move-result v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 221
    const/16 v0, 0x69

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 166
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 167
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    .line 168
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    .line 171
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/settings/WifiCallingSettings;->setEmptyView(Landroid/view/View;)V

    .line 172
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f0e048a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 161
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 410
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 414
    .local v0, "context":Landroid/content/Context;
    if-ne p1, v4, :cond_0

    .line 415
    const-string/jumbo v1, "WifiCallingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WFC emergency address activity result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 418
    invoke-direct {p0, v0, v4}, Lcom/android/settings/WifiCallingSettings;->updateWfcMode(Landroid/content/Context;Z)V

    .line 409
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0a0085

    .line 226
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 228
    const v3, 0x7f08007b

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->addPreferencesFromResource(I)V

    .line 230
    const-string/jumbo v3, "wifi_calling_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    .line 231
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    const-string/jumbo v3, "wifi_calling_roaming_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    .line 234
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    const-string/jumbo v3, "emergency_address_key"

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    .line 237
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 239
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 240
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v3, "carrier_config"

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 244
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v2, 0x1

    .line 245
    .local v2, "isWifiOnlySupported":Z
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 247
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 248
    const-string/jumbo v3, "editable_wfc_mode_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    .line 250
    const-string/jumbo v3, "editable_wfc_roaming_mode_bool"

    .line 249
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcRoamingMode:Z

    .line 252
    const-string/jumbo v3, "carrier_wfc_supports_wifi_only_bool"

    const/4 v4, 0x1

    .line 251
    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 256
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v2    # "isWifiOnlySupported":Z
    :cond_0
    if-nez v2, :cond_1

    .line 257
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const v4, 0x7f0a0083

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 258
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 259
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    .line 260
    const v4, 0x7f0a0084

    .line 259
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 261
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 265
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneCount:I

    .line 266
    iget v3, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 267
    iget v3, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mCallState:[I

    .line 225
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 178
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 176
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 308
    .local v0, "context":Landroid/content/Context;
    iget-boolean v1, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 309
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    .line 311
    invoke-direct {p0, v0}, Lcom/android/settings/WifiCallingSettings;->unRegisterPhoneStateListeners(Landroid/content/Context;)V

    .line 313
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 460
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v5, :cond_2

    .line 461
    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 462
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 463
    .local v0, "buttonMode":I
    invoke-static {v1, v8}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v3

    .line 464
    .local v3, "currentWfcMode":I
    if-eq v0, v3, :cond_0

    .line 465
    invoke-static {v1, v0, v8}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;IZ)V

    .line 466
    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getMetricsCategory()I

    move-result v6

    invoke-static {v5, v6, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 469
    :cond_0
    iget-boolean v5, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcRoamingMode:Z

    if-nez v5, :cond_1

    .line 470
    invoke-static {v1, v7}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v4

    .line 471
    .local v4, "currentWfcRoamingMode":I
    if-eq v0, v4, :cond_1

    .line 472
    invoke-static {v1, v0, v7}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;IZ)V

    .line 486
    .end local v0    # "buttonMode":I
    .end local v3    # "currentWfcMode":I
    .end local v4    # "currentWfcRoamingMode":I
    :cond_1
    :goto_0
    return v7

    .line 476
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v5, :cond_1

    .line 477
    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 478
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 479
    .restart local v0    # "buttonMode":I
    invoke-static {v1, v7}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v2

    .line 480
    .local v2, "currentMode":I
    if-eq v0, v2, :cond_1

    .line 481
    invoke-static {v1, v0, v7}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;IZ)V

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getMetricsCategory()I

    move-result v6

    invoke-static {v5, v6, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 272
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 276
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    invoke-direct {p0, v0}, Lcom/android/settings/WifiCallingSettings;->registerPhoneStateListeners(Landroid/content/Context;)V

    .line 279
    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 281
    iput-boolean v6, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    .line 285
    :cond_0
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 287
    :goto_0
    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 288
    invoke-static {v0, v7}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v3

    .line 289
    .local v3, "wfcMode":I
    invoke-static {v0, v6}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v4

    .line 290
    .local v4, "wfcRoamingMode":I
    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 291
    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/settings/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZII)V

    .line 294
    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 297
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "alertShow"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    invoke-direct {p0, v1}, Lcom/android/settings/WifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    .line 271
    :cond_1
    return-void

    .line 285
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "wfcMode":I
    .end local v4    # "wfcRoamingMode":I
    :cond_2
    const/4 v2, 0x0

    .local v2, "wfcEnabled":Z
    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 349
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v2, "WifiCallingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-nez p2, :cond_0

    .line 352
    invoke-direct {p0, v1, v5}, Lcom/android/settings/WifiCallingSettings;->updateWfcMode(Landroid/content/Context;Z)V

    .line 353
    return-void

    .line 357
    :cond_0
    invoke-static {v1}, Lcom/android/settings/WifiCallingSettings;->getCarrierActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 358
    .local v0, "carrierAppIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 359
    const-string/jumbo v2, "EXTRA_LAUNCH_CARRIER_APP"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v0, v6}, Lcom/android/settings/WifiCallingSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 347
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-direct {p0, v1, v6}, Lcom/android/settings/WifiCallingSettings;->updateWfcMode(Landroid/content/Context;Z)V

    goto :goto_0
.end method
