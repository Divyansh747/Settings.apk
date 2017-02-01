.class public Lcom/android/settings/notification/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SoundSettings$1;,
        Lcom/android/settings/notification/SoundSettings$2;,
        Lcom/android/settings/notification/SoundSettings$3;,
        Lcom/android/settings/notification/SoundSettings$H;,
        Lcom/android/settings/notification/SoundSettings$Receiver;,
        Lcom/android/settings/notification/SoundSettings$SettingsObserver;,
        Lcom/android/settings/notification/SoundSettings$SummaryProvider;,
        Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings/notification/SoundSettings$H;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;

.field private mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHandler:Lcom/android/settings/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 92
    const-string/jumbo v1, "media_volume"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "alarm_volume"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "ring_volume"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "notification_volume"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 91
    sput-object v0, Lcom/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 631
    new-instance v0, Lcom/android/settings/notification/SoundSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundSettings$2;-><init>()V

    .line 630
    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 642
    new-instance v0, Lcom/android/settings/notification/SoundSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundSettings$3;-><init>()V

    .line 641
    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 101
    new-instance v0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    .line 102
    new-instance v0, Lcom/android/settings/notification/SoundSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$H;-><init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$H;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHandler:Lcom/android/settings/notification/SoundSettings$H;

    .line 103
    new-instance v0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    .line 104
    new-instance v0, Lcom/android/settings/notification/SoundSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$Receiver;-><init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$Receiver;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    .line 386
    new-instance v0, Lcom/android/settings/notification/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$1;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 73
    return-void
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 323
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 325
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 326
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 328
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 329
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 331
    return-object v4

    .line 335
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "SoundSettings"

    const-string/jumbo v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private initRingtones()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 373
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notification_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 377
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "alarm_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 371
    return-void

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 375
    iput-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    goto :goto_0
.end method

