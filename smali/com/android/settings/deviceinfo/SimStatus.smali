.class public Lcom/android/settings/deviceinfo/SimStatus;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/SimStatus$1;,
        Lcom/android/settings/deviceinfo/SimStatus$2;,
        Lcom/android/settings/deviceinfo/SimStatus$3;
    }
.end annotation


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mDefaultText:Ljava/lang/String;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mListView:Landroid/widget/ListView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowICCID:Z

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/support/v7/preference/Preference;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/deviceinfo/SimStatus;Ljava/lang/String;)V
    .locals 0
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePhoneInfos()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePreference()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 122
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$1;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 466
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$2;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 484
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$3;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 77
    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 492
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 248
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 246
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object p2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 259
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    const-string/jumbo v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 310
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e01b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 327
    :goto_0
    const-string/jumbo v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void

    .line 314
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e01b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e01b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e01b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e01b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 13

    .prologue
    const/16 v12, 0xd

    .line 266
    const/4 v5, 0x0

    .line 267
    .local v5, "networktype":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 268
    .local v7, "subId":I
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 269
    iget-object v9, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 268
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 270
    .local v0, "actualDataNetworkType":I
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 271
    iget-object v9, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 270
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 272
    .local v1, "actualVoiceNetworkType":I
    if-eqz v0, :cond_4

    .line 273
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 278
    .end local v5    # "networktype":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 280
    .local v6, "show4GForLTE":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.android.systemui"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 281
    .local v2, "con":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "config_show4GForLTE"

    .line 282
    const-string/jumbo v10, "bool"

    const-string/jumbo v11, "com.android.systemui"

    .line 281
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 283
    .local v4, "id":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 288
    .end local v2    # "con":Landroid/content/Context;
    .end local v4    # "id":I
    .end local v6    # "show4GForLTE":Z
    :goto_1
    if-eqz v5, :cond_1

    const-string/jumbo v8, "LTE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    .line 289
    const-string/jumbo v5, "4G"

    .line 292
    :cond_1
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierOneSupported()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 293
    if-eq v12, v0, :cond_2

    .line 294
    if-ne v12, v1, :cond_3

    .line 295
    :cond_2
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v7}, Landroid/telephony/TelephonyManager;->isImsRegisteredForSubscriber(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 297
    const v9, 0x7f0e0d5c

    .line 296
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 303
    :cond_3
    :goto_2
    const-string/jumbo v8, "network_type"

    invoke-direct {p0, v8, v5}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void

    .line 274
    .restart local v5    # "networktype":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_0

    .line 275
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "networktype":Ljava/lang/String;
    goto :goto_0

    .line 284
    .end local v5    # "networktype":Ljava/lang/String;
    .restart local v6    # "show4GForLTE":Z
    :catch_0
    move-exception v3

    .line 285
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "SimStatus"

    const-string/jumbo v9, "NameNotFoundException for show4GFotLTE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 299
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "show4GForLTE":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0d5d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "networktype":Ljava/lang/String;
    goto :goto_2
.end method

.method private updatePhoneInfos()V
    .locals 4

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 431
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 433
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    .line 433
    if-eqz v1, :cond_2

    .line 435
    if-nez v0, :cond_0

    .line 436
    const-string/jumbo v1, "SimStatus"

    const-string/jumbo v2, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void

    .line 440
    :cond_0
    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 442
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 444
    const/4 v3, 0x0

    .line 443
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 446
    :cond_1
    new-instance v1, Lcom/android/settings/deviceinfo/SimStatus$4;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/deviceinfo/SimStatus$4;-><init>(Lcom/android/settings/deviceinfo/SimStatus;I)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 428
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    return-void
.end method

.method private updatePreference()V
    .locals 5

    .prologue
    .line 396
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 398
    const-string/jumbo v2, "br"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 399
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 398
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 404
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 403
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 406
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    const-string/jumbo v2, "show_iccid_in_sim_status_bool"

    .line 405
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowICCID:Z

    .line 410
    const-string/jumbo v2, "number"

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-static {v3, v4}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v3

    .line 410
    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v2, "imei"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v2, "imei_sv"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowICCID:Z

    if-nez v2, :cond_2

    .line 416
    const-string/jumbo v2, "iccid"

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 423
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-nez v2, :cond_1

    .line 424
    const-string/jumbo v2, "latest_area_info"

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 395
    :cond_1
    return-void

    .line 419
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "iccid":Ljava/lang/String;
    const-string/jumbo v2, "iccid"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 332
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e01b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 353
    :goto_0
    const-string/jumbo v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0e01ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_1
    const-string/jumbo v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void

    .line 336
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e01a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e01a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 347
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e01ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    :cond_0
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0e01ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 201
    const/16 v0, 0x2b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 145
    const-string/jumbo v0, "carrier_config"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    .line 150
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 153
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0195

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, "signal_strength"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 161
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    if-nez v5, :cond_1

    .line 162
    iput-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 189
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 164
    :cond_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    :cond_2
    iput-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 166
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 167
    const v4, 0x7f040090

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 169
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f110063

    .line 168
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 170
    .local v2, "prefs_container":Landroid/view/ViewGroup;
    invoke-static {p2, v3, v2, v6}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 171
    invoke-super {p0, p1, v2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, "prefs":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    .line 175
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabWidget:Landroid/widget/TabWidget;

    .line 176
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mListView:Landroid/widget/ListView;

    .line 178
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 179
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 180
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 183
    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 184
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-direct {p0, v6, v4}, Lcom/android/settings/deviceinfo/SimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_3
    return-object v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 233
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 235
    const/4 v2, 0x0

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 206
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 207
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePreference()V

    .line 210
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 211
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateDataState()V

    .line 213
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 214
    const/16 v3, 0x141

    .line 213
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 217
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 218
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "getLatestIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 224
    const-string/jumbo v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 223
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 205
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePhoneInfos()V

    .line 193
    return-void
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 9
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v8, 0x1

    const/4 v4, -0x1

    .line 370
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    if-eqz v3, :cond_4

    .line 371
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 373
    .local v2, "state":I
    if-eq v8, v2, :cond_0

    .line 374
    const/4 v3, 0x3

    if-ne v3, v2, :cond_1

    .line 375
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    return-void

    .line 379
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    .line 380
    .local v1, "signalDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    .line 382
    .local v0, "signalAsu":I
    if-ne v4, v1, :cond_2

    .line 383
    const/4 v1, 0x0

    .line 386
    :cond_2
    if-ne v4, v0, :cond_3

    .line 387
    const/4 v0, 0x0

    .line 390
    :cond_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 391
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 390
    const v6, 0x7f0e0aab

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    .end local v0    # "signalAsu":I
    .end local v1    # "signalDbm":I
    .end local v2    # "state":I
    :cond_4
    return-void
.end method
