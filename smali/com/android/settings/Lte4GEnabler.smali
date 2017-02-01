.class public Lcom/android/settings/Lte4GEnabler;
.super Ljava/lang/Object;
.source "Lte4GEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Lte4GEnabler$1;,
        Lcom/android/settings/Lte4GEnabler$MyHandler;
    }
.end annotation


# static fields
.field private static final URI_PHONE_FEATURE:Landroid/net/Uri;

.field private static mHandler:Lcom/android/settings/Lte4GEnabler$MyHandler;

.field private static final sPhoneCount:I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mCtMccMncs:[Ljava/lang/String;

.field private mDialogClicked:Z

.field private mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mPreviousNetworkType:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static synthetic -get0(Lcom/android/settings/Lte4GEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/Lte4GEnabler;->mDialogClicked:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/Lte4GEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/Lte4GEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/Lte4GEnabler;->mDialogClicked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/Lte4GEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->promptUser()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/Lte4GEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->setPrefNetwork()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/Lte4GEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->setSwitchStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "content://com.qualcomm.qti.phonefeature.FEATURE_PROVIDER"

    .line 61
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Lte4GEnabler;->URI_PHONE_FEATURE:Landroid/net/Uri;

    .line 65
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/settings/Lte4GEnabler;->sPhoneCount:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sw"    # Landroid/widget/Switch;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Lte4GEnabler;->mDialogClicked:Z

    .line 76
    const/16 v0, 0x16

    iput v0, p0, Lcom/android/settings/Lte4GEnabler;->mPreviousNetworkType:I

    .line 192
    new-instance v0, Lcom/android/settings/Lte4GEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Lte4GEnabler$1;-><init>(Lcom/android/settings/Lte4GEnabler;)V

    iput-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 79
    iput-object p1, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    .line 81
    new-instance v0, Lcom/android/settings/Lte4GEnabler$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Lte4GEnabler$MyHandler;-><init>(Lcom/android/settings/Lte4GEnabler;Lcom/android/settings/Lte4GEnabler$MyHandler;)V

    sput-object v0, Lcom/android/settings/Lte4GEnabler;->mHandler:Lcom/android/settings/Lte4GEnabler$MyHandler;

    .line 82
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mCtMccMncs:[Ljava/lang/String;

    .line 78
    return-void
.end method

.method private callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/Lte4GEnabler;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 312
    return-object v2

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/Lte4GEnabler;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getPreferredNetworkType(I)I
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    .line 318
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 319
    .local v0, "settingsNetworkMode":I
    iget-object v3, p0, Lcom/android/settings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 320
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    sget v5, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 321
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 334
    :goto_0
    const-string/jumbo v3, "Lte4GEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get preferred network type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return v0

    .line 327
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 328
    const-string/jumbo v4, "preferred_network_mode"

    .line 326
    invoke-static {v3, v4, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "Lte4GEnabler"

    const-string/jumbo v4, "getPreferredNetworkType: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProperNwMode(I)I
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/16 v7, 0x16

    .line 255
    invoke-direct {p0, p1}, Lcom/android/settings/Lte4GEnabler;->isCtCard(I)Z

    move-result v0

    .line 256
    .local v0, "isCtCardPresent":Z
    iget-object v4, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    .line 257
    const-string/jumbo v5, "PREVIOUS_NW_TYPE"

    const/4 v6, 0x0

    .line 256
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 258
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "privious_network_type"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/Lte4GEnabler;->mPreviousNetworkType:I

    .line 261
    iget v4, p0, Lcom/android/settings/Lte4GEnabler;->mPreviousNetworkType:I

    if-eq v4, v7, :cond_0

    .line 262
    iget v1, p0, Lcom/android/settings/Lte4GEnabler;->mPreviousNetworkType:I

    .line 267
    .local v1, "lteNwMode":I
    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x7

    .line 269
    .local v2, "nwMode":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .end local v1    # "lteNwMode":I
    :goto_2
    return v1

    .line 264
    .end local v2    # "nwMode":I
    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0x16

    .restart local v1    # "lteNwMode":I
    goto :goto_0

    .line 265
    .end local v1    # "lteNwMode":I
    :cond_1
    const/16 v1, 0x14

    .restart local v1    # "lteNwMode":I
    goto :goto_0

    .line 268
    :cond_2
    const/16 v2, 0x12

    .restart local v2    # "nwMode":I
    goto :goto_1

    :cond_3
    move v1, v2

    .line 269
    goto :goto_2
.end method

.method private isCtCard(I)Z
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 240
    iget-object v4, p0, Lcom/android/settings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 241
    .local v2, "subId":[I
    iget-object v4, p0, Lcom/android/settings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    aget v6, v2, v5

    invoke-virtual {v4, v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 242
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/Lte4GEnabler;->mCtMccMncs:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 243
    const-string/jumbo v4, "%03d%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "mccMnc":Ljava/lang/String;
    const-string/jumbo v4, "Lte4GEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mccMnc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v6, p0, Lcom/android/settings/Lte4GEnabler;->mCtMccMncs:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v0, v6, v4

    .line 246
    .local v0, "ctMccMnc":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 247
    return v9

    .line 245
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "ctMccMnc":Ljava/lang/String;
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    return v5
.end method

.method private isDdsSubInLteMode()Z
    .locals 7

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, "rlt":Z
    iget-object v4, p0, Lcom/android/settings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 120
    .local v1, "ddsSubId":I
    iget-object v4, p0, Lcom/android/settings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 121
    .local v0, "ddsSlotId":I
    invoke-direct {p0, v0}, Lcom/android/settings/Lte4GEnabler;->getPreferredNetworkType(I)I

    move-result v3

    .line 122
    .local v3, "type":I
    const/16 v4, 0x16

    if-eq v3, v4, :cond_0

    .line 123
    const/16 v4, 0x14

    if-ne v3, v4, :cond_2

    .line 132
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    .line 133
    const/4 v5, 0x5

    .line 132
    if-ne v4, v5, :cond_1

    .line 134
    const/4 v2, 0x1

    .line 136
    :cond_1
    const-string/jumbo v4, "Lte4GEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDdsSubInLteMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v2

    .line 124
    :cond_2
    const/16 v4, 0x13

    if-eq v3, v4, :cond_0

    .line 125
    const/16 v4, 0x11

    if-eq v3, v4, :cond_0

    .line 126
    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 127
    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 128
    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    .line 129
    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 130
    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    .line 131
    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    goto :goto_0
.end method

.method private isPrefTDDDataOnly(I)Z
    .locals 5
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 185
    const-string/jumbo v4, "network_band_preferred"

    .line 184
    invoke-static {v3, v4, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    .local v1, "tddEnabled":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 187
    .end local v1    # "tddEnabled":I
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v2
.end method

.method private promptUser()V
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0d43

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/android/settings/Lte4GEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings/Lte4GEnabler$2;-><init>(Lcom/android/settings/Lte4GEnabler;)V

    .line 153
    const v2, 0x7f0e0187

    .line 151
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/android/settings/Lte4GEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/settings/Lte4GEnabler$3;-><init>(Lcom/android/settings/Lte4GEnabler;)V

    .line 161
    const v2, 0x7f0e0186

    .line 151
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 170
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 171
    new-instance v1, Lcom/android/settings/Lte4GEnabler$4;

    invoke-direct {v1, p0}, Lcom/android/settings/Lte4GEnabler$4;-><init>(Lcom/android/settings/Lte4GEnabler;)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 150
    :cond_0
    return-void
.end method

.method private setPrefNetwork()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 208
    iget-object v5, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 209
    const-string/jumbo v5, "Lte4GEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isChecked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v5, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    iget-object v5, p0, Lcom/android/settings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v5, p0, Lcom/android/settings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 215
    .local v0, "ddsSlotId":I
    invoke-direct {p0, v0}, Lcom/android/settings/Lte4GEnabler;->getProperNwMode(I)I

    move-result v3

    .line 216
    .local v3, "networkType":I
    invoke-direct {p0, v0, v3}, Lcom/android/settings/Lte4GEnabler;->storeNwModeIntoDb(II)V

    .line 217
    invoke-direct {p0, v0}, Lcom/android/settings/Lte4GEnabler;->isPrefTDDDataOnly(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 218
    const/16 v5, 0xb

    const/4 v6, 0x2

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/settings/Lte4GEnabler;->setPrefNetwork(III)V

    .line 206
    .end local v3    # "networkType":I
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local v3    # "networkType":I
    :cond_1
    invoke-direct {p0, v0, v3}, Lcom/android/settings/Lte4GEnabler;->setPrefNetwork(II)V

    goto :goto_0

    .line 223
    .end local v0    # "ddsSlotId":I
    .end local v3    # "networkType":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v5, p0, Lcom/android/settings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 225
    .restart local v0    # "ddsSlotId":I
    invoke-direct {p0, v0}, Lcom/android/settings/Lte4GEnabler;->getPreferredNetworkType(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/Lte4GEnabler;->mPreviousNetworkType:I

    .line 226
    iget-object v5, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    .line 227
    const-string/jumbo v6, "PREVIOUS_NW_TYPE"

    .line 226
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 228
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 229
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "privious_network_type"

    iget v6, p0, Lcom/android/settings/Lte4GEnabler;->mPreviousNetworkType:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget v5, Lcom/android/settings/Lte4GEnabler;->sPhoneCount:I

    if-ge v2, v5, :cond_0

    .line 232
    invoke-direct {p0, v2}, Lcom/android/settings/Lte4GEnabler;->getProperNwMode(I)I

    move-result v3

    .line 233
    .restart local v3    # "networkType":I
    invoke-direct {p0, v2, v3}, Lcom/android/settings/Lte4GEnabler;->storeNwModeIntoDb(II)V

    .line 234
    invoke-direct {p0, v2, v3}, Lcom/android/settings/Lte4GEnabler;->setPrefNetwork(II)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setPrefNetwork(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "network"    # I

    .prologue
    .line 283
    new-instance v2, Landroid/os/Messenger;

    sget-object v3, Lcom/android/settings/Lte4GEnabler;->mHandler:Lcom/android/settings/Lte4GEnabler$MyHandler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 284
    .local v2, "msger":Landroid/os/Messenger;
    sget-object v3, Lcom/android/settings/Lte4GEnabler;->mHandler:Lcom/android/settings/Lte4GEnabler$MyHandler;

    .line 285
    const/4 v4, 0x0

    .line 284
    invoke-virtual {v3, v4}, Lcom/android/settings/Lte4GEnabler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 286
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "slot"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    const-string/jumbo v3, "network"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string/jumbo v3, "callback"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 292
    const-string/jumbo v3, "set_pref_network"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/Lte4GEnabler;->callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 282
    return-void
.end method

.method private setSwitchStatus()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->isDdsSubInLteMode()Z

    move-result v0

    .line 108
    .local v0, "isLTEMode":Z
    iget-object v2, p0, Lcom/android/settings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 112
    .end local v0    # "isLTEMode":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 113
    iget-object v2, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 114
    const-string/jumbo v4, "airplane_mode_on"

    .line 113
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/Lte4GEnabler;->isThereSimReady()Z

    move-result v1

    .line 113
    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 105
    return-void
.end method

.method private storeNwModeIntoDb(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "nwMode"    # I

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 274
    const-string/jumbo v2, "preferred_network_mode_default"

    .line 273
    invoke-static {v1, v2, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 275
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 276
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public isThereSimReady()Z
    .locals 5

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "rlt":Z
    const/4 v0, 0x0

    .end local v1    # "rlt":Z
    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/settings/Lte4GEnabler;->sPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 143
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 144
    const/4 v3, 0x5

    .line 143
    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int/2addr v1, v2

    .line 142
    .local v1, "rlt":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "rlt":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 146
    :cond_1
    const-string/jumbo v2, "Lte4GEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isThereSimReady: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->setSwitchStatus()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    return-void
.end method

.method public setPrefNetwork(III)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "network"    # I
    .param p3, "band"    # I

    .prologue
    .line 296
    sget-object v2, Lcom/android/settings/Lte4GEnabler;->mHandler:Lcom/android/settings/Lte4GEnabler$MyHandler;

    .line 297
    const/4 v3, 0x0

    .line 296
    invoke-virtual {v2, v3}, Lcom/android/settings/Lte4GEnabler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 298
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 299
    new-instance v2, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 302
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "slot"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string/jumbo v2, "band"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string/jumbo v2, "callback"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 307
    const-string/jumbo v2, "set_pref_network"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/Lte4GEnabler;->callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 295
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "sw"    # Landroid/widget/Switch;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 97
    return-void

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->setSwitchStatus()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    return-void
.end method
