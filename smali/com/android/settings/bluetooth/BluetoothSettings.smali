.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothSettings$1;,
        Lcom/android/settings/bluetooth/BluetoothSettings$2;,
        Lcom/android/settings/bluetooth/BluetoothSettings$3;,
        Lcom/android/settings/bluetooth/BluetoothSettings$4;,
        Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mSettingsDialogView:Landroid/view/View;


# instance fields
.field private mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/support/v7/preference/Preference;

.field private mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -set0(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    .line 650
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSettings$3;-><init>()V

    .line 649
    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 659
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$4;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSettings$4;-><init>()V

    .line 658
    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 541
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 138
    return-void
.end method

.method private addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 382
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 383
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 384
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 385
    if-eqz p4, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 388
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 380
    return-void
.end method

.method private resetBarSize(FII)V
    .locals 12
    .param p1, "titleTextSize"    # F
    .param p2, "actionBarHeight"    # I
    .param p3, "switchBarHeight"    # I

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 190
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "action_bar"

    const-string/jumbo v10, "id"

    const-string/jumbo v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 191
    .local v6, "titleId":I
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 192
    .local v7, "toolbar":Landroid/widget/Toolbar;
    const/4 v5, 0x0

    .line 193
    .local v5, "title":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 194
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 196
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v8, p2

    .line 195
    const/4 v9, 0x1

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    const/4 v3, 0x0

    .end local v5    # "title":Landroid/widget/TextView;
    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 198
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 199
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 201
    :cond_0
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 203
    .local v1, "childLayoutParams":Landroid/widget/Toolbar$LayoutParams;
    const/16 v8, 0x10

    iput v8, v1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "childLayoutParams":Landroid/widget/Toolbar$LayoutParams;
    .end local v3    # "i":I
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    if-eqz v5, :cond_2

    .line 207
    const/4 v8, 0x1

    invoke-virtual {v5, v8, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 208
    :cond_2
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v8, :cond_3

    .line 209
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/settings/widget/SwitchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 211
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v8, p3

    .line 210
    const/4 v9, 0x1

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method private setOffMessage()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 481
    .local v4, "emptyView":Landroid/widget/TextView;
    if-nez v4, :cond_0

    .line 482
    return-void

    .line 484
    :cond_0
    const v7, 0x7f0e037f

    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 486
    .local v2, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 488
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v7, "ble_scan_always_enabled"

    .line 487
    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v0, :cond_1

    .line 490
    .local v0, "bleScanningMode":Z
    :goto_0
    if-nez v0, :cond_2

    .line 492
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 508
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 509
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 511
    .local v1, "boldSpan":Landroid/text/Spannable;
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030044

    invoke-direct {v7, v8, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 512
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/16 v9, 0x21

    .line 510
    invoke-interface {v1, v7, v6, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 479
    return-void

    .end local v0    # "bleScanningMode":Z
    .end local v1    # "boldSpan":Landroid/text/Spannable;
    :cond_1
    move v0, v6

    .line 487
    goto :goto_0

    .line 494
    .restart local v0    # "bleScanningMode":Z
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v3, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 496
    const-string/jumbo v7, "\n\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const v7, 0x7f0e0380

    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 498
    new-instance v7, Lcom/android/settings/bluetooth/BluetoothSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$5;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    invoke-static {v4, v3, v7}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    goto :goto_1
.end method

.method private startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    return-void

    .line 353
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 355
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 364
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 369
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 370
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 348
    return-void

    .line 367
    :cond_3
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "mAvailableDevicesCategory is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateContent(I)V
    .locals 12
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 394
    .local v4, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    const/4 v2, 0x0

    .line 396
    .local v2, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 469
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 471
    if-eqz v2, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v6

    if-nez v6, :cond_2

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 392
    :cond_2
    return-void

    .line 398
    :pswitch_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->clear()V

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 401
    const v2, 0x7f0e01df

    .line 402
    goto :goto_0

    .line 404
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 410
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 412
    sget-object v7, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 411
    const v8, 0x7f0e0374

    .line 410
    invoke-direct {p0, v6, v8, v7, v11}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 413
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 415
    .local v3, "numberOfPairedDevices":I
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v6

    if-nez v6, :cond_4

    if-gtz v3, :cond_8

    .line 416
    :cond_4
    const-string/jumbo v6, "paired_devices"

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 417
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 426
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 428
    sget-object v7, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 427
    const v9, 0x7f0e0375

    .line 426
    invoke-direct {p0, v6, v9, v7, v8}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 430
    iget-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v6, :cond_6

    .line 431
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 434
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 435
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 436
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v0

    .line 437
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    new-array v7, v11, [Ljava/lang/Object;

    .line 439
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 438
    const v8, 0x7f0e01e0

    .line 437
    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 445
    iget-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v6, :cond_7

    .line 447
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v7, 0x17

    invoke-virtual {v6, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 448
    iput-boolean v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 450
    :cond_7
    return-void

    .line 420
    .end local v0    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_8
    const-string/jumbo v6, "paired_devices"

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_5

    .line 421
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 453
    .end local v3    # "numberOfPairedDevices":I
    :pswitch_1
    const v2, 0x7f0e01f8

    .line 454
    goto/16 :goto_0

    .line 457
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setOffMessage()V

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    const v2, 0x7f0e01df

    goto/16 :goto_0

    .line 464
    :pswitch_3
    const v2, 0x7f0e01f7

    .line 465
    iput-boolean v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto/16 :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 226
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 227
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v1, "paired_devices"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 231
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 232
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->setSelectable(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 236
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    .line 237
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 241
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 223
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 576
    const v0, 0x7f0e0a4a

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x18

    return v0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 568
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 156
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 158
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 159
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 149
    return-void

    .line 152
    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 517
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 520
    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 522
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 516
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f0f0120

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 169
    .local v1, "activity":Landroid/app/Activity;
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 171
    const v5, 0x7f0f011b

    .line 170
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 172
    .local v3, "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 173
    const v5, 0x7f0f011f

    .line 172
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 174
    .local v2, "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 175
    const v5, 0x7f0f011d

    .line 174
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 184
    .local v0, "actionBarHeight":I
    :goto_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->resetBarSize(FII)V

    .line 163
    return-void

    .line 177
    .end local v0    # "actionBarHeight":I
    .end local v2    # "switchBarHeight":I
    .end local v3    # "titleTextSize":F
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 178
    const v5, 0x7f0f011c

    .line 177
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 179
    .restart local v3    # "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 181
    .restart local v2    # "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "actionBarHeight":I
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 289
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v4, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 293
    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v7, 0xc

    if-ne v4, v7, :cond_3

    const/4 v0, 0x1

    .line 294
    .local v0, "bluetoothIsEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    .line 295
    .local v2, "isDiscovering":Z
    if-eqz v2, :cond_4

    const v3, 0x7f0e0369

    .line 298
    .local v3, "textId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 299
    const-string/jumbo v7, "bluetooth_accept_all_files"

    .line 298
    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_5

    const/4 v1, 0x1

    .line 301
    .local v1, "isAcceptAllFilesEnabled":Z
    :goto_2
    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 302
    if-eqz v0, :cond_2

    if-eqz v2, :cond_6

    :cond_2
    move v4, v5

    .line 301
    :goto_3
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 304
    const/4 v4, 0x2

    const v7, 0x7f0e01db

    invoke-interface {p1, v5, v4, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 307
    const/4 v4, 0x3

    const v7, 0x7f0e01ec

    invoke-interface {p1, v5, v4, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 309
    const/4 v4, 0x4

    const v7, 0x7f0e017a

    invoke-interface {p1, v5, v4, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 313
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 288
    return-void

    .line 293
    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isAcceptAllFilesEnabled":Z
    .end local v2    # "isDiscovering":Z
    .end local v3    # "textId":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "bluetoothIsEnabled":Z
    goto :goto_0

    .line 296
    .restart local v2    # "isDiscovering":Z
    :cond_4
    const v3, 0x7f0e0368

    .restart local v3    # "textId":I
    goto :goto_1

    .line 298
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isAcceptAllFilesEnabled":Z
    goto :goto_2

    :cond_6
    move v4, v6

    .line 302
    goto :goto_3
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 219
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 216
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 538
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 535
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 376
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 374
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 318
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 345
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 320
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 322
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 324
    :cond_0
    return v3

    .line 327
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 328
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v4, "rename device"

    .line 328
    invoke-virtual {v1, v2, v4}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 330
    return v3

    .line 333
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 336
    return v3

    .line 339
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 341
    const-string/jumbo v4, "bluetooth_accept_all_files"

    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 340
    :cond_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    return v3

    :cond_2
    move v1, v3

    .line 339
    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 273
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    return-void

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 251
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e01df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 261
    return-void

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 245
    :cond_3
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 527
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 526
    :cond_0
    return-void
.end method
