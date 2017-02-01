.class public Lcom/android/settings/DeviceInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceInfoSettings$1;,
        Lcom/android/settings/DeviceInfoSettings$2;,
        Lcom/android/settings/DeviceInfoSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunDisallowedBySystem:Z

.field mHits:[J

.field private mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/android/settings/DeviceInfoSettings$1;-><init>()V

    .line 423
    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 436
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$2;

    invoke-direct {v0}, Lcom/android/settings/DeviceInfoSettings$2;-><init>()V

    .line 435
    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 55
    return-void
.end method

.method private getMBNVersionValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 344
    const/4 v2, 0x0

    .line 346
    .local v2, "mVersion":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getRegionalizationService()Lcom/android/internal/os/IRegionalizationService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 349
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    if-eqz v3, :cond_3

    .line 351
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/mbnversion"

    invoke-interface {v3, v4}, Lcom/android/internal/os/IRegionalizationService;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 352
    return-object v5

    .line 353
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/mbnversion"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 354
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/mbnversion"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 356
    .end local v2    # "mVersion":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read MBNVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_3
    :goto_0
    return-object v2

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getQGPVersionValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 365
    const/4 v2, 0x0

    .line 367
    .local v2, "mVersion":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getRegionalizationService()Lcom/android/internal/os/IRegionalizationService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 370
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    if-eqz v3, :cond_3

    .line 372
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/qgpversion"

    invoke-interface {v3, v4}, Lcom/android/internal/os/IRegionalizationService;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 373
    return-object v5

    .line 374
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/qgpversion"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 375
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/qgpversion"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 377
    .end local v2    # "mVersion":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read QGPVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_3
    :goto_0
    return-object v2

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removePreferenceIfActivityMissing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 319
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 315
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 328
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 325
    .end local v0    # "pref":Landroid/support/v7/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    const-string/jumbo v3, "\' preference"

    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFeedback()V
    .locals 3

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    return-void

    .line 399
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 394
    return-void
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f0e0a48

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    .line 110
    const v6, 0x7f080025

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 112
    const-string/jumbo v6, "firmware_version"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v6, "firmware_version"

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 115
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "patch":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 117
    const-string/jumbo v6, "security_patch"

    invoke-direct {p0, v6, v3}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    const-string/jumbo v6, "baseband_version"

    const-string/jumbo v7, "gsm.version.baseband"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v6, "device_model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getMsvSuffix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v6, "fcc_equipment_id"

    const-string/jumbo v7, "ro.ril.fccid"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v6, "device_model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v6, "build_number"

    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v6, "build_number"

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 132
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->getQGPVersionValue()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "mQGPVersion":Ljava/lang/String;
    const-string/jumbo v6, "qgp_version"

    invoke-direct {p0, v6, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-nez v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "qgp_version"

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 137
    :cond_0
    const-string/jumbo v6, "kernel_version"

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c004e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 137
    invoke-static {v7}, Lcom/android/settingslib/DeviceInfoUtils;->customizeFormatKernelVersion(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->getMBNVersionValue()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "mMbnVersion":Ljava/lang/String;
    const-string/jumbo v6, "mbn_version"

    invoke-direct {p0, v6, v1}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-nez v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "mbn_version"

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 145
    :cond_1
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e09de

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "status":Ljava/lang/String;
    const-string/jumbo v6, "selinux_status"

    invoke-direct {p0, v6, v5}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v5    # "status":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "selinux_status"

    .line 155
    const-string/jumbo v8, "ro.build.selinux"

    .line 154
    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "safetylegal"

    .line 159
    const-string/jumbo v8, "ro.url.safetylegal"

    .line 158
    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "fcc_equipment_id"

    .line 163
    const-string/jumbo v8, "ro.ril.fccid"

    .line 162
    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "baseband_version"

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "device_feedback"

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 176
    :cond_4
    const-string/jumbo v6, "manual"

    const v7, 0x7f0c000e

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 189
    :cond_5
    :goto_2
    const-string/jumbo v6, "regulatory_info"

    const-string/jumbo v7, "android.settings.SHOW_REGULATORY_INFO"

    .line 188
    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfActivityMissing(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v6, "safety_info"

    const-string/jumbo v7, "android.settings.SHOW_SAFETY_AND_REGULATORY_INFO"

    .line 191
    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfActivityMissing(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 119
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mMbnVersion":Ljava/lang/String;
    .end local v2    # "mQGPVersion":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "security_patch"

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    .line 148
    .restart local v1    # "mMbnVersion":Ljava/lang/String;
    .restart local v2    # "mQGPVersion":Ljava/lang/String;
    :cond_7
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v6

    if-nez v6, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e09df

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 150
    .restart local v5    # "status":Ljava/lang/String;
    const-string/jumbo v6, "selinux_status"

    invoke-direct {p0, v6, v5}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 182
    .end local v5    # "status":Ljava/lang/String;
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_8
    const-string/jumbo v6, "regulatory_info"

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 183
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v4, :cond_5

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "firmware_version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 215
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v5, v3, v8, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 216
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 217
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    aget-wide v2, v2, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 218
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v3, "no_fun"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    if-eqz v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    const-string/jumbo v2, "DeviceInfoSettings"

    const-string/jumbo v3, "Sorry, no fun for you!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v8

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 220
    invoke-static {v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 227
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android"

    .line 229
    const-class v3, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    .line 232
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "build_number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 238
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    if-nez v2, :cond_5

    return v5

    .line 241
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 242
    return v5

    .line 245
    :cond_6
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v3, "no_debugging_features"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 246
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v2, :cond_7

    .line 247
    iget-boolean v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    if-eqz v2, :cond_8

    .line 251
    :cond_7
    :goto_2
    return v5

    .line 248
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 248
    invoke-static {v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 254
    :cond_9
    iget v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v2, :cond_d

    .line 255
    iget v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 256
    iget v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v2, :cond_b

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "development"

    invoke-virtual {v2, v3, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 259
    const-string/jumbo v3, "show"

    .line 257
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v2, :cond_a

    .line 261
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 263
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0196

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 265
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 267
    invoke-static {v2}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v2

    .line 269
    const-class v3, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {v2, v3, v5, v5}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 271
    :cond_b
    iget v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v2, :cond_3

    .line 272
    iget v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    .line 273
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v2, :cond_c

    .line 274
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 276
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 277
    iget v4, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 276
    new-array v5, v5, [Ljava/lang/Object;

    .line 277
    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/high16 v6, 0x7f130000

    .line 276
    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 279
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 281
    :cond_d
    iget v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v2, :cond_3

    .line 282
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v2, :cond_e

    .line 283
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 285
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0197

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 287
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 289
    :cond_f
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "security_patch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    const-string/jumbo v2, "DeviceInfoSettings"

    const-string/jumbo v3, "Stop click action on security_patch: queryIntentActivities() returns empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return v5

    .line 296
    :cond_10
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "device_feedback"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 297
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "development"

    .line 199
    const/4 v2, 0x0

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    const-string/jumbo v1, "show"

    .line 200
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 198
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, -0x1

    .line 198
    :goto_0
    iput v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 202
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 204
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 206
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 208
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    .line 196
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
