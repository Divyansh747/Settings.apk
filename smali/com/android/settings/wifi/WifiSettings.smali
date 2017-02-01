.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$1;,
        Lcom/android/settings/wifi/WifiSettings$2;,
        Lcom/android/settings/wifi/WifiSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAddPreference:Landroid/support/v7/preference/Preference;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDialogMode:I

.field private mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/widget/ProgressBar;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScanMenuItem:Landroid/view/MenuItem;

.field private mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 935
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>()V

    .line 934
    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 1063
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>()V

    .line 1062
    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 790
    .local v0, "emptyTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 788
    return-void
.end method

.method static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 981
    if-nez p1, :cond_0

    .line 982
    return v10

    .line 986
    :cond_0
    const-string/jumbo v11, "device_policy"

    .line 985
    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 990
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 991
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v11, "android.software.device_admin"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v3, :cond_1

    .line 992
    return v9

    .line 995
    :cond_1
    const/4 v5, 0x0

    .line 996
    .local v5, "isConfigEligibleForLockdown":Z
    if-eqz v3, :cond_2

    .line 997
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 998
    .local v0, "deviceOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 999
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v2

    .line 1001
    .local v2, "deviceOwnerUserId":I
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 1003
    .local v1, "deviceOwnerUid":I
    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v11, :cond_3

    const/4 v5, 0x1

    .line 1009
    .end local v0    # "deviceOwner":Landroid/content/ComponentName;
    .end local v1    # "deviceOwnerUid":I
    .end local v2    # "deviceOwnerUserId":I
    :cond_2
    :goto_0
    if-nez v5, :cond_4

    .line 1010
    return v10

    .line 1003
    .restart local v0    # "deviceOwner":Landroid/content/ComponentName;
    .restart local v1    # "deviceOwnerUid":I
    .restart local v2    # "deviceOwnerUserId":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 1013
    .end local v0    # "deviceOwner":Landroid/content/ComponentName;
    .end local v1    # "deviceOwnerUid":I
    .end local v2    # "deviceOwnerUserId":I
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1015
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v11, "wifi_device_owner_configs_lockdown"

    .line 1014
    invoke-static {v8, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_5

    move v6, v10

    .line 1016
    .local v6, "isLockdownFeatureEnabled":Z
    :goto_1
    if-eqz v6, :cond_6

    :goto_2
    return v9

    .end local v6    # "isLockdownFeatureEnabled":Z
    :cond_5
    move v6, v9

    .line 1014
    goto :goto_1

    .restart local v6    # "isLockdownFeatureEnabled":Z
    :cond_6
    move v9, v10

    .line 1016
    goto :goto_2

    .line 1004
    .end local v6    # "isLockdownFeatureEnabled":Z
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwner":Landroid/content/ComponentName;
    .restart local v2    # "deviceOwnerUserId":I
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 826
    :cond_0
    return-void
.end method

.method static isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 970
    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPasspointWifi(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 4
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    const/4 v1, 0x0

    .line 574
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 575
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 576
    .local v0, "entConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 576
    :cond_0
    return v1

    .line 579
    .end local v0    # "entConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_1
    return v1
.end method

.method private setOffMessage()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v6

    if-nez v6, :cond_0

    .line 740
    const v6, 0x7f0e03e8

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 743
    return-void

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 747
    .local v3, "emptyTextView":Landroid/widget/TextView;
    if-nez v3, :cond_2

    .line 748
    return-void

    .line 751
    :cond_2
    const v7, 0x7f0e03e6

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 756
    .local v1, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 758
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v7, "wifi_scan_always_enabled"

    .line 757
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 760
    .local v5, "wifiScanningMode":Z
    :goto_0
    if-nez v5, :cond_4

    .line 763
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 781
    :goto_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 783
    .local v0, "boldSpan":Landroid/text/Spannable;
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030044

    invoke-direct {v7, v8, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 784
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/16 v9, 0x21

    .line 782
    invoke-interface {v0, v7, v6, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 785
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 737
    return-void

    .end local v0    # "boldSpan":Landroid/text/Spannable;
    .end local v5    # "wifiScanningMode":Z
    :cond_3
    move v5, v6

    .line 757
    goto :goto_0

    .line 766
    .restart local v5    # "wifiScanningMode":Z
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .local v2, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 768
    const-string/jumbo v7, "\n\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    const v7, 0x7f0e03cc

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 770
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-static {v3, v2, v7}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    goto :goto_1
.end method

.method private showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 4
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "dialogMode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 552
    if-eqz p1, :cond_0

    .line 553
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 554
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 555
    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 557
    return-void

    .line 561
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_1

    .line 562
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 563
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 567
    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 568
    iput p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    .line 570
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 551
    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 349
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    .line 350
    .local v0, "wifiIsEnabled":Z
    const/4 v1, 0x6

    const v2, 0x7f0e0859

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    .line 351
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 353
    const/4 v1, 0x5

    const v2, 0x7f0e03df

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 355
    const/16 v1, 0xb

    const v2, 0x7f0e03e0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 356
    const v2, 0x7f0200e0

    .line 355
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 357
    const/4 v2, 0x1

    .line 355
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 348
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 890
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 888
    return-void
.end method

.method createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 310
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    return-object v1
.end method

.method forget()V
    .locals 3

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 867
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 872
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 871
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 882
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 885
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 865
    return-void

    .line 875
    :cond_0
    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    return-void

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 910
    const v0, 0x7f0e0a49

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 362
    const/16 v0, 0x67

    return v0
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 916
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 917
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 914
    :cond_0
    return-void
.end method

.method public declared-synchronized onAccessPointsChanged()V
    .locals 17

    .prologue
    monitor-enter p0

    .line 639
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    .line 640
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 642
    const v3, 0x7f0e03e8

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 644
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 645
    return-void

    .line 647
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    .line 649
    .local v16, "wifiState":I
    packed-switch v16, :pswitch_data_0

    :cond_3
    :goto_0
    monitor-exit p0

    .line 637
    return-void

    .line 653
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v9

    .line 655
    .local v9, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    const/4 v10, 0x0

    .line 656
    .local v10, "hasAvailableAccessPoints":Z
    const/4 v11, 0x0

    .line 657
    .local v11, "index":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 658
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "accessPoint$iterator":Ljava/util/Iterator;
    move v12, v11

    .end local v11    # "index":I
    .local v12, "index":I
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 660
    .local v2, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    .line 661
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v13

    .line 662
    .local v13, "key":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 663
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v13

    .line 665
    :cond_4
    const/4 v10, 0x1

    .line 667
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    .line 666
    check-cast v15, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 668
    .local v15, "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    if-eqz v15, :cond_5

    .line 669
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    invoke-virtual {v15, v12}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    :goto_2
    move v12, v11

    .end local v11    # "index":I
    .restart local v12    # "index":I
    goto :goto_1

    .line 673
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v15    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    :cond_5
    new-instance v1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v5, 0x0

    .line 675
    const v6, 0x7f020129

    move-object/from16 v7, p0

    .line 673
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroid/app/Fragment;)V

    .line 676
    .local v1, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    invoke-virtual {v1, v13}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 677
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    invoke-virtual {v1, v12}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 679
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 684
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 685
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    .line 686
    invoke-virtual {v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->refresh()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v1    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v8    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v9    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .end local v10    # "hasAvailableAccessPoints":Z
    .end local v11    # "index":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v16    # "wifiState":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 680
    .restart local v1    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .restart local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v8    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v9    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .restart local v10    # "hasAvailableAccessPoints":Z
    .restart local v11    # "index":I
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v15    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .restart local v16    # "wifiState":I
    :cond_7
    :try_start_4
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_6

    .line 681
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 682
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    goto :goto_3

    .line 689
    .end local v1    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v11    # "index":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .restart local v12    # "index":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 690
    if-nez v10, :cond_9

    .line 691
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 692
    new-instance v14, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)V

    .line 700
    .local v14, "pref":Landroid/support/v7/preference/Preference;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 701
    const v3, 0x7f0e03e7

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 702
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 703
    const-string/jumbo v3, "wifi_empty_list"

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move v11, v12

    .line 712
    .end local v12    # "index":I
    .end local v14    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v11    # "index":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 708
    .end local v11    # "index":I
    .restart local v12    # "index":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    invoke-virtual {v3, v12}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 710
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_4

    .line 718
    .end local v8    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v9    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .end local v10    # "hasAvailableAccessPoints":Z
    .end local v11    # "index":I
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 719
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 723
    :pswitch_2
    const v3, 0x7f0e03be

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 724
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 728
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    .line 729
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .restart local v2    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v8    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v9    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .restart local v10    # "hasAvailableAccessPoints":Z
    .restart local v12    # "index":I
    :cond_a
    move v11, v12

    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto/16 :goto_2

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 201
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 200
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 204
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 219
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 234
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 249
    if-eqz p1, :cond_1

    .line 250
    const-string/jumbo v0, "dialog_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    .line 251
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 252
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 256
    :cond_0
    const-string/jumbo v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const-string/jumbo v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 257
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 265
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "wifi_enable_next_on_connect"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 267
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 269
    check-cast v7, Landroid/net/ConnectivityManager;

    .line 271
    .local v7, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v7, :cond_2

    .line 272
    invoke-virtual {v7, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 274
    .local v8, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 279
    .end local v7    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 280
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 282
    const-string/jumbo v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    const-string/jumbo v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAccessPointsChanged()V

    .line 197
    :cond_3
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 902
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 904
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 905
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 901
    return-void
.end method

.method public onConnectedChanged()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 816
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 490
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 491
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 493
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 523
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 495
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 504
    :goto_0
    return v2

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-nez v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 500
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    goto :goto_0

    .line 507
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 508
    return v2

    .line 511
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 512
    return v2

    .line 515
    :pswitch_4
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 516
    return v2

    .line 519
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 520
    return v2

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 180
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0e03d8

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 184
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 186
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiSettings"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 177
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v5, 0x0

    .line 445
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 447
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v3, :cond_5

    .line 449
    check-cast v2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    .line 448
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 450
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 451
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    const/4 v3, 0x7

    const v4, 0x7f0e03e1

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 455
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 457
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    return-void

    .line 461
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 465
    :cond_2
    const/16 v3, 0x8

    const v4, 0x7f0e03e3

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 470
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 471
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 472
    const/16 v3, 0xc

    const v4, 0x7f0e0d35

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 476
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 477
    const/16 v3, 0x9

    const v4, 0x7f0e03e4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 479
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 480
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_5

    .line 482
    const/16 v3, 0xa

    const v4, 0x7f0e03e5

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 444
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_5
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 584
    packed-switch p1, :pswitch_data_0

    .line 629
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 586
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 587
    .local v3, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 589
    new-instance v3, Lcom/android/settingslib/wifi/AccessPoint;

    .end local v3    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 591
    .restart local v3    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 593
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 597
    :cond_0
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 598
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 599
    const v1, 0x11200ce

    .line 598
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 601
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 602
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 601
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 603
    .local v6, "hideForget":Z
    :cond_1
    if-nez v6, :cond_3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->isPasspointWifi(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v6

    .line 604
    .end local v6    # "hideForget":Z
    :goto_0
    const-string/jumbo v1, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Passpoint hotspot ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->isPasspointWifi(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "yes"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v6, :cond_2

    move-object v3, v2

    .line 606
    .end local v3    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_2
    iget v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    move-object v2, p0

    .line 605
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 611
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0

    .line 603
    .restart local v3    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v6    # "hideForget":Z
    :cond_3
    const/4 v6, 0x1

    .local v6, "hideForget":Z
    goto :goto_0

    .line 604
    .end local v6    # "hideForget":Z
    :cond_4
    const-string/jumbo v0, "no"

    goto :goto_1

    .line 608
    :cond_5
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_2

    .line 613
    .end local v3    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 615
    :pswitch_3
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 617
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_7

    .line 618
    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 620
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    .line 621
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 618
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 627
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    return-object v0

    .line 622
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 623
    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 623
    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_3

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 342
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 337
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 193
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 191
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    .line 292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 289
    :cond_0
    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 833
    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 931
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->onLevelChanged()V

    .line 930
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0e0439

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    .line 391
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 440
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 393
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 394
    return v10

    .line 410
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 411
    return v10

    .line 413
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->forceScan()V

    .line 415
    return v10

    .line 417
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 419
    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    .line 418
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 426
    :goto_0
    return v10

    .line 422
    :cond_1
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 428
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 430
    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 431
    const v3, 0x7f0e043a

    move-object v4, v2

    move-object v5, p0

    .line 429
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 437
    :goto_1
    return v10

    .line 433
    :cond_2
    const-class v0, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 434
    const v7, 0x7f0e043a

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    .line 433
    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 329
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->stopTracking()V

    .line 327
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 528
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v0, :cond_4

    .line 529
    check-cast p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 530
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 531
    return v1

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 548
    :goto_0
    return v2

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 537
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 541
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    goto :goto_0

    .line 543
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_5

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 546
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 316
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 317
    const-string/jumbo v1, "dummy"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removePreference(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->startTracking()V

    .line 323
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 314
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 370
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const-string/jumbo v1, "dialog_mode"

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 373
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 374
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 375
    const-string/jumbo v1, "wifi_ap_state"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v0, "savedState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    .line 382
    const-string/jumbo v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 366
    .end local v0    # "savedState":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 298
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 838
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 171
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 172
    const v1, 0x7f040199

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    .line 168
    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 802
    packed-switch p1, :pswitch_data_0

    .line 801
    :goto_0
    return-void

    .line 804
    :pswitch_0
    const v0, 0x7f0e03bd

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 805
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 809
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    .line 810
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 802
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setProgressBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 794
    :cond_0
    return-void

    .line 796
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 3
    .param p1, "configController"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 846
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 848
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 849
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    .line 849
    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 862
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 844
    return-void

    .line 853
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 854
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 856
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 857
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 858
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method
