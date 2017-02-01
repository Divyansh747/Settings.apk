.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;
    }
.end annotation


# static fields
.field private static final ITEMS_NO_SHOW_SHARED:[I

.field private static final ITEMS_SHOW_SHARED:[I


# instance fields
.field private mAutomaticStorageManagement:Landroid/support/v7/preference/Preference;

.field private mCurrentUser:Landroid/content/pm/UserInfo;

.field private mExplore:Landroid/support/v7/preference/Preference;

.field private mHeaderPoolIndex:I

.field private mHeaderPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPoolIndex:I

.field private mItemPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

.field private mNeedsUpdate:Z

.field private final mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private mSystemSize:J

.field private mTotalSize:J

.field private mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/Fragment;Landroid/content/Intent;)V
    .locals 0
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->launchIntent(Landroid/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p1, "details"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updateDetails(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f0e0583

    .line 101
    const v1, 0x7f0e0589

    .line 99
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 80
    return-void

    .line 104
    nop

    :array_0
    .array-data 4
        0x7f0e0583
        0x7f0e0584
        0x7f0e0585
        0x7f0e0586
        0x7f0e0589
        0x7f0e0588
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 130
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    .line 131
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    .line 568
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 714
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setRetainInstance(Z)V

    .line 145
    return-void
.end method

.method private addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 4
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 288
    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 295
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 297
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 298
    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 299
    return-object v0

    .line 291
    .end local v0    # "category":Landroid/support/v7/preference/PreferenceCategory;
    :cond_0
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 292
    const v3, 0x101008c

    .line 291
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 293
    .restart local v0    # "category":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V
    .locals 4
    .param p1, "category"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "showShared"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 303
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 304
    .local v1, "itemsToAdd":[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 305
    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    .end local v0    # "i":I
    .end local v1    # "itemsToAdd":[I
    :cond_0
    sget-object v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .restart local v1    # "itemsToAdd":[I
    goto :goto_0

    .line 302
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 6
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "titleRes"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "userId"    # I

    .prologue
    .line 310
    const v1, 0x7f0e0589

    if-ne p2, v1, :cond_1

    .line 311
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 312
    const-string/jumbo v1, "PrivateVolumeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skipping System storage because its size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 315
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq p4, v1, :cond_1

    .line 317
    return-void

    .line 321
    :cond_1
    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 322
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 327
    .local v0, "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :goto_0
    if-eqz p3, :cond_3

    .line 328
    invoke-virtual {v0, p3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 334
    :goto_1
    const v1, 0x7f0e053e

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 335
    iput p4, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 336
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 337
    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 309
    return-void

    .line 324
    .end local v0    # "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildItem()Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 325
    .restart local v0    # "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 282
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 283
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 281
    return-void
.end method

.method private buildAction(I)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    .line 346
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 349
    return-object v0
.end method

.method private buildItem()Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2

    .prologue
    .line 341
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    return-object v0
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 680
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_0

    .line 681
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_2

    .line 682
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v2, v3, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 682
    goto :goto_0

    :cond_2
    move v0, v1

    .line 681
    goto :goto_0
.end method

.method private isVolumeValid()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static launchIntent(Landroid/app/Fragment;Landroid/content/Intent;)V
    .locals 5
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 702
    :try_start_0
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 704
    .local v1, "userId":I
    if-ne v1, v4, :cond_0

    .line 705
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 700
    .end local v1    # "userId":I
    :goto_0
    return-void

    .line 707
    .restart local v1    # "userId":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    .end local v1    # "userId":I
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "PrivateVolumeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setTitle()V
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method static setVolumeSize(Landroid/os/Bundle;J)V
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "size"    # J

    .prologue
    .line 353
    const-string/jumbo v0, "volume_size"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 352
    return-void
.end method

.method private startStorageCleanupActivity()V
    .locals 4

    .prologue
    .line 478
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 479
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "com.qti.storagecleaner"

    const-string/jumbo v3, "com.qti.storagecleaner.CleanerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "PrivateVolumeSettings"

    const-string/jumbo v3, "Can\'t start storage cleanup activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static varargs totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J
    .locals 10
    .param p0, "details"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p1, "userId"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 686
    const-wide/16 v2, 0x0

    .line 687
    .local v2, "total":J
    iget-object v4, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 688
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v1, :cond_1

    .line 689
    const/4 v4, 0x0

    array-length v6, p2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, p2, v5

    .line 690
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 691
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 689
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 695
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "PrivateVolumeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_2
    return-wide v2
.end method

.method private update()V
    .locals 26

    .prologue
    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v20

    if-nez v20, :cond_0

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->finish()V

    .line 209
    return-void

    .line 212
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setTitle()V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 218
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    .line 220
    .local v12, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c004c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mAutomaticStorageManagement:Landroid/support/v7/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 225
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 228
    .local v5, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    .line 229
    .local v15, "userCount":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v15, v0, :cond_3

    const/4 v13, 0x1

    .line 230
    .local v13, "showHeaders":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v14

    .line 232
    :goto_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 233
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 235
    const/4 v4, 0x0

    .line 237
    .local v4, "addedUserCount":I
    const/16 v18, 0x0

    .local v18, "userIndex":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v15, :cond_6

    .line 238
    move/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/UserInfo;

    .line 239
    .local v19, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 240
    if-eqz v13, :cond_5

    .line 241
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v7

    .line 242
    .local v7, "details":Landroid/support/v7/preference/PreferenceGroup;
    :goto_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v7, v14, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V

    .line 243
    add-int/lit8 v4, v4, 0x1

    .line 237
    .end local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 229
    .end local v4    # "addedUserCount":I
    .end local v13    # "showHeaders":Z
    .end local v18    # "userIndex":I
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "showHeaders":Z
    goto :goto_0

    .line 230
    :cond_4
    const/4 v14, 0x0

    .local v14, "showShared":Z
    goto :goto_1

    .line 241
    .end local v14    # "showShared":Z
    .restart local v4    # "addedUserCount":I
    .restart local v18    # "userIndex":I
    .restart local v19    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    move-object v7, v12

    .restart local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    goto :goto_3

    .line 248
    .end local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    sub-int v20, v15, v4

    if-lez v20, :cond_8

    .line 250
    const v20, 0x7f0e056d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v10

    .line 251
    .local v10, "otherUsers":Landroid/support/v7/preference/PreferenceGroup;
    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v0, v15, :cond_8

    .line 252
    move/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/UserInfo;

    .line 253
    .restart local v19    # "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 254
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 251
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 259
    .end local v10    # "otherUsers":Landroid/support/v7/preference/PreferenceGroup;
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_8
    const v20, 0x7f0e0587

    const/16 v21, 0x0

    const/16 v22, -0x2710

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 261
    if-eqz v14, :cond_9

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 265
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v8

    .line 266
    .local v8, "freeBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    move-wide/from16 v20, v0

    sub-long v16, v20, v8

    .line 270
    .local v16, "usedBytes":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v11

    .line 271
    .local v11, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v20, v0

    const v21, 0x7f0e0571

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    .line 272
    iget-object v0, v11, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v23, v22, v24

    iget-object v0, v11, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aput-object v23, v22, v24

    .line 271
    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 274
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 273
    const v22, 0x7f0e0572

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x64

    mul-long v22, v22, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setPercent(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->forceMeasure()V

    .line 278
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 206
    return-void
.end method

.method private updateDetails(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 38
    .param p1, "details"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 576
    const/16 v18, 0x0

    .line 577
    .local v18, "otherItem":Lcom/android/settings/deviceinfo/StorageItemPreference;
    const-wide/16 v4, 0x0

    .line 578
    .local v4, "accountedSize":J
    const-wide/16 v24, 0x0

    .line 579
    .local v24, "totalMiscSize":J
    const-wide/16 v22, 0x0

    .line 581
    .local v22, "totalDownloadsSize":J
    const/4 v11, 0x0

    .end local v18    # "otherItem":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v11, v0, :cond_0

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 583
    .local v14, "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    iget v0, v14, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v19, v0

    .line 586
    .local v19, "userId":I
    :try_start_0
    invoke-virtual {v14}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 590
    .local v15, "itemTitleId":I
    :goto_1
    sparse-switch v15, :sswitch_data_0

    .line 581
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 587
    .end local v15    # "itemTitleId":I
    :catch_0
    move-exception v10

    .line 588
    .local v10, "e":Ljava/lang/NumberFormatException;
    const/4 v15, 0x0

    .restart local v15    # "itemTitleId":I
    goto :goto_1

    .line 592
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v14, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 593
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    move-wide/from16 v34, v0

    add-long v4, v4, v34

    goto :goto_2

    .line 598
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v34

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v14, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 599
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v34

    add-long v4, v4, v34

    goto :goto_2

    .line 604
    :sswitch_2
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    .line 605
    sget-object v35, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v35, v34, v36

    sget-object v35, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const/16 v36, 0x1

    aput-object v35, v34, v36

    .line 604
    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v12

    .line 606
    .local v12, "imagesSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 607
    add-long/2addr v4, v12

    goto :goto_2

    .line 612
    .end local v12    # "imagesSize":J
    :sswitch_3
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    .line 613
    sget-object v35, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v35, v34, v36

    .line 612
    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v32

    .line 614
    .local v32, "videosSize":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v14, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 615
    add-long v4, v4, v32

    goto/16 :goto_2

    .line 620
    .end local v32    # "videosSize":J
    :sswitch_4
    const/16 v34, 0x5

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    .line 621
    sget-object v35, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v35, v34, v36

    .line 622
    sget-object v35, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const/16 v36, 0x1

    aput-object v35, v34, v36

    sget-object v35, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const/16 v36, 0x2

    aput-object v35, v34, v36

    .line 623
    sget-object v35, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const/16 v36, 0x3

    aput-object v35, v34, v36

    sget-object v35, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const/16 v36, 0x4

    aput-object v35, v34, v36

    .line 620
    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v6

    .line 624
    .local v6, "audioSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v7}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 625
    add-long/2addr v4, v6

    goto/16 :goto_2

    .line 630
    .end local v6    # "audioSize":J
    :sswitch_5
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    .line 631
    sget-object v35, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v35, v34, v36

    .line 630
    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v8

    .line 632
    .local v8, "downloadsSize":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v16

    .line 633
    .local v16, "miscSize":J
    add-long v22, v22, v8

    .line 634
    add-long v24, v24, v16

    .line 635
    add-long v34, v16, v8

    add-long v4, v4, v34

    .line 643
    move-object/from16 v18, v14

    .local v18, "otherItem":Lcom/android/settings/deviceinfo/StorageItemPreference;
    goto/16 :goto_2

    .line 646
    .end local v8    # "downloadsSize":J
    .end local v16    # "miscSize":J
    .end local v18    # "otherItem":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :sswitch_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v14, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 647
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v34, v0

    add-long v4, v4, v34

    goto/16 :goto_2

    .line 653
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v30

    .line 654
    .local v30, "userSize":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v14, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 655
    add-long v4, v4, v30

    goto/16 :goto_2

    .line 661
    .end local v14    # "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .end local v15    # "itemTitleId":I
    .end local v19    # "userId":I
    .end local v30    # "userSize":J
    :cond_0
    if-eqz v18, :cond_1

    .line 662
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v36, v0

    sub-long v28, v34, v36

    .line 663
    .local v28, "usedSize":J
    sub-long v26, v28, v4

    .line 664
    .local v26, "unaccountedSize":J
    add-long v34, v24, v22

    add-long v20, v34, v26

    .line 671
    .local v20, "otherSize":J
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 575
    .end local v20    # "otherSize":J
    .end local v26    # "unaccountedSize":J
    .end local v28    # "usedSize":J
    :cond_1
    return-void

    .line 590
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x7f0e0583 -> :sswitch_1
        0x7f0e0584 -> :sswitch_2
        0x7f0e0585 -> :sswitch_3
        0x7f0e0586 -> :sswitch_4
        0x7f0e0587 -> :sswitch_6
        0x7f0e0588 -> :sswitch_5
        0x7f0e0589 -> :sswitch_0
    .end sparse-switch
.end method

.method private updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 676
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 675
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 160
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    .line 161
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v4, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 166
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    .line 167
    .local v2, "sharedDataSize":J
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v4, "volume_size"

    invoke-virtual {v1, v4, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    .line 168
    iget-wide v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    .line 172
    iget-wide v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    cmp-long v1, v4, v8

    if-gtz v1, :cond_0

    .line 173
    iput-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    .line 174
    iput-wide v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v4}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 180
    new-instance v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, v0, v4, v5}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    .line 181
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 185
    return-void

    .line 188
    :cond_1
    const v1, 0x7f080029

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 191
    new-instance v1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    .line 192
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    .line 194
    const v1, 0x7f0e0562

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    .line 195
    const v1, 0x7f0e0564

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mAutomaticStorageManagement:Landroid/support/v7/preference/Preference;

    .line 197
    iput-boolean v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 199
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    .line 155
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 392
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 393
    const v0, 0x7f140006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 391
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 385
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->onDestroy()V

    .line 383
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 441
    .local v6, "context":Landroid/content/Context;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v5, "args":Landroid/os/Bundle;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 473
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 444
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    .line 445
    return v9

    .line 447
    :pswitch_1
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v6, v1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 448
    return v9

    .line 450
    :pswitch_2
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 452
    const v3, 0x7f0e055b

    move-object v0, p0

    move-object v1, p0

    .line 451
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 453
    return v9

    .line 455
    :pswitch_3
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 457
    const v3, 0x7f0e055c

    move-object v0, p0

    move-object v1, p0

    .line 456
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 458
    return v9

    .line 460
    :pswitch_4
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v8, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 463
    return v9

    .line 465
    .end local v8    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startStorageCleanupActivity()V

    .line 466
    return v9

    .line 469
    :pswitch_6
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v7, "deletion_helper_intent":Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 471
    return v9

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x7f11033d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 378
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 379
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 377
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 13
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 490
    instance-of v0, p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 491
    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget v12, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 494
    .local v12, "userId":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 498
    .local v11, "itemTitleId":I
    :goto_1
    const/4 v10, 0x0

    .line 499
    .local v10, "intent":Landroid/content/Intent;
    sparse-switch v11, :sswitch_data_0

    .line 559
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_2
    if-eqz v10, :cond_1

    .line 560
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    invoke-static {p0, v10}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->launchIntent(Landroid/app/Fragment;Landroid/content/Intent;)V

    .line 563
    const/4 v0, 0x1

    return v0

    .line 491
    .end local v11    # "itemTitleId":I
    .end local v12    # "userId":I
    :cond_0
    const/4 v12, -0x1

    .restart local v12    # "userId":I
    goto :goto_0

    .line 495
    :catch_0
    move-exception v9

    .line 496
    .local v9, "e":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    .restart local v11    # "itemTitleId":I
    goto :goto_1

    .line 501
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "intent":Landroid/content/Intent;
    :sswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 502
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "classname"

    .line 503
    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string/jumbo v0, "volumeUuid"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string/jumbo v0, "volumeName"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 507
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x7f0e0bf9

    const/4 v5, 0x0

    .line 508
    const/4 v6, 0x0

    .line 506
    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v10

    .local v10, "intent":Landroid/content/Intent;
    goto :goto_2

    .line 512
    .end local v2    # "args":Landroid/os/Bundle;
    .local v10, "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.provider.action.BROWSE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.providers.media.documents"

    const-string/jumbo v1, "images_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 514
    const-string/jumbo v0, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 518
    .local v10, "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.provider.action.BROWSE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.providers.media.documents"

    const-string/jumbo v1, "videos_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 520
    const-string/jumbo v0, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 524
    .local v10, "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.provider.action.BROWSE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.providers.media.documents"

    const-string/jumbo v1, "audio_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 526
    const-string/jumbo v0, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 530
    .local v10, "intent":Landroid/content/Intent;
    :sswitch_4
    invoke-static {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->show(Landroid/app/Fragment;)V

    .line 531
    const/4 v0, 0x1

    return v0

    .line 535
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 535
    invoke-static {p0, v0, v1, v12}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;I)V

    .line 537
    const/4 v0, 0x1

    return v0

    .line 541
    :sswitch_6
    invoke-static {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/Fragment;)V

    .line 542
    const/4 v0, 0x1

    return v0

    .line 546
    :sswitch_7
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v10

    .local v10, "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 549
    .local v10, "intent":Landroid/content/Intent;
    :sswitch_8
    const-class v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 550
    const v6, 0x7f0e0d7f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p0

    .line 549
    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 551
    const/4 v0, 0x1

    return v0

    .line 554
    :sswitch_9
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 555
    const/4 v0, 0x1

    return v0

    .line 565
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 499
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x7f0e0562 -> :sswitch_7
        0x7f0e0564 -> :sswitch_8
        0x7f0e0583 -> :sswitch_0
        0x7f0e0584 -> :sswitch_1
        0x7f0e0585 -> :sswitch_2
        0x7f0e0586 -> :sswitch_3
        0x7f0e0587 -> :sswitch_6
        0x7f0e0588 -> :sswitch_5
        0x7f0e0589 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 398
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    .line 400
    :cond_0
    const v8, 0x7f11033d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 401
    .local v6, "rename":Landroid/view/MenuItem;
    const v8, 0x7f11033e

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 402
    .local v4, "mount":Landroid/view/MenuItem;
    const v8, 0x7f11033f

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 403
    .local v7, "unmount":Landroid/view/MenuItem;
    const v8, 0x7f110340

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 404
    .local v1, "format":Landroid/view/MenuItem;
    const v8, 0x7f110341

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 405
    .local v3, "migrate":Landroid/view/MenuItem;
    const v8, 0x7f110342

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 406
    .local v0, "cleanUp":Landroid/view/MenuItem;
    const v8, 0x7f110343

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 410
    .local v2, "manage":Landroid/view/MenuItem;
    const-string/jumbo v8, "private"

    iget-object v11, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v11}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 411
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 412
    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 413
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 414
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 416
    const v11, 0x7f0c004c

    .line 415
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 425
    :goto_0
    const v8, 0x7f0e055d

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v5

    .line 431
    .local v5, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v5, :cond_1

    .line 432
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 433
    iget-object v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v8, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 431
    :cond_1
    :goto_1
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0022

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 397
    return-void

    .line 418
    .end local v5    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-ne v8, v9, :cond_3

    move v8, v9

    :goto_2
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    iget-object v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v8

    if-nez v8, :cond_4

    move v8, v9

    :goto_3
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 420
    iget-object v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 421
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 422
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v8, v10

    .line 418
    goto :goto_2

    :cond_4
    move v8, v10

    .line 419
    goto :goto_3

    .restart local v5    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_5
    move v10, v9

    .line 433
    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 361
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 362
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 364
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 369
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    if-eqz v0, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    .line 357
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setTitle()V

    goto :goto_0
.end method
