.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/WarnedPreference$OnPreferenceValueChangeListener;
.implements Lcom/android/settings/WarnedPreference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DisplaySettings$1;,
        Lcom/android/settings/DisplaySettings$2;,
        Lcom/android/settings/DisplaySettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private isRJILMode:Z

.field private mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDialogPref:Lcom/android/settings/WarnedPreference;

.field private mDozePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFontSizePref:Landroid/support/v7/preference/Preference;

.field private mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNightModePreference:Landroid/support/v7/preference/ListPreference;

.field private mScreenSaverPreference:Landroid/support/v7/preference/Preference;

.field private mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/WarnedPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDialogPref:Lcom/android/settings/WarnedPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/DisplaySettings;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 652
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$1;-><init>()V

    .line 651
    sput-object v0, Lcom/android/settings/DisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 661
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$2;-><init>()V

    .line 660
    sput-object v0, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 143
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 82
    return-void
.end method

.method private static allowAllRotations(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 328
    const v1, 0x1120038

    .line 327
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private disablePreferenceIfManaged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "restriction"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    .line 591
    .local v0, "pref":Lcom/android/settingslib/RestrictedPreference;
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 594
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 593
    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 350
    const v0, 0x1120024

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 355
    const v3, 0x10e00a4

    .line 354
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 355
    const/4 v4, -0x1

    .line 354
    if-eq v3, v4, :cond_1

    move v0, v2

    .line 356
    .local v0, "configSet":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 357
    const-string/jumbo v3, "gesture.disable_camera_launch"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    :cond_0
    :goto_1
    return v1

    .end local v0    # "configSet":Z
    :cond_1
    move v0, v1

    .line 354
    goto :goto_0

    .restart local v0    # "configSet":Z
    :cond_2
    move v1, v2

    .line 357
    goto :goto_1
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 340
    const v2, 0x104005b

    .line 339
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 337
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 342
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 332
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 333
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 346
    const v0, 0x11200a8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isVrDisplayModeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 362
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private updateFontSizeSummary()V
    .locals 9

    .prologue
    .line 502
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 503
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 504
    const-string/jumbo v7, "font_scale"

    const/high16 v8, 0x3f800000    # 1.0f

    .line 503
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 505
    .local v1, "currentScale":F
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 506
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f0a0033

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "entries":[Ljava/lang/String;
    const v6, 0x7f0a0034

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, "strEntryValues":[Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v3

    .line 510
    .local v3, "index":I
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 501
    return-void
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 496
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 494
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 449
    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->isRJILMode:Z

    if-eqz v3, :cond_6

    .line 450
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mDialogPref:Lcom/android/settings/WarnedPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Lcom/android/settings/WarnedPreference;)V

    .line 454
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 457
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 459
    const-string/jumbo v6, "screen_brightness_mode"

    .line 458
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 460
    .local v0, "brightnessMode":I
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_7

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 463
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 465
    const-string/jumbo v6, "show_network_name_mode"

    .line 464
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 466
    .local v1, "showNetworkNameMode":I
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_8

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 470
    .end local v1    # "showNetworkNameMode":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wake_gesture_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 472
    .local v2, "value":I
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_9

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 476
    .end local v2    # "value":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_3

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "double_tap_to_wake"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 478
    .restart local v2    # "value":I
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_a

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 482
    .end local v2    # "value":I
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_4

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "doze_enabled"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 484
    .restart local v2    # "value":I
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_b

    move v3, v4

    :goto_5
    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 488
    .end local v2    # "value":I
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_5

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "camera_gesture_disabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 490
    .restart local v2    # "value":I
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v2, :cond_c

    :goto_6
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 448
    .end local v2    # "value":I
    :cond_5
    return-void

    .line 452
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateFontSizeSummary()V

    goto/16 :goto_0

    .restart local v0    # "brightnessMode":I
    :cond_7
    move v3, v5

    .line 460
    goto :goto_1

    .end local v0    # "brightnessMode":I
    .restart local v1    # "showNetworkNameMode":I
    :cond_8
    move v3, v5

    .line 466
    goto :goto_2

    .end local v1    # "showNetworkNameMode":I
    .restart local v2    # "value":I
    :cond_9
    move v3, v5

    .line 472
    goto :goto_3

    :cond_a
    move v3, v5

    .line 478
    goto :goto_4

    :cond_b
    move v3, v5

    .line 484
    goto :goto_5

    :cond_c
    move v4, v5

    .line 490
    goto :goto_6
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 11
    .param p1, "currentTimeout"    # J

    .prologue
    const/4 v10, 0x0

    .line 366
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    .line 368
    .local v3, "preference":Lcom/android/settings/TimeoutListPreference;
    invoke-virtual {v3}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 369
    const v8, 0x7f0e0c91

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    return-void

    .line 370
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_1

    .line 372
    const-string/jumbo v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 374
    .end local v4    # "summary":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 375
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 376
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    array-length v8, v1

    if-nez v8, :cond_3

    .line 377
    :cond_2
    const-string/jumbo v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 379
    .end local v4    # "summary":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 380
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_5

    .line 381
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 382
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_4

    .line 383
    move v0, v2

    .line 380
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 386
    .end local v6    # "timeout":J
    :cond_5
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v9, v1, v0

    aput-object v9, v8, v10

    const v9, 0x7f0e04dc

    invoke-virtual {p0, v9, v8}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 586
    const v0, 0x7f0e0a3f

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 156
    .local v6, "resolver":Landroid/content/ContentResolver;
    const v11, 0x7f08002b

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "font_waring"

    .line 159
    const/4 v13, 0x0

    .line 158
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 160
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 162
    const-string/jumbo v11, "screensaver"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    .line 163
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v11, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 165
    const v12, 0x112006e

    .line 164
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 169
    :cond_0
    const-string/jumbo v11, "screen_timeout"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/TimeoutListPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c002a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/DisplaySettings;->isRJILMode:Z

    .line 171
    iget-boolean v11, p0, Lcom/android/settings/DisplaySettings;->isRJILMode:Z

    if-eqz v11, :cond_3

    .line 172
    const-string/jumbo v11, "font_size"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v11, "font_size_mode"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/WarnedPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mDialogPref:Lcom/android/settings/WarnedPreference;

    .line 174
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mDialogPref:Lcom/android/settings/WarnedPreference;

    invoke-virtual {v11, p0}, Lcom/android/settings/WarnedPreference;->setPreferenceValueChangeListener(Lcom/android/settings/WarnedPreference$OnPreferenceValueChangeListener;)V

    .line 175
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mDialogPref:Lcom/android/settings/WarnedPreference;

    invoke-virtual {v11, p0}, Lcom/android/settings/WarnedPreference;->setOnPreferenceClickListener(Lcom/android/settings/WarnedPreference$OnPreferenceClickListener;)V

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 182
    const-string/jumbo v11, "auto_brightness"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 183
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 189
    const v12, 0x11200ca

    .line 188
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 190
    .local v5, "enableOperatorName":Z
    if-eqz v5, :cond_5

    .line 192
    const-string/jumbo v11, "network_operator_display"

    .line 191
    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 193
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    :goto_2
    invoke-static {v0}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 199
    const-string/jumbo v11, "night_display"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 202
    :cond_1
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 203
    const-string/jumbo v11, "lift_to_wake"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 204
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    :goto_3
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 210
    const-string/jumbo v11, "doze"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 211
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 217
    const-string/jumbo v11, "tap_to_wake"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 218
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 224
    const-string/jumbo v11, "camera_gesture"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 225
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    :goto_6
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 232
    const-string/jumbo v11, "auto_rotate"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/DropDownPreference;

    .line 237
    .local v8, "rotatePreference":Landroid/support/v7/preference/DropDownPreference;
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->allowAllRotations(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 238
    const v7, 0x7f0e0b9c

    .line 249
    .local v7, "rotateLockedResourceId":I
    :goto_7
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/CharSequence;

    .line 250
    const v12, 0x7f0e0b99

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 251
    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 249
    invoke-virtual {v8, v11}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 253
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/CharSequence;

    const-string/jumbo v12, "0"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "1"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 254
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 255
    const/4 v11, 0x1

    .line 254
    :goto_8
    invoke-virtual {v8, v11}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    .line 256
    new-instance v11, Lcom/android/settings/DisplaySettings$3;

    invoke-direct {v11, p0, v0}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;Landroid/app/Activity;)V

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    .end local v7    # "rotateLockedResourceId":I
    .end local v8    # "rotatePreference":Landroid/support/v7/preference/DropDownPreference;
    :goto_9
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 272
    const-string/jumbo v11, "vr_display_pref"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/DropDownPreference;

    .line 273
    .local v10, "vrDisplayPref":Landroid/support/v7/preference/DropDownPreference;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/CharSequence;

    .line 274
    const v12, 0x7f0e0b36

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 275
    const v12, 0x7f0e0b37

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 273
    invoke-virtual {v10, v11}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 277
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/CharSequence;

    const-string/jumbo v12, "0"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "1"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 279
    move-object v1, v0

    .line 280
    .local v1, "c":Landroid/content/Context;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 281
    .local v4, "currentUser":I
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 282
    const-string/jumbo v12, "vr_display_mode"

    .line 283
    const/4 v13, 0x0

    .line 281
    invoke-static {v11, v12, v13, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 285
    .local v2, "current":I
    invoke-virtual {v10, v2}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    .line 286
    new-instance v11, Lcom/android/settings/DisplaySettings$4;

    invoke-direct {v11, p0, v0}, Lcom/android/settings/DisplaySettings$4;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 304
    .end local v1    # "c":Landroid/content/Context;
    .end local v2    # "current":I
    .end local v4    # "currentUser":I
    .end local v10    # "vrDisplayPref":Landroid/support/v7/preference/DropDownPreference;
    :goto_a
    const-string/jumbo v11, "night_mode"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    .line 305
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v11, :cond_2

    .line 307
    const-string/jumbo v11, "uimode"

    .line 306
    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/UiModeManager;

    .line 308
    .local v9, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v9}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v3

    .line 309
    .local v3, "currentNightMode":I
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 310
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    .end local v3    # "currentNightMode":I
    .end local v9    # "uiManager":Landroid/app/UiModeManager;
    :cond_2
    return-void

    .line 177
    .end local v5    # "enableOperatorName":Z
    :cond_3
    const-string/jumbo v11, "font_size_mode"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v11, "font_size"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    goto/16 :goto_0

    .line 185
    :cond_4
    const-string/jumbo v11, "auto_brightness"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 195
    .restart local v5    # "enableOperatorName":Z
    :cond_5
    const-string/jumbo v11, "network_operator_display"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 206
    :cond_6
    const-string/jumbo v11, "lift_to_wake"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 213
    :cond_7
    const-string/jumbo v11, "doze"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 220
    :cond_8
    const-string/jumbo v11, "tap_to_wake"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 227
    :cond_9
    const-string/jumbo v11, "camera_gesture"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 240
    .restart local v8    # "rotatePreference":Landroid/support/v7/preference/DropDownPreference;
    :cond_a
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->getRotationLockOrientation(Landroid/content/Context;)I

    move-result v11

    .line 241
    const/4 v12, 0x1

    .line 240
    if-ne v11, v12, :cond_b

    .line 243
    const v7, 0x7f0e0b9a

    .line 242
    .restart local v7    # "rotateLockedResourceId":I
    goto/16 :goto_7

    .line 246
    .end local v7    # "rotateLockedResourceId":I
    :cond_b
    const v7, 0x7f0e0b9b

    .line 245
    .restart local v7    # "rotateLockedResourceId":I
    goto/16 :goto_7

    .line 255
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 267
    .end local v7    # "rotateLockedResourceId":I
    .end local v8    # "rotatePreference":Landroid/support/v7/preference/DropDownPreference;
    :cond_d
    const-string/jumbo v11, "auto_rotate"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 301
    :cond_e
    const-string/jumbo v11, "vr_display_pref"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    const/4 v6, 0x0

    .line 426
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 429
    const v5, 0x7f04006f

    .line 428
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 430
    .local v2, "dialog_view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 431
    const v4, 0x7f11011f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 432
    .local v1, "cb_showagain":Landroid/widget/CheckBox;
    const v4, 0x7f110120

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 433
    .local v3, "ok_message":Landroid/widget/TextView;
    new-instance v4, Lcom/android/settings/DisplaySettings$5;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/DisplaySettings$5;-><init>(Lcom/android/settings/DisplaySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 445
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "cb_showagain":Landroid/widget/CheckBox;
    .end local v2    # "dialog_view":Landroid/view/View;
    .end local v3    # "ok_message":Landroid/widget/TextView;
    :cond_0
    return-object v6
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 526
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v9, "screen_timeout"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 529
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 530
    .local v7, "value":I
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "screen_off_timeout"

    invoke-static {v9, v12, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    int-to-long v12, v7

    invoke-direct {p0, v12, v13}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v7    # "value":I
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v9, :cond_1

    move-object/from16 v9, p2

    .line 537
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 538
    .local v2, "auto":Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "screen_brightness_mode"

    .line 539
    if-eqz v2, :cond_8

    move v9, v10

    .line 538
    :goto_1
    invoke-static {v12, v13, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 541
    .end local v2    # "auto":Z
    :cond_1
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v9, :cond_2

    move-object/from16 v9, p2

    .line 542
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 543
    .local v4, "isShow":Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_network_name_mode"

    .line 544
    if-eqz v4, :cond_9

    move v9, v10

    .line 543
    :goto_2
    invoke-static {v12, v13, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 546
    .end local v4    # "isShow":Z
    :cond_2
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v9, :cond_3

    move-object/from16 v9, p2

    .line 547
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 548
    .local v8, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "wake_gesture_enabled"

    if-eqz v8, :cond_a

    move v9, v10

    :goto_3
    invoke-static {v12, v13, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 550
    .end local v8    # "value":Z
    :cond_3
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v9, :cond_4

    move-object/from16 v9, p2

    .line 551
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 552
    .restart local v8    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "doze_enabled"

    if-eqz v8, :cond_b

    move v9, v10

    :goto_4
    invoke-static {v12, v13, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    .end local v8    # "value":Z
    :cond_4
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v9, :cond_5

    move-object/from16 v9, p2

    .line 555
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 556
    .restart local v8    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "double_tap_to_wake"

    if-eqz v8, :cond_c

    move v9, v10

    :goto_5
    invoke-static {v12, v13, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 558
    .end local v8    # "value":Z
    :cond_5
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v9, :cond_6

    move-object/from16 v9, p2

    .line 559
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 560
    .restart local v8    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "camera_gesture_disabled"

    .line 561
    if-eqz v8, :cond_d

    .line 560
    :goto_6
    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 563
    .end local v8    # "value":Z
    :cond_6
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v9, :cond_7

    .line 565
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 567
    .restart local v7    # "value":I
    const-string/jumbo v9, "uimode"

    .line 566
    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/UiModeManager;

    .line 568
    .local v6, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v6, v7}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 573
    .end local v6    # "uiManager":Landroid/app/UiModeManager;
    .end local v7    # "value":I
    :cond_7
    :goto_7
    return v10

    .line 532
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 533
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "DisplaySettings"

    const-string/jumbo v12, "could not persist screen timeout setting"

    invoke-static {v9, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "auto":Z
    :cond_8
    move v9, v11

    .line 539
    goto/16 :goto_1

    .end local v2    # "auto":Z
    .restart local v4    # "isShow":Z
    :cond_9
    move v9, v11

    .line 544
    goto/16 :goto_2

    .end local v4    # "isShow":Z
    .restart local v8    # "value":Z
    :cond_a
    move v9, v11

    .line 548
    goto :goto_3

    :cond_b
    move v9, v11

    .line 552
    goto :goto_4

    :cond_c
    move v9, v11

    .line 556
    goto :goto_5

    :cond_d
    move v11, v10

    .line 561
    goto :goto_6

    .line 569
    .end local v8    # "value":Z
    .end local p2    # "objValue":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 570
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "DisplaySettings"

    const-string/jumbo v11, "could not persist night mode setting"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDialogPref:Lcom/android/settings/WarnedPreference;

    if-ne p1, v0, :cond_0

    .line 317
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isRJILMode:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDialogPref:Lcom/android/settings/WarnedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/WarnedPreference;->showDialog(Landroid/os/Bundle;)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDialogPref:Lcom/android/settings/WarnedPreference;

    invoke-virtual {v0}, Lcom/android/settings/WarnedPreference;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDialogPref:Lcom/android/settings/WarnedPreference;

    invoke-virtual {v0}, Lcom/android/settings/WarnedPreference;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 315
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x1ef

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 581
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceValueChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 629
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "rb_textValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 631
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0d71

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 632
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "is_checked"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mDialogPref:Lcom/android/settings/WarnedPreference;

    invoke-virtual {v2}, Lcom/android/settings/WarnedPreference;->getDialog()Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mDialogPref:Lcom/android/settings/WarnedPreference;

    invoke-virtual {v2}, Lcom/android/settings/WarnedPreference;->getDialog()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    const-string/jumbo v2, "1.30"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0

    .line 639
    :cond_2
    const v2, 0x7f0e0d70

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 640
    const-string/jumbo v2, "1.15"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0

    .line 641
    :cond_3
    const v2, 0x7f0e0d6f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 642
    const-string/jumbo v2, "1.05"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0

    .line 643
    :cond_4
    const v2, 0x7f0e0d6e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 644
    const-string/jumbo v2, "1.0"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0

    .line 645
    :cond_5
    const v2, 0x7f0e0d6d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    const-string/jumbo v2, "0.95"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    .line 403
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 404
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 407
    const-string/jumbo v7, "screen_off_timeout"

    const-wide/16 v8, 0x7530

    .line 406
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 408
    .local v2, "currentTimeout":J
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 409
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 411
    const-string/jumbo v7, "device_policy"

    .line 410
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 412
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 413
    invoke-static {v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 416
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 415
    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v4

    .line 417
    .local v4, "maxTimeout":J
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v6, v4, v5, v0}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 419
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v4    # "maxTimeout":J
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 421
    const-string/jumbo v6, "wallpaper"

    const-string/jumbo v7, "no_set_wallpaper"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DisplaySettings;->disablePreferenceIfManaged(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public readFontSizePreference(Lcom/android/settings/WarnedPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/android/settings/WarnedPreference;

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/WarnedPreference;->getWarnedPreferenceSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/WarnedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 392
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplaySettings"

    const-string/jumbo v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 515
    if-eqz p1, :cond_0

    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 517
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplaySettings"

    const-string/jumbo v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
