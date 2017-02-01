.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageSummary$1;,
        Lcom/android/settings/fuelgauge/PowerUsageSummary$2;,
        Lcom/android/settings/fuelgauge/PowerUsageSummary$3;,
        Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private isShowBatteryPct:Z

.field private mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mBatteryPct:Landroid/support/v14/preference/SwitchPreference;

.field private final mBatteryPctChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

.field private mStatsType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 489
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>()V

    .line 488
    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 434
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    .line 507
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    .line 506
    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPctChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 59
    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 3

    .prologue
    .line 186
    const-string/jumbo v0, "not_available"

    .line 187
    .local v0, "NOT_AVAILABLE":Ljava/lang/String;
    const-string/jumbo v2, "not_available"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 188
    .local v1, "notAvailable":Landroid/support/v7/preference/Preference;
    if-nez v1, :cond_0

    .line 189
    new-instance v1, Landroid/support/v7/preference/Preference;

    .end local v1    # "notAvailable":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 190
    .restart local v1    # "notAvailable":Landroid/support/v7/preference/Preference;
    const-string/jumbo v2, "not_available"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 191
    const v2, 0x7f0e0802

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 192
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 185
    :cond_0
    return-void
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 213
    .local v16, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v14, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    .line 215
    .local v11, "numSippers":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_b

    .line 216
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    .line 217
    .local v15, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    if-lez v17, :cond_a

    .line 218
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    .line 222
    .local v13, "realUid":I
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isSharedGid(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 224
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v17

    .line 223
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 228
    :cond_0
    invoke-static {v13}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isSystemUid(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 229
    const-string/jumbo v17, "mediaserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 236
    :cond_1
    :goto_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    .line 238
    new-instance v10, Lcom/android/internal/os/BatterySipper;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v17, v0

    .line 239
    new-instance v18, Lcom/android/settings/fuelgauge/FakeUid;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v20, 0x0

    .line 238
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 240
    .local v10, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v10, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 241
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 242
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 243
    move-object v15, v10

    .line 246
    .end local v10    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 247
    .local v7, "index":I
    if-gez v7, :cond_5

    .line 249
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 233
    .restart local v13    # "realUid":I
    :cond_4
    const/16 v13, 0x3e8

    goto :goto_1

    .line 252
    .restart local v7    # "index":I
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 253
    .local v5, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 254
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 255
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 256
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 259
    :cond_6
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 260
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 261
    .local v4, "existingPackageLen":I
    :goto_3
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 262
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .line 263
    .local v8, "newPackageLen":I
    :goto_4
    if-lez v8, :cond_3

    .line 264
    add-int v17, v4, v8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 265
    .local v9, "newPackages":[Ljava/lang/String;
    if-lez v4, :cond_7

    .line 266
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    :cond_7
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iput-object v9, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_2

    .line 260
    .end local v4    # "existingPackageLen":I
    .end local v8    # "newPackageLen":I
    .end local v9    # "newPackages":[Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "existingPackageLen":I
    goto :goto_3

    .line 262
    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 275
    .end local v4    # "existingPackageLen":I
    .end local v5    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_a
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 279
    .end local v15    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 280
    .local v12, "numUidSippers":I
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_c

    .line 281
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 285
    :cond_c
    new-instance v17, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    return-object v14
.end method

.method private static isSharedGid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 201
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateBatteryPct()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 498
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPct:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPct:Landroid/support/v14/preference/SwitchPreference;

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 501
    const-string/jumbo v3, "status_bar_show_battery_percent"

    .line 500
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 499
    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPct:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPctChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 497
    :cond_1
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 158
    const v0, 0x7f0e0a51

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x36

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setAnimationAllowed(Z)V

    .line 93
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 94
    const-string/jumbo v0, "battery_history"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    .line 95
    const-string/jumbo v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 96
    const-string/jumbo v0, "battery_pct"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPct:Landroid/support/v14/preference/SwitchPreference;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isShowBatteryPct:Z

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isShowBatteryPct:Z

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPct:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 152
    const/4 v0, 0x4

    const v1, 0x7f0e0c09

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 153
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 145
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 125
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 164
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 181
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 166
    :pswitch_1
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    .line 167
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 171
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 172
    return v7

    .line 169
    :cond_0
    iput v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_0

    .line 174
    :pswitch_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "classname"

    .line 176
    const-class v3, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 178
    const v3, 0x7f0e0c09

    move-object v5, v4

    .line 177
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 179
    return v7

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPause()V

    .line 118
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 134
    instance-of v0, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_0

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_0
    move-object v6, p1

    .line 137
    check-cast v6, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 138
    .local v6, "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v3

    .line 139
    .local v3, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 140
    iget v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v5, v4

    .line 139
    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;ZZ)V

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onResume()V

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isShowBatteryPct:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateBatteryPct()V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 109
    return-void
.end method

.method protected refreshStats()V
    .locals 36

    .prologue
    .line 295
    invoke-super/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updatePreference(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 299
    const/4 v6, 0x0

    .line 301
    .local v6, "addedSome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v17

    .line 302
    .local v17, "powerProfile":Lcom/android/internal/os/PowerProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v24

    .line 303
    .local v24, "stats":Landroid/os/BatteryStats;
    const-string/jumbo v30, "screen.full"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    .line 305
    .local v8, "averagePower":D
    new-instance v29, Landroid/util/TypedValue;

    invoke-direct/range {v29 .. v29}, Landroid/util/TypedValue;-><init>()V

    .line 306
    .local v29, "value":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v30

    const v31, 0x1010429

    const/16 v32, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v29

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getColor(I)I

    move-result v10

    .line 309
    .local v10, "colorControl":I
    const-wide/high16 v30, 0x4024000000000000L    # 10.0

    cmpl-double v30, v8, v30

    if-gez v30, :cond_2

    .line 391
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 392
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 394
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 396
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 294
    return-void

    .line 311
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v30

    .line 310
    invoke-static/range {v30 .. v30}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v25

    .line 314
    .local v25, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v12

    .line 315
    .local v12, "dischargeAmount":I
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v16

    .line 316
    .local v16, "numSippers":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    .line 317
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/os/BatterySipper;

    .line 318
    .local v23, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    const-wide v32, 0x40ac200000000000L    # 3600.0

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4014000000000000L    # 5.0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_5

    .line 316
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 314
    .end local v12    # "dischargeAmount":I
    .end local v14    # "i":I
    .end local v16    # "numSippers":I
    .end local v23    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "dischargeAmount":I
    goto :goto_1

    .line 321
    .restart local v14    # "i":I
    .restart local v16    # "numSippers":I
    .restart local v23    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v26

    .line 323
    .local v26, "totalPower":D
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    div-double v30, v30, v26

    int-to-double v0, v12

    move-wide/from16 v32, v0

    mul-double v20, v30, v32

    .line 324
    .local v20, "percentOfTotal":D
    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v20

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    .line 327
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 330
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    div-double v32, v32, v34

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_3

    .line 333
    const-wide/high16 v30, 0x4024000000000000L    # 10.0

    cmpg-double v30, v20, v30

    if-ltz v30, :cond_3

    .line 336
    const-string/jumbo v30, "user"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    const-string/jumbo v30, "userdebug"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 340
    :cond_6
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 343
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_3

    .line 346
    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    cmpg-double v30, v20, v30

    if-ltz v30, :cond_3

    .line 349
    const-string/jumbo v30, "user"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    const-string/jumbo v30, "userdebug"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 353
    :cond_7
    new-instance v28, Landroid/os/UserHandle;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 354
    .local v28, "userHandle":Landroid/os/UserHandle;
    new-instance v13, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 355
    .local v13, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 357
    .local v7, "badgedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 359
    .local v11, "contentDescription":Ljava/lang/CharSequence;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_d

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_c

    .line 360
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 363
    .local v15, "key":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 364
    .local v22, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    if-nez v22, :cond_8

    .line 365
    new-instance v22, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .end local v22    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v7, v11, v13}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 367
    .restart local v22    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 370
    :cond_8
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    mul-double v30, v30, v32

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v32

    .line 370
    div-double v18, v30, v32

    .line 372
    .local v18, "percentOfMax":D
    move-wide/from16 v0, v20

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 373
    invoke-virtual {v13}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    add-int/lit8 v30, v14, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 375
    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 376
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9

    .line 377
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 379
    :cond_9
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_a

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v30

    if-nez v30, :cond_b

    .line 380
    :cond_a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_b

    .line 381
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTint(I)V

    .line 383
    :cond_b
    const/4 v6, 0x1

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getCachedCount()I

    move-result v31

    sub-int v30, v30, v31

    .line 386
    const/16 v31, 0xb

    .line 385
    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_3

    goto/16 :goto_0

    .line 361
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "percentOfMax":D
    .end local v22    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    :cond_c
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 362
    :cond_d
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3
.end method