.method private initVibrateWhenRinging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 455
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    .line 457
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 458
    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void

    .line 461
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 463
    iput-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    .line 464
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setPersistent(Z)V

    .line 467
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRinging()V

    .line 468
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/SoundSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/SoundSettings$4;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 454
    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 282
    .local v0, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 283
    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 284
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {v0, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 286
    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 6

    .prologue
    .line 310
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 311
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 312
    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 313
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 314
    if-eqz v0, :cond_2

    .line 315
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 316
    invoke-direct {p0, v0}, Lcom/android/settings/notification/SoundSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 315
    const v4, 0x10405de

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 317
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 309
    return-void

    .line 316
    :cond_2
    const/4 v1, 0x0

    .local v1, "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 291
    const v0, 0x1080302

    .line 290
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 289
    return-void

    .line 292
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->wasRingerModeVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    :cond_1
    const v0, 0x1080303

    goto :goto_0

    .line 294
    :cond_2
    const v0, 0x1080301

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 304
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    return-void

    .line 305
    :cond_0
    iput v0, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    .line 306
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 302
    return-void
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 414
    if-nez p0, :cond_0

    .line 415
    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-object v3

    .line 418
    :cond_0
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 419
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10403ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 421
    .local v9, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 422
    const v0, 0x10403ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 449
    :cond_1
    :goto_0
    return-object v9

    .line 424
    :cond_2
    const/4 v6, 0x0

    .line 426
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 428
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 434
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 435
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 444
    :cond_4
    if-eqz v6, :cond_1

    .line 445
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 430
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    :try_start_1
    const-string/jumbo v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 432
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 431
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 441
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 444
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    if-eqz v6, :cond_1

    .line 445
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 439
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 444
    .local v8, "sqle":Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_1

    .line 445
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 443
    .end local v8    # "sqle":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 444
    if-eqz v6, :cond_6

    .line 445
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 443
    :cond_6
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 480
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v1, :cond_0

    return-void

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 482
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 481
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 479
    return-void
.end method

.method private wasRingerModeVibrate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    if-nez v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 298
    :cond_0
    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x150

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 266
    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 263
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x1080302

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    .line 135
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    .line 137
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 139
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 143
    :cond_0
    :goto_0
    const v3, 0x7f080063

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->addPreferencesFromResource(I)V

    .line 145
    const-string/jumbo v3, "media_volume"

    const/4 v4, 0x3

    .line 146
    const v5, 0x10802fc

    .line 145
    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 147
    const-string/jumbo v3, "alarm_volume"

    const/4 v4, 0x4

    .line 148
    const v5, 0x10802fa

    .line 147
    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 149
    iget-boolean v3, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v3, :cond_6

    .line 151
    const-string/jumbo v3, "ring_volume"

    invoke-direct {p0, v3, v7, v8}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    .line 150
    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 153
    const-string/jumbo v3, "notification_volume"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 162
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 163
    const v4, 0x1120077

    .line 162
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 165
    .local v1, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v1, :cond_1

    .line 166
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "com.android.cellbroadcastreceiver"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v7, :cond_1

    .line 168
    const/4 v1, 0x0

    .line 174
    .end local v1    # "isCellBroadcastAppLinkEnabled":Z
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 175
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 176
    const-string/jumbo v4, "no_config_cell_broadcasts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 175
    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 174
    if-eqz v3, :cond_3

    .line 177
    :cond_2
    const-string/jumbo v3, "cell_broadcast_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 179
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->initRingtones()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->initVibrateWhenRinging()V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingerMode()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    .line 184
    if-eqz p1, :cond_4

    .line 185
    const-string/jumbo v3, "selected_preference"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "selectedPreference":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 187
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/RingtonePreference;

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 130
    .end local v2    # "selectedPreference":Ljava/lang/String;
    :cond_4
    return-void

    .line 140
    :cond_5
    iput-object v6, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    goto/16 :goto_0

    .line 156
    :cond_6
    const-string/jumbo v3, "notification_volume"

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4, v8}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    .line 155
    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 158
    const-string/jumbo v3, "ring_volume"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .restart local v1    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .local v1, "isCellBroadcastAppLinkEnabled":Z
    goto :goto_2
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 228
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "volumePref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 229
    .local v0, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityPause()V

    goto :goto_0

    .line 231
    .end local v0    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v2}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 232
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 233
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/SoundSettings$Receiver;->register(Z)V

    .line 226
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    instance-of v1, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 239
    check-cast v1, Lcom/android/settings/RingtonePreference;

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 240
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v2}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 242
    return v5

    .line 243
    :cond_0
    const-string/jumbo v1, "cell_broadcast_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    .line 246
    const-string/jumbo v2, "com.android.cellbroadcastreceiver"

    .line 247
    const-string/jumbo v3, "com.android.cellbroadcastreceiver.CellBroadcastSettings"

    .line 245
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    const-string/jumbo v1, "SoundSettings"

    const-string/jumbo v2, "Activity com.android.cellbroadcastreceiver.CellBroadcastSettings does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return v4

    .line 255
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    .line 256
    return v5

    .line 259
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    .line 196
    iget-object v7, p0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v7, v9}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 197
    iget-object v7, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    invoke-virtual {v7, v9}, Lcom/android/settings/notification/SoundSettings$Receiver;->register(Z)V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    .line 200
    iget-object v7, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "volumePref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 201
    .local v5, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    invoke-virtual {v5}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 204
    .end local v5    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 205
    const-string/jumbo v10, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 204
    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 206
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v7, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 207
    const-string/jumbo v10, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 206
    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 208
    .local v2, "hasBaseRestriction":Z
    sget-object v11, Lcom/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    array-length v12, v11

    move v10, v8

    :goto_1
    if-ge v10, v12, :cond_5

    aget-object v3, v11, v10

    .line 209
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 210
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v4, :cond_1

    .line 211
    if-eqz v2, :cond_3

    move v7, v8

    :goto_2
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 213
    :cond_1
    instance-of v7, v4, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v7, :cond_2

    if-eqz v2, :cond_4

    .line 208
    .end local v4    # "pref":Landroid/support/v7/preference/Preference;
    :cond_2
    :goto_3
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    goto :goto_1

    .restart local v4    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    move v7, v9

    .line 211
    goto :goto_2

    .line 214
    :cond_4
    check-cast v4, Lcom/android/settingslib/RestrictedPreference;

    .end local v4    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v4, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    .line 218
    .end local v3    # "key":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "cell_broadcast_settings"

    .line 217
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    .line 219
    .local v1, "broadcastSettingsPref":Lcom/android/settingslib/RestrictedPreference;
    if-eqz v1, :cond_6

    .line 221
    const-string/jumbo v7, "no_config_cell_broadcasts"

    .line 220
    invoke-virtual {v1, v7}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 193
    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 274
    const-string/jumbo v0, "selected_preference"

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method
