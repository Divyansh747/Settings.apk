.class public Lcom/android/settings/applications/AppStorageSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStorageSettings$1;,
        Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;,
        Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppSize:Landroid/support/v7/preference/Preference;

.field private mCacheSize:Landroid/support/v7/preference/Preference;

.field private mCanClearData:Z

.field private mCandidates:[Landroid/os/storage/VolumeInfo;

.field private mChangeStorageButton:Landroid/widget/Button;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

.field private mClearUri:Lcom/android/settings/applications/LayoutPreference;

.field private mClearUriButton:Landroid/widget/Button;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/support/v7/preference/Preference;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mExternalCodeSize:Landroid/support/v7/preference/Preference;

.field private mExternalDataSize:Landroid/support/v7/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mStorageUsed:Landroid/support/v7/preference/Preference;

.field private mTotalSize:Landroid/support/v7/preference/Preference;

.field private mUri:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/AppStorageSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initiateClearUserData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHaveSizes:Z

    .line 127
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCodeSize:J

    .line 128
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastDataSize:J

    .line 129
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalCodeSize:J

    .line 130
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalDataSize:J

    .line 131
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCacheSize:J

    .line 132
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastTotalSize:J

    .line 597
    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$1;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method private clearUriPermissions()V
    .locals 3

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 539
    const-string/jumbo v2, "activity"

    .line 538
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 540
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    .line 543
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    .line 536
    return-void
.end method

.method private static getSize(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 629
    iget-wide v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    .line 630
    .local v0, "size":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 631
    const v2, 0x7f0e06ec

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 633
    :cond_0
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 264
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 615
    iget-wide v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 616
    iget-wide v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 617
    :cond_0
    const v1, 0x7f0e06eb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 621
    const v1, 0x7f0e0bbd

    .line 619
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "storageType":Ljava/lang/CharSequence;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 624
    invoke-static {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->getSize(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 623
    const v2, 0x7f0e0bb6

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 622
    .end local v0    # "storageType":Ljava/lang/CharSequence;
    :cond_2
    const v1, 0x7f0e0bbc

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 10

    .prologue
    const v9, 0x7f0e06b8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 377
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    .line 378
    .local v1, "appHasSpaceManagementUI":Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    .line 381
    .local v0, "appHasActiveAdmins":Z
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x41

    if-ne v7, v5, :cond_4

    .line 382
    .local v5, "isNonClearableSystemApp":Z
    :goto_1
    if-nez v5, :cond_5

    move v2, v0

    .line 384
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 386
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    const/4 v4, 0x1

    .line 391
    .local v4, "isManageSpaceActivityAvailable":Z
    :goto_3
    if-nez v1, :cond_1

    if-nez v2, :cond_7

    .line 392
    :cond_1
    if-eqz v4, :cond_7

    .line 397
    if-eqz v1, :cond_8

    .line 398
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v8, 0x7f0e06ca

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 402
    :goto_4
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    :goto_5
    iget-boolean v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v7, :cond_2

    .line 406
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    :cond_2
    return-void

    .line 377
    .end local v0    # "appHasActiveAdmins":Z
    .end local v1    # "appHasSpaceManagementUI":Z
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "isManageSpaceActivityAvailable":Z
    .end local v5    # "isNonClearableSystemApp":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "appHasSpaceManagementUI":Z
    goto :goto_0

    .restart local v0    # "appHasActiveAdmins":Z
    :cond_4
    move v5, v6

    .line 381
    goto :goto_1

    .line 382
    .restart local v5    # "isNonClearableSystemApp":Z
    :cond_5
    const/4 v2, 0x1

    .local v2, "appRestrictsClearingData":Z
    goto :goto_2

    .line 389
    .end local v2    # "appRestrictsClearingData":Z
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "isManageSpaceActivityAvailable":Z
    goto :goto_3

    .line 393
    :cond_7
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(I)V

    .line 394
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 395
    iput-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    goto :goto_5

    .line 400
    :cond_8
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(I)V

    goto :goto_4
.end method

.method private initMoveDialog()V
    .locals 10

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 412
    .local v1, "context":Landroid/content/Context;
    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 414
    .local v5, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 415
    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 414
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    .line 416
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 417
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 419
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/CharSequence;

    .line 420
    .local v4, "labels":[Ljava/lang/CharSequence;
    const/4 v2, -0x1

    .line 421
    .local v2, "current":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 422
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    .line 423
    .local v6, "volDescrip":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 424
    move v2, v3

    .line 426
    :cond_0
    aput-object v6, v4, v3

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 428
    .end local v6    # "volDescrip":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/VolumeInfo;

    iput-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    .line 429
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    const v8, 0x7f0e0bc2

    .line 429
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 432
    const v8, 0x7f0e0264

    const/4 v9, 0x0

    .line 429
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 410
    .end local v2    # "current":I
    .end local v3    # "i":I
    .end local v4    # "labels":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 434
    :cond_2
    const-string/jumbo v7, "storage_used"

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    .line 435
    const-string/jumbo v7, "change_storage_button"

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    .line 436
    const-string/jumbo v7, "storage_space"

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initiateClearUserData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 445
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 447
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 448
    .local v1, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 450
    new-instance v3, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 452
    check-cast v0, Landroid/app/ActivityManager;

    .line 454
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 455
    .local v2, "res":Z
    if-nez v2, :cond_1

    .line 457
    sget-object v3, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/applications/AppStorageSettings;->showDialogInner(II)V

    .line 444
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0e06d8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isCacheClearableApp()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 271
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 272
    .local v1, "currentPkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 273
    const v5, 0x7f0a002c

    .line 272
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "appPackageName":[Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    return v6

    .line 277
    :cond_0
    array-length v3, v0

    .line 278
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 279
    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 280
    return v6

    .line 278
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method private isMoveInProgress()Z
    .locals 4

    .prologue
    .line 238
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    .line 239
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 238
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const/4 v1, 0x0

    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 469
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 470
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 471
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0e06b8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 472
    if-ne v1, v4, :cond_0

    .line 473
    sget-object v2, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 468
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    .line 373
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initDataButtons()V

    .line 371
    return-void
.end method

.method private refreshGrantedUriPermissions()V
    .locals 22

    .prologue
    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->removeUriPermissionsFromUi()V

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    .line 486
    const-string/jumbo v19, "activity"

    .line 485
    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 488
    .local v3, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v13

    .line 490
    .local v13, "perms":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    .line 492
    return-void

    .line 495
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 498
    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v17, Ljava/util/TreeMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    .line 499
    .local v17, "uriCounters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Landroid/util/MutableInt;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "perm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/UriPermission;

    .line 500
    .local v11, "perm":Landroid/content/UriPermission;
    invoke-virtual {v11}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "authority":Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v5, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v16

    .line 502
    .local v16, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 503
    .local v4, "app":Ljava/lang/CharSequence;
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/MutableInt;

    .line 504
    .local v6, "count":Landroid/util/MutableInt;
    if-nez v6, :cond_1

    .line 505
    new-instance v18, Landroid/util/MutableInt;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/util/MutableInt;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 507
    :cond_1
    iget v0, v6, Landroid/util/MutableInt;->value:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v6, Landroid/util/MutableInt;->value:I

    goto :goto_0

    .line 512
    .end local v4    # "app":Ljava/lang/CharSequence;
    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "count":Landroid/util/MutableInt;
    .end local v11    # "perm":Landroid/content/UriPermission;
    .end local v16    # "provider":Landroid/content/pm/ProviderInfo;
    :cond_2
    const/4 v10, 0x0

    .line 513
    .local v10, "order":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 514
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Landroid/util/MutableInt;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/MutableInt;

    move-object/from16 v0, v18

    iget v9, v0, Landroid/util/MutableInt;->value:I

    .line 515
    .local v9, "numberResources":I
    new-instance v15, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 516
    .local v15, "pref":Landroid/support/v7/preference/Preference;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 519
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    .line 518
    const v20, 0x7f13000a

    .line 517
    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v9, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 520
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 521
    const v18, 0x7f04008e

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 522
    invoke-virtual {v15, v10}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 523
    sget-object v18, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Adding preference \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\' at order "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 527
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Landroid/util/MutableInt;>;"
    .end local v9    # "numberResources":I
    .end local v15    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    .line 531
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    return-void
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 287
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 288
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 289
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastTotalSize:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCacheSize:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastDataSize:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCodeSize:J

    .line 290
    iget-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 291
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mTotalSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    :cond_1
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 346
    :goto_0
    iget-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v6, :cond_2

    .line 347
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 348
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    :cond_2
    return-void

    .line 299
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mHaveSizes:Z

    .line 300
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 301
    .local v2, "codeSize":J
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 302
    .local v4, "dataSize":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 303
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 304
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v4, v6

    .line 315
    :cond_4
    :goto_1
    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    .line 316
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCodeSize:J

    .line 317
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    :cond_5
    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_6

    .line 320
    iput-wide v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastDataSize:J

    .line 321
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    .line 324
    .local v0, "cacheSize":J
    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_7

    .line 325
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCacheSize:J

    .line 326
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    :cond_7
    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    .line 329
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastTotalSize:J

    .line 330
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mTotalSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    :cond_8
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_b

    iget-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    if-eqz v6, :cond_b

    .line 336
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 337
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_c

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->isCacheClearableApp()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 342
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 306
    .end local v0    # "cacheSize":J
    :cond_9
    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    .line 307
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalCodeSize:J

    .line 308
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalCodeSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    :cond_a
    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 311
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalDataSize:J

    .line 312
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalDataSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 334
    .restart local v0    # "cacheSize":J
    :cond_b
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 340
    :cond_c
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private removeUriPermissionsFromUi()V
    .locals 4

    .prologue
    .line 548
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 549
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 550
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 551
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    if-eq v2, v3, :cond_0

    .line 552
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 549
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 546
    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    :cond_1
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const v3, 0x7f110182

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e06eb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e06ec

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 164
    const-string/jumbo v1, "total_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mTotalSize:Landroid/support/v7/preference/Preference;

    .line 165
    const-string/jumbo v1, "app_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppSize:Landroid/support/v7/preference/Preference;

    .line 166
    const-string/jumbo v1, "data_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataSize:Landroid/support/v7/preference/Preference;

    .line 167
    const-string/jumbo v1, "external_code_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalCodeSize:Landroid/support/v7/preference/Preference;

    .line 168
    const-string/jumbo v1, "external_data_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalDataSize:Landroid/support/v7/preference/Preference;

    .line 170
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const-string/jumbo v1, "storage_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 172
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalCodeSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 173
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalDataSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 175
    .end local v0    # "category":Landroid/support/v7/preference/PreferenceCategory;
    :cond_0
    const-string/jumbo v1, "clear_data_button"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    .line 178
    const-string/jumbo v1, "storage_used"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    .line 179
    const-string/jumbo v1, "change_storage_button"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    .line 181
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const v2, 0x7f0e0bc1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 182
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const-string/jumbo v1, "cache_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheSize:Landroid/support/v7/preference/Preference;

    .line 186
    const-string/jumbo v1, "clear_cache_button"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    .line 188
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const v2, 0x7f0e06a9

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 191
    const-string/jumbo v1, "uri_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    .line 192
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v2, "clear_uri_button"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    .line 193
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    .line 194
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const v2, 0x7f0e06ab

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 195
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0e06db

    .line 559
    packed-switch p1, :pswitch_data_0

    .line 585
    return-object v4

    .line 561
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e06d9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 561
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e06da

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 561
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 564
    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$2;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 561
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 570
    const v1, 0x7f0e06dc

    .line 561
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 573
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e06e0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e06e1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 576
    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$3;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 573
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 638
    const/16 v0, 0x13

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 251
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    aget-object v3, v4, p2

    .line 252
    .local v3, "targetVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 253
    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 252
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 254
    .local v1, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 255
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v4, "android.intent.extra.PACKAGE_NAME"

    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->startActivity(Landroid/content/Intent;)V

    .line 260
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 247
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    .line 201
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_3

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v1, :cond_1

    .line 206
    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 199
    :cond_2
    :goto_0
    return-void

    .line 203
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 202
    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 204
    return-void

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_8

    .line 210
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_6

    .line 213
    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 214
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 212
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 211
    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 221
    :cond_7
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/AppStorageSettings;->showDialogInner(II)V

    goto :goto_0

    .line 223
    :cond_8
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->isMoveInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 225
    :cond_9
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_c

    .line 230
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->clearUriPermissions()V

    goto :goto_0

    .line 224
    :cond_b
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 228
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 227
    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->addPreferencesFromResource(I)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->setupViews()V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    .line 145
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    .line 591
    :cond_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshSizeInfo()V

    .line 589
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onResume()V

    .line 156
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method protected refreshUi()Z
    .locals 4

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->retrieveAppEntry()Ljava/lang/String;

    .line 355
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v2, :cond_0

    .line 356
    const/4 v2, 0x0

    return v2

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshSizeInfo()V

    .line 359
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 362
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 361
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 363
    .local v0, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 364
    .local v1, "storage":Landroid/os/storage/StorageManager;
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshButtons()V

    .line 368
    const/4 v2, 0x1

    return v2
.end method
