.class public Lcom/android/settings/SettingsActivity;
.super Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsActivity$1;,
        Lcom/android/settings/SettingsActivity$2;
    }
.end annotation


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActivityAction:Ljava/lang/String;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mCurrentSuggestion:Landroid/content/ComponentName;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSMQ:Lcom/android/settings/SmqSettings;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/SettingsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->doUpdateTilesList()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 290
    const/16 v0, 0x61

    new-array v0, v0, [Ljava/lang/String;

    .line 291
    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 292
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 293
    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 294
    const-class v1, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 295
    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 296
    const-class v1, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 297
    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 298
    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 299
    const-class v1, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 300
    const-class v1, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 301
    const-class v1, Lcom/android/settings/OtherDeviceFunctionsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 302
    const-class v1, Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 303
    const-class v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 304
    const-class v1, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 305
    const-class v1, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 306
    const-class v1, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 307
    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 308
    const-class v1, Lcom/android/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 309
    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 310
    const-class v1, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 311
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 312
    const-class v1, Lcom/android/settings/applications/NotificationApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 313
    const-class v1, Lcom/android/settings/applications/ManageAssist;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 314
    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 315
    const-class v1, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 316
    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 317
    const-class v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 318
    const-class v1, Lcom/android/settings/applications/UsageAccessDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 319
    const-class v1, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 320
    const-class v1, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 321
    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 322
    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 323
    const-class v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 324
    const-class v1, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 325
    const-class v1, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 326
    const-class v1, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 327
    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 328
    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 329
    const-class v1, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 330
    const-class v1, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 331
    const-class v1, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 332
    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 333
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 334
    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 335
    const-class v1, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 336
    const-class v1, Lcom/android/settings/gestures/GestureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 337
    const-class v1, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 338
    const-class v1, Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 339
    const-class v1, Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 340
    const-class v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 341
    const-class v1, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 342
    const-class v1, Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 343
    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 344
    const-class v1, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 345
    const-class v1, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 346
    const-class v1, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 347
    const-class v1, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 348
    const-class v1, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 349
    const-class v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 350
    const-class v1, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 351
    const-class v1, Lcom/android/settings/notification/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 352
    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 353
    const-class v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 354
    const-class v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 355
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 356
    const-class v1, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 357
    const-class v1, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 358
    const-class v1, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 359
    const-class v1, Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 360
    const-class v1, Lcom/android/settings/ApnEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 361
    const-class v1, Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 362
    const-class v1, Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 363
    const-class v1, Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 364
    const-class v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 365
    const-class v1, Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 366
    const-class v1, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 367
    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 368
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 369
    const-class v1, Lcom/android/settings/applications/ProcessStatsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 370
    const-class v1, Lcom/android/settings/applications/DrawOverlayDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 371
    const-class v1, Lcom/android/settings/applications/WriteSettingsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 372
    const-class v1, Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 373
    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 374
    const-class v1, Lcom/android/settings/applications/VrListenerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 375
    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 376
    const-class v1, Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 377
    const-class v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 378
    const-class v1, Lcom/android/settings/deviceinfo/ImeiInformation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 379
    const-class v1, Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 380
    const-class v1, Lcom/android/settings/deviceinfo/Status;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 381
    const-class v1, Lcom/android/settings/TestingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 382
    const-class v1, Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 383
    const-class v1, Lcom/android/settings/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 384
    const-class v1, Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 385
    const-class v1, Lcom/android/settings/display/NightDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 386
    const-class v1, Lcom/android/settings/applications/ManageDomainUrls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 387
    const-class v1, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 290
    sput-object v0, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 391
    new-array v0, v4, [Ljava/lang/String;

    .line 392
    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    .line 391
    sput-object v0, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;-><init>()V

    .line 253
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    .line 255
    const-class v1, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 256
    const-class v1, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 257
    const-class v1, Lcom/android/settings/Settings$MobileNetworkMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 258
    const-class v1, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 259
    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 260
    const-class v1, Lcom/android/settings/Settings$RoamingSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 261
    const-class v1, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 262
    const-class v1, Lcom/android/settings/Settings$Lte4GEnableActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 263
    const-class v1, Lcom/android/settings/Settings$WirelessSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 265
    const-class v1, Lcom/android/settings/Settings$HomeSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 266
    const-class v1, Lcom/android/settings/Settings$SoundSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 267
    const-class v1, Lcom/android/settings/Settings$DisplaySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 268
    const-class v1, Lcom/android/settings/Settings$StorageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 269
    const-class v1, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 270
    const-class v1, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 271
    const-class v1, Lcom/android/settings/Settings$GestureSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 273
    const-class v1, Lcom/android/settings/Settings$ProfileMgrMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 274
    const-class v1, Lcom/android/settings/Settings$LocationSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 275
    const-class v1, Lcom/android/settings/Settings$SecuritySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 276
    const-class v1, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 277
    const-class v1, Lcom/android/settings/Settings$UserSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 278
    const-class v1, Lcom/android/settings/Settings$AccountSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 280
    const-class v1, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 281
    const-class v1, Lcom/android/settings/Settings$DeviceInfoSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 282
    const-class v1, Lcom/android/settings/Settings$AccessibilitySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 283
    const-class v1, Lcom/android/settings/Settings$PrintSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 284
    const-class v1, Lcom/android/settings/Settings$PaymentSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 285
    const-class v1, Lcom/android/settings/Settings$TimerSwitchSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 286
    const-class v1, Lcom/android/settings/Settings$SystemUpdateActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 287
    const-class v1, Lcom/android/settings/Settings$OtherDeviceFunctionsSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 253
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    .line 398
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 399
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 414
    new-instance v0, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;-><init>()V

    .line 425
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    .line 443
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 452
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 147
    return-void
.end method

.method private doUpdateTilesList()V
    .locals 26

    .prologue
    .line 1172
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1173
    .local v15, "pm":Landroid/content/pm/PackageManager;
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v20

    .line 1174
    .local v20, "um":Landroid/os/UserManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v13

    .line 1176
    .local v13, "isAdmin":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1177
    .local v14, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/SmqSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/SmqSettings;->isShowSmqSettings()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1178
    new-instance v22, Landroid/content/ComponentName;

    const-class v23, Lcom/android/settings/Settings$SMQQtiFeedbackActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/SmqSettings;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/SmqSettings;->isShowSmqSettings()Z

    move-result v23

    .line 1178
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1182
    :cond_0
    new-instance v22, Landroid/content/ComponentName;

    const-class v23, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string/jumbo v23, "android.hardware.wifi"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    .line 1182
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1185
    new-instance v22, Landroid/content/ComponentName;

    .line 1186
    const-class v23, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1185
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string/jumbo v23, "android.hardware.bluetooth"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    .line 1185
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1190
    new-instance v23, Landroid/content/ComponentName;

    .line 1191
    const-class v22, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1190
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v24, 0x7f0c0021

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1193
    const-string/jumbo v22, "android.hardware.wifi"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    .line 1190
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1196
    new-instance v23, Landroid/content/ComponentName;

    .line 1197
    const-class v22, Lcom/android/settings/Settings$MobileNetworkMainActivity;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1196
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v24, 0x7f0c0021

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1199
    const-string/jumbo v22, "android.hardware.telephony"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    .line 1196
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1202
    new-instance v23, Landroid/content/ComponentName;

    .line 1203
    const-class v22, Lcom/android/settings/Settings$AccessibilitySettingsActivity;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1202
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v24, 0x7f0c0021

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x0

    .line 1202
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1206
    new-instance v22, Landroid/content/ComponentName;

    .line 1207
    const-class v23, Lcom/android/settings/Settings$Lte4GEnableActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1206
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c0020

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    .line 1206
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1210
    new-instance v22, Landroid/content/ComponentName;

    .line 1211
    const-class v23, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1210
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v23

    .line 1210
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1214
    new-instance v22, Landroid/content/ComponentName;

    .line 1215
    const-class v23, Lcom/android/settings/Settings$RoamingSettingsActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1214
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c001b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    .line 1214
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1218
    new-instance v22, Landroid/content/ComponentName;

    .line 1219
    const-class v23, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1218
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v23

    .line 1218
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1222
    new-instance v22, Landroid/content/ComponentName;

    .line 1223
    const-class v23, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1222
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    move/from16 v23, v0

    .line 1222
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1226
    new-instance v23, Landroid/content/ComponentName;

    .line 1227
    const-class v22, Lcom/android/settings/Settings$UserSettingsActivity;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1226
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1229
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v22

    if-eqz v22, :cond_7

    const/16 v22, 0x0

    .line 1226
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1231
    new-instance v23, Landroid/content/ComponentName;

    .line 1232
    const-class v22, Lcom/android/settings/Settings$WirelessSettingsActivity;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1231
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_9

    const/16 v22, 0x0

    .line 1231
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1235
    new-instance v23, Landroid/content/ComponentName;

    .line 1236
    const-class v22, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1235
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_a

    const/16 v22, 0x0

    .line 1235
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1238
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 1239
    .local v3, "adapter":Landroid/nfc/NfcAdapter;
    new-instance v23, Landroid/content/ComponentName;

    .line 1240
    const-class v22, Lcom/android/settings/Settings$PaymentSettingsActivity;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1239
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    const-string/jumbo v22, "android.hardware.nfc"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1242
    const-string/jumbo v22, "android.hardware.nfc.hce"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    .line 1241
    if-eqz v22, :cond_b

    .line 1243
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v22

    .line 1239
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1245
    new-instance v23, Landroid/content/ComponentName;

    .line 1246
    const-class v22, Lcom/android/settings/Settings$PrintSettingsActivity;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1245
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v24, 0x7f0c0021

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-nez v22, :cond_c

    .line 1248
    const-string/jumbo v22, "android.software.print"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    .line 1245
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1251
    new-instance v23, Landroid/content/ComponentName;

    .line 1252
    const-class v22, Lcom/android/settings/Settings$DeviceInfoSettingsActivity;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1251
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v24, 0x7f0c0021

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v22, 0x0

    .line 1251
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1256
    new-instance v22, Landroid/content/ComponentName;

    .line 1257
    const-class v23, Lcom/android/settings/Settings$OtherDeviceFunctionsSettingsActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1256
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c0021

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    .line 1256
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1261
    new-instance v22, Landroid/content/ComponentName;

    .line 1262
    const-class v23, Lcom/android/settings/Settings$SystemUpdateActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1261
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c0021

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    .line 1261
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1266
    new-instance v22, Landroid/content/ComponentName;

    .line 1267
    const-class v23, Lcom/android/settings/Settings$ProfileMgrMainActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1266
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c0023

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    .line 1266
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    .line 1271
    const-string/jumbo v23, "show"

    sget-object v24, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v25, "eng"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 1270
    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1272
    const-string/jumbo v22, "no_debugging_features"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/16 v16, 0x0

    .line 1273
    .local v16, "showDev":Z
    :goto_9
    new-instance v22, Landroid/content/ComponentName;

    .line 1274
    const-class v23, Lcom/android/settings/Settings$DevelopmentSettingsActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1273
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1278
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/settings/qstile/DevelopmentTiles;->setTilesEnabled(Landroid/content/Context;Z)V

    .line 1281
    const/16 v17, 0x0

    .line 1282
    .local v17, "showTimerSwitch":Z
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v22, "qualcomm.intent.action.TIMER_SWITCH"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 1284
    const/16 v23, 0x0

    .line 1283
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 1285
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 1288
    :cond_1
    :goto_a
    new-instance v22, Landroid/content/ComponentName;

    .line 1289
    const-class v23, Lcom/android/settings/Settings$TimerSwitchSettingsActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1288
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1292
    if-eqz v13, :cond_11

    .line 1306
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0177

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1307
    .local v4, "backupIntent":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    .line 1308
    .local v21, "useDefaultBackup":Z
    new-instance v22, Landroid/content/ComponentName;

    .line 1309
    const-class v23, Lcom/android/settings/Settings$PrivacySettingsActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1308
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1310
    const/4 v10, 0x0

    .line 1311
    .local v10, "hasBackupActivity":Z
    if-nez v21, :cond_3

    .line 1313
    const/16 v22, 0x0

    :try_start_0
    move/from16 v0, v22

    invoke-static {v4, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    if-eqz v22, :cond_14

    const/4 v10, 0x0

    .line 1319
    :cond_3
    :goto_b
    new-instance v22, Landroid/content/ComponentName;

    .line 1320
    const-class v23, Lcom/android/settings/BackupSettingsActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1319
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v10, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1171
    return-void

    .line 1192
    .end local v3    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v4    # "backupIntent":Ljava/lang/String;
    .end local v10    # "hasBackupActivity":Z
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v16    # "showDev":Z
    .end local v17    # "showTimerSwitch":Z
    .end local v21    # "useDefaultBackup":Z
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1198
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 1204
    :cond_6
    const/16 v22, 0x1

    goto/16 :goto_2

    .line 1229
    :cond_7
    const/16 v22, 0x1

    goto/16 :goto_3

    .line 1228
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1233
    :cond_9
    const/16 v22, 0x1

    goto/16 :goto_4

    .line 1237
    :cond_a
    const/16 v22, 0x1

    goto/16 :goto_5

    .line 1241
    .restart local v3    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 1247
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 1253
    :cond_d
    const/16 v22, 0x1

    goto/16 :goto_8

    .line 1272
    :cond_e
    const/16 v16, 0x1

    .restart local v16    # "showDev":Z
    goto/16 :goto_9

    .line 1270
    .end local v16    # "showDev":Z
    :cond_f
    const/16 v16, 0x0

    .restart local v16    # "showDev":Z
    goto/16 :goto_9

    .line 1286
    .restart local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v17    # "showTimerSwitch":Z
    :cond_10
    const/16 v17, 0x1

    goto/16 :goto_a

    .line 1294
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v5

    .line 1295
    .local v5, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "category$iterator":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 1296
    .local v6, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v0, v6, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "tile$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/drawer/Tile;

    .line 1297
    .local v18, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 1298
    .local v8, "component":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    .line 1298
    invoke-static/range {v22 .. v23}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_13

    .line 1300
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v8, v1, v13, v15}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    goto :goto_c

    .line 1314
    .end local v5    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v6    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v7    # "category$iterator":Ljava/util/Iterator;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v18    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v19    # "tile$iterator":Ljava/util/Iterator;
    .restart local v4    # "backupIntent":Ljava/lang/String;
    .restart local v10    # "hasBackupActivity":Z
    .restart local v21    # "useDefaultBackup":Z
    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_b

    .line 1315
    :catch_0
    move-exception v9

    .line 1316
    .local v9, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v22, "Settings"

    const-string/jumbo v23, "Invalid backup intent URI!"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1335
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1336
    const/16 v4, 0x80

    .line 1335
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1337
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 1338
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 1339
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.ACTIVITY_ACTION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-void

    .line 1340
    :catch_0
    move-exception v1

    .line 1342
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMetricsTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_0
    const-string/jumbo v1, "com.android.settings."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    const-string/jumbo v1, "com.android.settings."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 530
    :cond_1
    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 936
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    return-object v1

    .line 938
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 941
    :cond_1
    const-string/jumbo v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 942
    const-string/jumbo v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 941
    if-nez v1, :cond_2

    .line 943
    const-string/jumbo v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 941
    if-eqz v1, :cond_3

    .line 945
    :cond_2
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 948
    :cond_3
    return-object v0
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 539
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 541
    return v3

    .line 543
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 544
    sget-object v2, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 543
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    :cond_2
    return v3
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 534
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 535
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1438
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1439
    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 1440
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1441
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, ":settings:prefs"

    .line 1442
    const/4 v2, 0x1

    .line 1441
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1443
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1437
    :cond_0
    return-void
.end method

.method private setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .param p3, "isAdmin"    # Z
    .param p4, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 1326
    if-eqz p3, :cond_1

    .line 1330
    .end local p2    # "enabled":Z
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;Z)V

    .line 1325
    return-void

    .line 1326
    .restart local p2    # "enabled":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    const/4 p2, 0x0

    .local p2, "enabled":Z
    goto :goto_0
.end method

.method private setTitleFromBackStack()V
    .locals 4

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 796
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 797
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 798
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 805
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 806
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    .line 793
    return-void
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 811
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 812
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 813
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 817
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 809
    :cond_0
    return-void

    .line 815
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 759
    const-string/jumbo v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 760
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 761
    iput-object v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 762
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 765
    const-string/jumbo v5, ":settings:show_fragment_title_res_package_name"

    .line 764
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 766
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 769
    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    .line 768
    invoke-virtual {p0, v4, v6, v5}, Lcom/android/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 770
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 771
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 772
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    return-void

    .line 774
    .end local v0    # "authContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 775
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 778
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_0
    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 781
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 782
    const-string/jumbo v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 784
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 783
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    const v7, 0x7f0e0d79

    const/4 v6, 0x0

    .line 1065
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1066
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v2, "newIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1069
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1070
    return-object v6

    .line 1073
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v5, "com.android.settings.Lte4GEnableSetting"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1074
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.settings.SETTINGS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .restart local v2    # "newIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1076
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1077
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1078
    return-object v6

    .line 1081
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v5, "com.android.settings.ProfileMgrMain"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1082
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1083
    .local v3, "profilemgrIntent":Landroid/content/Intent;
    const-string/jumbo v5, "com.codeaurora.STARTPROFILE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    const-string/jumbo v5, "com.android.profile"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1086
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1087
    return-object v6

    .line 1089
    .end local v3    # "profilemgrIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v5, "com.android.settings.MobileNetworkMain"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1090
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1091
    .local v1, "mobileNetworkIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    const-string/jumbo v5, "com.qualcomm.qti.networksetting"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1094
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1095
    return-object v6

    .line 1099
    .end local v1    # "mobileNetworkIntent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v5, "android.settings.SystemUpdateActivity"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->SystemUpdateHandle()V

    .line 1101
    return-object v6

    .line 1104
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1108
    :cond_5
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1109
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 1110
    .local v4, "transaction":Landroid/app/FragmentTransaction;
    const v5, 0x7f110222

    invoke-virtual {v4, v5, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1111
    if-eqz p7, :cond_6

    .line 1112
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v5}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1114
    :cond_6
    if-eqz p4, :cond_7

    .line 1115
    const-string/jumbo v5, ":settings:prefs"

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1117
    :cond_7
    if-lez p5, :cond_a

    .line 1118
    invoke-virtual {v4, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1122
    :cond_8
    :goto_0
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1124
    return-object v0

    .line 1105
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v4    # "transaction":Landroid/app/FragmentTransaction;
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid fragment for this activity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1119
    .restart local v0    # "f":Landroid/app/Fragment;
    .restart local v4    # "transaction":Landroid/app/FragmentTransaction;
    :cond_a
    if-eqz p6, :cond_8

    .line 1120
    invoke-virtual {v4, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1417
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1418
    return-void

    .line 1420
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f110222

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1421
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1422
    check-cast v8, Lcom/android/settings/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 1429
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1430
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1416
    return-void

    .line 1424
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setContentHeaderView(Landroid/view/View;)V

    .line 1426
    const-class v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 1427
    const v5, 0x7f0e0ab2

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    .line 1425
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    goto :goto_0
.end method

.method private updateTilesList()V
    .locals 1

    .prologue
    .line 1163
    new-instance v0, Lcom/android/settings/SettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$7;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1159
    return-void
.end method


# virtual methods
.method public SystemUpdateHandle()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    .line 1130
    const-string/jumbo v10, "carrier_config"

    .line 1129
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1131
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1132
    .local v0, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v9, "ci_action_on_sys_update_bool"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1133
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/android/settings/Utils;->ciActionOnSysUpdate(Landroid/content/Context;Landroid/os/PersistableBundle;)V

    .line 1136
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v9, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1137
    .local v6, "newIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1138
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1140
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1141
    .local v5, "listSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1142
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1143
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1144
    .local v2, "flags":I
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_1

    .line 1147
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1148
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1149
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1147
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1150
    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1151
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1152
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1153
    return-void

    .line 1141
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1127
    .end local v2    # "flags":I
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1036
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1037
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1035
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 905
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 906
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 910
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 911
    .local v2, "modIntent":Landroid/content/Intent;
    const-string/jumbo v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 913
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 914
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 918
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 919
    const-string/jumbo v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 920
    return-object v2

    .line 916
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .line 922
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 923
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 924
    .restart local v2    # "modIntent":Landroid/content/Intent;
    const-string/jumbo v5, ":settings:launch_activity_action"

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    return-object v2

    .line 928
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_2
    return-object v4
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Lcom/android/settings/SharedPreferencesLogger;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SharedPreferencesLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 519
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 897
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 898
    sget-object v1, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 897
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 900
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1433
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1466
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 1467
    if-eqz p2, :cond_0

    .line 1468
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    .line 1469
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1468
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1471
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1465
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    .line 789
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1378
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 475
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 476
    invoke-static {p0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/Index;->update()V

    .line 474
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 29
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 551
    invoke-super/range {p0 .. p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 555
    .local v26, "startTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    .line 558
    .local v21, "intent":Landroid/content/Intent;
    const-string/jumbo v2, ":settings:launch_activity_action"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 561
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 567
    return-void

    .line 562
    :catch_0
    move-exception v19

    .line 563
    .local v19, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity not found for action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    .end local v19    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string/jumbo v2, "settings:ui_options"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string/jumbo v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 573
    :cond_2
    const-string/jumbo v2, ":settings:hide_drawer"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 574
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setIsDrawerPresent(Z)V

    .line 577
    :cond_3
    new-instance v2, Lcom/android/settings/SmqSettings;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/settings/SmqSettings;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/SmqSettings;

    .line 579
    const-string/jumbo v2, "development"

    .line 580
    const/4 v5, 0x0

    .line 579
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 583
    const-string/jumbo v2, ":settings:show_fragment"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static/range {v21 .. v21}, Lcom/android/settings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 586
    const-string/jumbo v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 585
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    .line 588
    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 589
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 591
    .local v17, "className":Ljava/lang/String;
    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 592
    const-class v2, Lcom/android/settings/Settings$WirelessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 591
    if-nez v2, :cond_d

    .line 593
    const-class v2, Lcom/android/settings/Settings$DeviceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 591
    if-nez v2, :cond_d

    .line 594
    const-class v2, Lcom/android/settings/Settings$PersonalSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 591
    if-nez v2, :cond_d

    .line 595
    const-class v2, Lcom/android/settings/Settings$WirelessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 591
    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 600
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings/SubSettings;

    if-nez v2, :cond_e

    .line 601
    const-string/jumbo v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 604
    .local v24, "isSubSettings":Z
    :goto_3
    if-eqz v24, :cond_4

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v28

    .line 607
    .local v28, "themeResId":I
    const v2, 0x7f100203

    move/from16 v0, v28

    if-eq v0, v2, :cond_4

    .line 608
    const v2, 0x7f100205

    move/from16 v0, v28

    if-eq v0, v2, :cond_4

    .line 609
    const v2, 0x7f1001fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 613
    .end local v28    # "themeResId":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_f

    .line 614
    const v2, 0x7f040118

    .line 613
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    .line 616
    const v2, 0x7f110222

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 620
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_5

    .line 622
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 624
    .local v22, "indexStartTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/search/Index;->update()V

    .line 632
    .end local v22    # "indexStartTime":J
    :cond_5
    :goto_5
    if-eqz p1, :cond_11

    .line 635
    const-string/jumbo v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 636
    const-string/jumbo v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 640
    const-string/jumbo v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 641
    .local v16, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    if-eqz v16, :cond_6

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 644
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    .line 647
    :cond_6
    const-string/jumbo v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 648
    const-string/jumbo v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 683
    .end local v16    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_7

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 688
    :cond_7
    const v2, 0x7f110223

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_8

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setMetricsTag(Ljava/lang/String;)V

    .line 694
    :cond_8
    const-string/jumbo v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 696
    const v2, 0x7f1101b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 697
    .local v14, "buttonBar":Landroid/view/View;
    if-eqz v14, :cond_b

    .line 698
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 700
    const v2, 0x7f1101b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 701
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    const v2, 0x7f110131

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    .line 708
    .local v25, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$4;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    const v2, 0x7f1100b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$5;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 724
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 725
    .local v15, "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 732
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_9
    :goto_7
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 733
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 734
    .restart local v15    # "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 735
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 741
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_a
    :goto_8
    const-string/jumbo v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 742
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 550
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v25    # "skipButton":Landroid/widget/Button;
    :cond_b
    return-void

    .line 585
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v24    # "isSubSettings":Z
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 591
    .restart local v17    # "className":Ljava/lang/String;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 600
    :cond_e
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 614
    .restart local v24    # "isSubSettings":Z
    :cond_f
    const v2, 0x7f040119

    goto/16 :goto_4

    .line 628
    :cond_10
    const-string/jumbo v2, "Settings"

    const-string/jumbo v5, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 651
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_14

    .line 652
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 654
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_12

    .line 655
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 661
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 663
    const-string/jumbo v2, ":settings:show_fragment_args"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 665
    .local v4, "initialArguments":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 664
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 665
    const/4 v9, 0x0

    move-object/from16 v2, p0

    .line 664
    invoke-direct/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_6

    .line 656
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_12
    if-eqz v24, :cond_13

    .line 657
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_9

    .line 659
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_9

    .line 668
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 670
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 671
    const v2, 0x7f0e0ab1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 674
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 675
    .local v7, "args":Landroid/os/Bundle;
    const-string/jumbo v20, ":settings:select_settings_tab"

    .line 676
    .local v20, "extraName":Ljava/lang/String;
    const-string/jumbo v2, ":settings:select_settings_tab"

    const-string/jumbo v5, ":settings:select_settings_tab"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-class v2, Lcom/android/settings/dashboard/DashboardContainerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 679
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 678
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 679
    const/4 v12, 0x0

    move-object/from16 v5, p0

    .line 678
    invoke-direct/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_6

    .line 729
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v20    # "extraName":Ljava/lang/String;
    .restart local v13    # "backButton":Landroid/widget/Button;
    .restart local v14    # "buttonBar":Landroid/view/View;
    .restart local v15    # "buttonText":Ljava/lang/String;
    .restart local v25    # "skipButton":Landroid/widget/Button;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 738
    :cond_16
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 481
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-nez v2, :cond_0

    .line 482
    return v3

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 486
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f140004

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 489
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 491
    .local v1, "query":Ljava/lang/String;
    const v2, 0x7f110339

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 492
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 494
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v2, :cond_2

    .line 495
    :cond_1
    return v3

    .line 498
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v2, :cond_3

    .line 499
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 502
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 503
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 504
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 506
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v2, :cond_4

    .line 507
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 509
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 511
    return v4
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 886
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onDestroy()V

    .line 887
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 889
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 888
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 890
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 885
    :cond_0
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1392
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1393
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 1396
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1383
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1384
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1386
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 463
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v3, -0x1

    .line 464
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 463
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public onProfileTileOpen()V
    .locals 1

    .prologue
    .line 1411
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v0, :cond_0

    .line 1412
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1410
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1370
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1371
    const/4 v0, 0x0

    return v0

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1362
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1363
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1364
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 824
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 826
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 827
    const-string/jumbo v2, ":settings:categories"

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 830
    :cond_0
    const-string/jumbo v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 831
    const-string/jumbo v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 833
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 839
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    .line 840
    :goto_0
    const-string/jumbo v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 842
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    return-void

    .line 839
    :cond_2
    const/4 v0, 0x0

    .local v0, "isExpanded":Z
    goto :goto_0

    .line 842
    .end local v0    # "isExpanded":Z
    :cond_3
    const-string/jumbo v1, ""

    .restart local v1    # "query":Ljava/lang/String;
    goto :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 849
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onStart()V

    .line 851
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 852
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 855
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$6;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 861
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 862
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 861
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 864
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 865
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 866
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 868
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->register(Landroid/app/Activity;I)V

    .line 870
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 873
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    .line 848
    return-void

    .line 871
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 878
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onStop()V

    .line 879
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 880
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 881
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->unregister()V

    .line 877
    return-void
.end method

.method protected onTileClicked(Lcom/android/settingslib/drawer/Tile;)V
    .locals 1
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 1401
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_0

    .line 1403
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    .line 1400
    :goto_0
    return-void

    .line 1405
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onTileClicked(Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_0
.end method

.method public setDisplaySearchMenu(Z)V
    .locals 1
    .param p1, "displaySearch"    # Z

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eq p1, v0, :cond_0

    .line 753
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 754
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->invalidateOptionsMenu()V

    .line 751
    :cond_0
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1357
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1049
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f110222

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1050
    if-eqz p2, :cond_0

    .line 1051
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1052
    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1056
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1047
    return-void

    .line 1054
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 972
    const/4 v6, 0x0

    .line 973
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 974
    if-eqz p4, :cond_1

    .line 975
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 982
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    .line 981
    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 971
    return-void

    .line 978
    .restart local v6    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ""

    .local v6, "title":Ljava/lang/String;
    goto :goto_0
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1009
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1010
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 998
    :goto_0
    return-void

    .line 1012
    :cond_0
    const/4 v4, 0x0

    .line 1013
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 1014
    if-eqz p4, :cond_2

    .line 1015
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1022
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    .line 1021
    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 1018
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    .local v4, "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public startSuggestion(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1457
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1458
    :cond_0
    return-void

    .line 1460
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    .line 1461
    const/16 v0, 0x2a

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1456
    return-void
.end method
