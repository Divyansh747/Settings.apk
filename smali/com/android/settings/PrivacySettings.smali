.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PrivacySettings$1;,
        Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

.field private mBackup:Landroid/support/v7/preference/PreferenceScreen;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/support/v7/preference/PreferenceScreen;

.field private mEnabled:Z

.field private mManageData:Landroid/support/v7/preference/PreferenceScreen;

.field private preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static synthetic -get0(Lcom/android/settings/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nonVisibleKeys"    # Ljava/util/Collection;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    .line 226
    sput-object v0, Lcom/android/settings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 126
    new-instance v0, Lcom/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PrivacySettings$1;-><init>(Lcom/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 55
    return-void
.end method

.method private static collectDiagnosticsEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 267
    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 269
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v2, 0x0

    .line 271
    .local v2, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 276
    .end local v2    # "isServiceActive":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 277
    const-string/jumbo v5, "com.google.settings"

    const/4 v6, 0x0

    .line 276
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v3, 0x1

    .line 278
    .local v3, "vendorSpecific":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 279
    :cond_0
    const-string/jumbo v4, "backup_inactive"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_1
    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    .line 287
    :goto_2
    const-string/jumbo v4, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 286
    invoke-static {p0, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    const-string/jumbo v4, "factory_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_2
    const-string/jumbo v4, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 291
    invoke-static {p0, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 293
    const-string/jumbo v4, "network_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_3
    invoke-static {p0}, Lcom/android/settings/PrivacySettings;->collectDiagnosticsEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 296
    const-string/jumbo v4, "collect_diagnostics"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_4
    return-void

    .line 272
    .end local v3    # "vendorSpecific":Z
    .restart local v2    # "isServiceActive":Z
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PrivacySettings"

    const-string/jumbo v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "isServiceActive":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "vendorSpecific":Z
    goto :goto_1

    .line 282
    :cond_6
    const-string/jumbo v4, "backup_data"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 283
    const-string/jumbo v4, "auto_restore"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    const-string/jumbo v4, "configure_account"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/PreferenceScreen;

    const v1, 0x7f0e08cf

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 153
    .local v8, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 154
    .local v0, "backupEnabled":Z
    const/4 v1, 0x0

    .line 155
    .local v1, "configIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 156
    .local v2, "configSummary":Ljava/lang/String;
    const/4 v6, 0x0

    .line 157
    .local v6, "manageIntent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 159
    .local v7, "manageLabel":Ljava/lang/String;
    :try_start_0
    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v12}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 160
    .local v0, "backupEnabled":Z
    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v12}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "transport":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v12, v9}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    const-string/jumbo v13, "config"

    .line 161
    invoke-direct {p0, v12, v13}, Lcom/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 163
    .local v1, "configIntent":Landroid/content/Intent;
    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v12, v9}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "configSummary":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v12, v9}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    const-string/jumbo v13, "management"

    .line 164
    invoke-direct {p0, v12, v13}, Lcom/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 166
    .local v6, "manageIntent":Landroid/content/Intent;
    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v12, v9}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "manageLabel":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 169
    const v12, 0x7f0e07b7

    .line 168
    :goto_0
    invoke-virtual {v13, v12}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "backupEnabled":Z
    .end local v1    # "configIntent":Landroid/content/Intent;
    .end local v2    # "configSummary":Ljava/lang/String;
    .end local v6    # "manageIntent":Landroid/content/Intent;
    .end local v7    # "manageLabel":Ljava/lang/String;
    .end local v9    # "transport":Ljava/lang/String;
    :goto_1
    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    .line 177
    const-string/jumbo v13, "backup_auto_restore"

    .line 176
    invoke-static {v8, v13, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v10, :cond_2

    :goto_2
    invoke-virtual {v12, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 178
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 180
    if-eqz v1, :cond_3

    move v3, v0

    .line 181
    :goto_3
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v10, v3}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 182
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v10, v1}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 183
    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 185
    if-eqz v6, :cond_4

    move v5, v0

    .line 186
    .local v5, "manageEnabled":Z
    :goto_4
    if-eqz v5, :cond_5

    .line 187
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v10, v6}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 188
    if-eqz v7, :cond_0

    .line 189
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v10, v7}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    :cond_0
    :goto_5
    return-void

    .line 170
    .end local v5    # "manageEnabled":Z
    .restart local v0    # "backupEnabled":Z
    .restart local v1    # "configIntent":Landroid/content/Intent;
    .restart local v2    # "configSummary":Ljava/lang/String;
    .restart local v6    # "manageIntent":Landroid/content/Intent;
    .restart local v7    # "manageLabel":Ljava/lang/String;
    .restart local v9    # "transport":Ljava/lang/String;
    :cond_1
    const v12, 0x7f0e07b8

    goto :goto_0

    .line 171
    .end local v0    # "backupEnabled":Z
    .end local v1    # "configIntent":Landroid/content/Intent;
    .end local v2    # "configSummary":Ljava/lang/String;
    .end local v6    # "manageIntent":Landroid/content/Intent;
    .end local v7    # "manageLabel":Ljava/lang/String;
    .end local v9    # "transport":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 173
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    move v10, v11

    .line 176
    goto :goto_2

    .line 180
    :cond_3
    const/4 v3, 0x0

    .local v3, "configureEnabled":Z
    goto :goto_3

    .end local v3    # "configureEnabled":Z
    :cond_4
    move v5, v11

    .line 185
    goto :goto_4

    .line 193
    .restart local v5    # "manageEnabled":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_5
.end method

.method private validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "logLabel"    # Ljava/lang/String;

    .prologue
    .line 198
    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 200
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 201
    .local v1, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    const/4 p1, 0x0

    .line 203
    .local p1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "PrivacySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Backup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    const-string/jumbo v4, " fails to resolve; ignoring"

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 220
    const v0, 0x7f0e0a54

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    .line 86
    iget-boolean v5, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-nez v5, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    const v5, 0x7f080044

    invoke-virtual {p0, v5}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 93
    .local v3, "screen":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 92
    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 95
    const-string/jumbo v5, "backup_data"

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/PreferenceScreen;

    .line 97
    const-string/jumbo v5, "auto_restore"

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    .line 98
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string/jumbo v5, "configure_account"

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/PreferenceScreen;

    .line 101
    const-string/jumbo v5, "data_management"

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/PreferenceScreen;

    .line 103
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 104
    .local v1, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 105
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 106
    .local v4, "screenPreferenceCount":I
    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 107
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 108
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 106
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 121
    iget-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 117
    :cond_0
    return-void
.end method
