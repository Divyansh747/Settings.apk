.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsage$1;,
        Lcom/android/settings/datausage/AppDataUsage$2;,
        Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I


# instance fields
.field private mAppItem:Lcom/android/settingslib/AppItem;

.field private mAppList:Landroid/support/v7/preference/PreferenceCategory;

.field private mAppSettings:Landroid/support/v7/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroid/support/v7/preference/Preference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycle:Lcom/android/settings/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mEnd:J

.field private mForegroundUsage:Landroid/support/v7/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

.field private mStart:J

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroid/support/v7/preference/Preference;

.field private mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/datausage/AppDataUsage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/settings/datausage/AppDataUsage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->bindData()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    .line 108
    sget v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    .line 109
    sget v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    .line 365
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    .line 364
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 382
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    .line 381
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 62
    return-void
.end method

.method private addUid(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private bindData()V
    .locals 18

    .prologue
    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 312
    :cond_0
    const-wide/16 v14, 0x0

    .local v14, "foregroundBytes":J
    const-wide/16 v12, 0x0

    .line 313
    .local v12, "backgroundBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/SpinnerPreference;->setVisible(Z)V

    .line 323
    :goto_0
    add-long v16, v12, v14

    .line 324
    .local v16, "totalBytes":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 326
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v2, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    return-void

    .line 315
    .end local v2    # "context":Landroid/content/Context;
    .end local v12    # "backgroundBytes":J
    .end local v14    # "foregroundBytes":J
    .end local v16    # "totalBytes":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/SpinnerPreference;->setVisible(Z)V

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 317
    .local v8, "now":J
    const/4 v10, 0x0

    .line 318
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 319
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v12, v4, v6

    .line 320
    .restart local v12    # "backgroundBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 321
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v14, v4, v6

    .restart local v14    # "foregroundBytes":J
    goto :goto_0
.end method

.method private getAppRestrictBackground()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v3, Lcom/android/settingslib/AppItem;->key:I

    .line 333
    .local v0, "uid":I
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 334
    .local v1, "uidPolicy":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private getUnrestrictData()Z
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result v0

    return v0

    .line 341
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updatePrefs()V
    .locals 2

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 282
    return-void
.end method

.method private updatePrefs(ZZ)V
    .locals 4
    .param p1, "restrictBackground"    # Z
    .param p2, "unrestrictData"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 288
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 291
    if-eqz p1, :cond_3

    .line 292
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 286
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 288
    goto :goto_0

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 361
    const/16 v0, 0x157

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 438
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 118
    .local v2, "args":Landroid/os/Bundle;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v4}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    if-eqz v2, :cond_6

    const-string/jumbo v4, "app_item"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/AppItem;

    :goto_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 124
    if-eqz v2, :cond_7

    const-string/jumbo v4, "network_template"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    :goto_1
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v4, :cond_0

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 129
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v4

    .line 128
    invoke-static {v10, v4}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 131
    .end local v10    # "context":Landroid/content/Context;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-nez v4, :cond_a

    .line 132
    if-eqz v2, :cond_8

    const-string/jumbo v4, "uid"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 134
    .local v22, "uid":I
    :goto_2
    const/4 v4, -0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_9

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 147
    .end local v22    # "uid":I
    :cond_1
    :goto_3
    const v4, 0x7f08000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->addPreferencesFromResource(I)V

    .line 149
    const-string/jumbo v4, "total_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    .line 150
    const-string/jumbo v4, "foreground_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    .line 151
    const-string/jumbo v4, "background_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    .line 153
    const-string/jumbo v4, "cycle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/SpinnerPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    .line 154
    new-instance v4, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    if-lez v4, :cond_e

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 160
    .local v21, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 161
    .local v14, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 162
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 163
    iget-object v4, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .end local v14    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 168
    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 176
    :goto_5
    new-instance v4, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 177
    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    .line 179
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 183
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    .line 184
    .local v17, "matchFound":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "packageName$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 185
    .local v18, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 187
    const/16 v17, 0x1

    .line 191
    .end local v18    # "packageName":Ljava/lang/String;
    :cond_4
    if-nez v17, :cond_5

    .line 192
    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 193
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    .line 196
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_c

    .line 197
    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v20

    .line 199
    .local v20, "packageSize":I
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    move/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 200
    .local v9, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/android/settings/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    .line 201
    sget v5, Lcom/android/settings/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 200
    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 202
    .local v3, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v13, v4, :cond_d

    .line 203
    new-instance v16, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;-><init>(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;)V

    .line 204
    .local v16, "loader":Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 119
    .end local v3    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v9    # "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    .end local v13    # "i":I
    .end local v16    # "loader":Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;
    .end local v17    # "matchFound":Z
    .end local v19    # "packageName$iterator":Ljava/util/Iterator;
    .end local v20    # "packageSize":I
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .line 120
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 123
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 125
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 133
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "uid"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    goto/16 :goto_2

    .line 138
    .restart local v22    # "uid":I
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 139
    new-instance v4, Lcom/android/settingslib/AppItem;

    move/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    goto/16 :goto_3

    .line 143
    .end local v22    # "uid":I
    :cond_a
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v13, v4, :cond_1

    .line 144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 143
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 171
    .end local v13    # "i":I
    :cond_b
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_5

    .line 207
    .restart local v17    # "matchFound":Z
    .restart local v19    # "packageName$iterator":Ljava/util/Iterator;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_c
    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 113
    .end local v17    # "matchFound":Z
    .end local v19    # "packageName$iterator":Ljava/util/Iterator;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    :goto_8
    return-void

    .line 210
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    const/4 v5, -0x4

    if-ne v4, v5, :cond_f

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e005b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 223
    :goto_9
    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    goto :goto_8

    .line 212
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    const/4 v5, -0x5

    if-ne v4, v5, :cond_10

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0060

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto :goto_9

    .line 215
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v4}, Lcom/android/settingslib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v24

    .line 216
    .local v24, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v23

    .line 217
    .local v23, "um":Landroid/os/UserManager;
    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    .line 218
    .local v15, "info":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 219
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-static {v4, v0, v15}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    goto :goto_9

    .line 164
    .end local v15    # "info":Landroid/content/pm/UserInfo;
    .end local v23    # "um":Landroid/os/UserManager;
    .end local v24    # "userId":I
    :catch_1
    move-exception v11

    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_4
.end method

.method public onDataSaverChanged(Z)V
    .locals 0
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 426
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 233
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    .line 231
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 251
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 249
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 258
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    return v0

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2

    .line 262
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v3, v3, Lcom/android/settingslib/AppItem;->key:I

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    .line 263
    return v1

    :cond_1
    move v0, v1

    .line 262
    goto :goto_0

    .line 264
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    .line 265
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    .line 266
    return v1

    .line 268
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    .line 276
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v3, v3, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 275
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 277
    const/4 v0, 0x1

    return v0

    .line 279
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 238
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 239
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-static {v1, v2}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 243
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 245
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    .line 237
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 346
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 348
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsage;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v7

    .line 349
    .local v7, "header":Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 350
    :goto_0
    const/4 v4, 0x0

    .line 352
    .local v4, "uid":I
    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 355
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 356
    invoke-static {p0}, Lcom/android/settings/AppHeader;->includeAppInfo(Landroid/app/Fragment;)Z

    move-result v5

    .line 355
    invoke-static/range {v0 .. v8}, Lcom/android/settings/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;

    .line 345
    return-void

    .line 349
    .end local v4    # "uid":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "pkg":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :cond_1
    move v4, v6

    .line 352
    goto :goto_1

    .line 353
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 431
    :cond_0
    return-void
.end method
