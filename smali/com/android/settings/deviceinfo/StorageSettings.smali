.class public Lcom/android/settings/deviceinfo/StorageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageSettings$1;,
        Lcom/android/settings/deviceinfo/StorageSettings$2;,
        Lcom/android/settings/deviceinfo/StorageSettings$3;,
        Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$MountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;,
        Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static sTotalInternalStorage:J


# instance fields
.field private mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    return-wide v0
.end method

.method static synthetic -set0(J)J
    .locals 0

    sput-wide p0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    return-wide p0
.end method

.method static synthetic -wrap0(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/os/storage/VolumeInfo;)J
    .locals 2
    .param p0, "info"    # Landroid/os/storage/VolumeInfo;

    .prologue
    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getTotalSize(Landroid/os/storage/VolumeInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 565
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$2;-><init>()V

    .line 564
    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 577
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$3;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$3;-><init>()V

    .line 576
    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 135
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 71
    return-void
.end method

.method static getColorPrivate(Landroid/content/res/Resources;)[I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 86
    const v1, 0x7f0b00a6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 87
    const v1, 0x7f0b00a7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 88
    const v1, 0x7f0b00a8

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 89
    const v1, 0x7f0b00a9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 90
    const v1, 0x7f0b00aa

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 85
    return-object v0
.end method

.method static getColorPublic(Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 78
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method static getColorWarning(Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 81
    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private static getTotalSize(Landroid/os/storage/VolumeInfo;)J
    .locals 6
    .param p0, "info"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const-wide/16 v4, 0x0

    .line 549
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 550
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 549
    if-eqz v1, :cond_0

    .line 551
    sget-wide v2, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 552
    sget-wide v2, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    return-wide v2

    .line 554
    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    .line 555
    .local v0, "path":Ljava/io/File;
    if-nez v0, :cond_1

    .line 557
    const-string/jumbo v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "info\'s path is null on getTotalSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-wide v4

    .line 560
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    return-wide v2
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    return v0

    .line 153
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private refresh()V
    .locals 36

    .prologue
    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    .line 162
    .local v3, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 168
    const/16 v24, 0x0

    .line 169
    .local v24, "privateCount":I
    const-wide/16 v28, 0x0

    .line 170
    .local v28, "privateUsedBytes":J
    const-wide/16 v26, 0x0

    .line 172
    .local v26, "privateTotalBytes":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v35

    .line 173
    .local v35, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/deviceinfo/StorageSettings;->getColorPrivate(Landroid/content/res/Resources;)[I

    move-result-object v16

    .line 176
    .local v16, "colorPrivate":[I
    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 177
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_1

    .line 178
    invoke-static {v4}, Lcom/android/settings/deviceinfo/StorageSettings;->getTotalSize(Landroid/os/storage/VolumeInfo;)J

    move-result-wide v6

    .line 179
    .local v6, "volumeTotalBytes":J
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "privateCount":I
    .local v25, "privateCount":I
    move-object/from16 v0, v16

    array-length v2, v0

    rem-int v2, v24, v2

    aget v5, v16, v2

    .line 180
    .local v5, "color":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 181
    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V

    .line 180
    invoke-virtual {v9, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 182
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 183
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v22

    .line 184
    .local v22, "path":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v12

    sub-long v12, v6, v12

    add-long v28, v28, v12

    .line 185
    add-long v26, v26, v6

    move/from16 v24, v25

    .end local v25    # "privateCount":I
    .restart local v24    # "privateCount":I
    goto :goto_0

    .line 187
    .end local v5    # "color":I
    .end local v6    # "volumeTotalBytes":J
    .end local v22    # "path":Ljava/io/File;
    :cond_1
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 189
    new-instance v8, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/deviceinfo/StorageSettings;->getColorPublic(Landroid/content/res/Resources;)I

    move-result v11

    const-wide/16 v12, 0x0

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V

    .line 192
    .local v8, "ExStorageVolumePreference":Lcom/android/settings/deviceinfo/StorageVolumePreference;
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_3

    .line 193
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    const/4 v9, 0x5

    if-eq v2, v9, :cond_2

    const/4 v2, 0x1

    .line 192
    :goto_1
    invoke-virtual {v8, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setEnabled(Z)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 193
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 192
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 199
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v8    # "ExStorageVolumePreference":Lcom/android/settings/deviceinfo/StorageVolumePreference;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v32

    .line 200
    .local v32, "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "rec$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/storage/VolumeRecord;

    .line 201
    .local v30, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_5

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    if-nez v2, :cond_5

    .line 204
    const v2, 0x7f020111

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 205
    .local v20, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/deviceinfo/StorageSettings;->getColorPublic(Landroid/content/res/Resources;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 208
    new-instance v23, Landroid/support/v7/preference/Preference;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 209
    .local v23, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    const v2, 0x1040466

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 212
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 218
    .end local v20    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v23    # "pref":Landroid/support/v7/preference/Preference;
    .end local v30    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v19

    .line 219
    .local v19, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "disk$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/DiskInfo;

    .line 220
    .local v17, "disk":Landroid/os/storage/DiskInfo;
    move-object/from16 v0, v17

    iget v2, v0, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v2, :cond_7

    move-object/from16 v0, v17

    iget-wide v12, v0, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-lez v2, :cond_7

    .line 221
    new-instance v23, Landroid/support/v7/preference/Preference;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 222
    .restart local v23    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    const v2, 0x1040463

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 225
    const v2, 0x7f020111

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    .line 230
    .end local v17    # "disk":Landroid/os/storage/DiskInfo;
    .end local v23    # "pref":Landroid/support/v7/preference/Preference;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v9, 0x0

    move-wide/from16 v0, v28

    invoke-static {v2, v0, v1, v9}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v33

    .line 231
    .local v33, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v9, 0x7f0e0571

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings/deviceinfo/StorageSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    .line 232
    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v10, v13

    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v12, v10, v13

    .line 231
    invoke-static {v9, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 234
    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v9, v12

    .line 233
    const v10, 0x7f0e0573

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lcom/android/settings/deviceinfo/StorageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 238
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_a

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 242
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v9, 0x2

    if-ne v2, v9, :cond_b

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_b

    .line 245
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 246
    .local v11, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    const-string/jumbo v9, "private"

    invoke-virtual {v11, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-wide v12, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    invoke-static {v11, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setVolumeSize(Landroid/os/Bundle;J)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 249
    const-class v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const v13, 0x7f0e0bf9

    const/4 v14, 0x0

    .line 250
    const/4 v15, 0x0

    .line 248
    invoke-static/range {v9 .. v15}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v21

    .line 251
    .local v21, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "show_drawer_menu"

    const/4 v9, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->finish()V

    .line 159
    .end local v11    # "args":Landroid/os/Bundle;
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_b
    return-void

    .end local v18    # "disk$iterator":Ljava/util/Iterator;
    .end local v19    # "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    .end local v24    # "privateCount":I
    .end local v31    # "rec$iterator":Ljava/util/Iterator;
    .end local v32    # "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    .end local v33    # "result":Landroid/text/format/Formatter$BytesResult;
    .restart local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v5    # "color":I
    .restart local v6    # "volumeTotalBytes":J
    .restart local v25    # "privateCount":I
    :cond_c
    move/from16 v24, v25

    .end local v25    # "privateCount":I
    .restart local v24    # "privateCount":I
    goto/16 :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f0e0a45

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 119
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 121
    sget-wide v2, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    .line 125
    :cond_0
    const v1, 0x7f080028

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    .line 127
    const-string/jumbo v1, "storage_internal"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 128
    const-string/jumbo v1, "storage_external"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 130
    new-instance v1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    .line 132
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    .line 113
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 267
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 265
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 272
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "key":Ljava/lang/String;
    instance-of v0, p1, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    if-eqz v0, :cond_5

    .line 275
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    .line 277
    .local v7, "vol":Landroid/os/storage/VolumeInfo;
    if-nez v7, :cond_0

    .line 278
    return v4

    .line 281
    :cond_0
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 283
    return v8

    .line 284
    :cond_1
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 285
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e057c

    invoke-static {p0, v1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 286
    return v8

    .line 289
    :cond_2
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 290
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {v7}, Lcom/android/settings/deviceinfo/StorageSettings;->getTotalSize(Landroid/os/storage/VolumeInfo;)J

    move-result-wide v0

    invoke-static {v5, v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setVolumeSize(Landroid/os/Bundle;J)V

    .line 293
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 295
    return v8

    .line 297
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_7

    .line 298
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings;->startActivity(Landroid/content/Intent;)V

    .line 300
    return v8

    .line 302
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 303
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-class v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 306
    return v8

    .line 310
    .end local v5    # "args":Landroid/os/Bundle;
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_5
    const-string/jumbo v0, "disk:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    const v0, 0x7f0e057d

    invoke-static {p0, v0, v6}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 313
    return v8

    .line 317
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 318
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 320
    const v3, 0x7f0e0560

    move-object v0, p0

    move-object v1, p0

    .line 319
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 321
    return v8

    .line 324
    .end local v5    # "args":Landroid/os/Bundle;
    .restart local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_7
    return v4
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 260
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 261
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    .line 258
    return-void
.end method
