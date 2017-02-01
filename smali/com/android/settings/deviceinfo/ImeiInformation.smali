.class public Lcom/android/settings/deviceinfo/ImeiInformation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ImeiInformation.java"


# instance fields
.field private isMultiSIM:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    .line 39
    return-void
.end method

.method private initPreferenceScreen(I)V
    .locals 2
    .param p1, "slotCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 64
    if-le p1, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    .line 65
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 66
    const v1, 0x7f080024

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->addPreferencesFromResource(I)V

    .line 67
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->setPreferenceValue(I)V

    .line 68
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->setNewKey(I)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .end local v0    # "slotId":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 63
    .restart local v0    # "slotId":I
    :cond_1
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 200
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 198
    :cond_0
    return-void
.end method

.method private setNewKey(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 146
    .local v4, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 147
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 148
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 149
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, v3, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->updateTitle(Landroid/support/v7/preference/Preference;I)V

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    :cond_1
    return-void
.end method

.method private setPreferenceValue(I)V
    .locals 11
    .param p1, "phoneId"    # I

    .prologue
    const/16 v10, 0xe

    const/4 v9, 0x0

    .line 73
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 74
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v4, 0x0

    .line 75
    .local v4, "imeiStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 78
    .local v2, "enable14DigitImei":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 79
    const-string/jumbo v8, "carrier_config"

    .line 78
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 80
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 81
    .local v6, "subIds":[I
    if-eqz v0, :cond_0

    .line 82
    const/4 v7, 0x0

    aget v7, v6, v7

    invoke-virtual {v0, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 84
    const/4 v7, 0x0

    aget v7, v6, v7

    invoke-virtual {v0, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v7

    .line 85
    const-string/jumbo v8, "config_enable_display_14digit_imei"

    .line 84
    invoke-virtual {v7, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 91
    .end local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v2    # "enable14DigitImei":Z
    .end local v6    # "subIds":[I
    :cond_0
    :goto_0
    if-eqz v5, :cond_3

    .line 92
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "imeiStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 94
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_1

    .line 95
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 98
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 99
    const-string/jumbo v7, "meid_number"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v7, "min_number"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 103
    const-string/jumbo v7, "min_number"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    const v8, 0x7f0e0528

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 106
    :cond_2
    const-string/jumbo v7, "prl_version"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 110
    const-string/jumbo v7, "icc_id"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v7, "imei"

    invoke-direct {p0, v7, v4}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v7, "imei"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryTextAsDigit(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v7, "imei_sv"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryTextAsDigit(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v4    # "imeiStr":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 117
    .restart local v4    # "imeiStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "imei_sv"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v7, "imei"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 123
    const v8, 0x7f0c0030

    .line 122
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 124
    .local v1, "displayIccId":Z
    if-eqz v1, :cond_6

    .line 125
    const-string/jumbo v7, "icc_id"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_2
    const-string/jumbo v7, "imei"

    invoke-direct {p0, v7, v4}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v7, "imei_sv"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v7, "imei"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryTextAsDigit(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v7, "imei_sv"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryTextAsDigit(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v7, "prl_version"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v7, "meid_number"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v7, "min_number"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_6
    const-string/jumbo v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 87
    .end local v1    # "displayIccId":Z
    .restart local v2    # "enable14DigitImei":Z
    .local v4, "imeiStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/RuntimeException;
    goto/16 :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/CharSequence;Z)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "forceDigit"    # Z

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 180
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0195

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 189
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    :cond_1
    return-void

    .line 182
    :cond_2
    if-eqz p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 184
    .local v2, "spannable":Landroid/text/Spannable;
    new-instance v3, Landroid/text/style/TtsSpan$DigitsBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/style/TtsSpan$DigitsBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 185
    .local v1, "span":Landroid/text/style/TtsSpan;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-interface {v2, v1, v4, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 186
    move-object p2, v2

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    .line 169
    return-void
.end method

.method private setSummaryTextAsDigit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    .line 173
    return-void
.end method

.method private updateTitle(Landroid/support/v7/preference/Preference;I)V
    .locals 6
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "slotId"    # I

    .prologue
    .line 159
    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "title":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0e0bb4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 207
    const/16 v0, 0x29

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 57
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 58
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->initPreferenceScreen(I)V

    .line 53
    return-void
.end method
