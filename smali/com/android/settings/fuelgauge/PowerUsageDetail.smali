.class public Lcom/android/settings/fuelgauge/PowerUsageDetail;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageDetail$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

.field private static sDrainTypeDesciptions:[I


# instance fields
.field mApp:Landroid/content/pm/ApplicationInfo;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/support/v7/preference/PreferenceCategory;

.field private mDetailsParent:Landroid/support/v7/preference/PreferenceCategory;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHighPower:Landroid/support/v7/preference/Preference;

.field mInstaller:Landroid/content/ComponentName;

.field private mMessagesParent:Landroid/support/v7/preference/PreferenceCategory;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mPackagesParent:Landroid/support/v7/preference/PreferenceCategory;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mShowLocationButton:Z

.field private mStartTime:J

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static synthetic -get0(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private static synthetic -getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/settings/fuelgauge/PowerUsageDetail;I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->doAction(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    .line 66
    return-void

    .line 69
    :array_0
    .array-data 4
        0x7f0e0841
        0x7f0e0842
        0x7f0e0840
        0x7f0e0848
        0x7f0e084a
        0x7f0e0844
        0x7f0e0846
        0x7f0e084d
        0x7f0e0851
        0x7f0e0852
        0x7f0e0854
        0x7f0e0845
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 693
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    return-void
.end method

.method private addControl(III)V
    .locals 2
    .param p1, "pageSummary"    # I
    .param p2, "actionTitle"    # I
    .param p3, "action"    # I

    .prologue
    .line 648
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 649
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 650
    const v1, 0x7f04008e

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 651
    new-instance v1, Lcom/android/settings/fuelgauge/PowerUsageDetail$3;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/fuelgauge/PowerUsageDetail$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 658
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 647
    return-void
.end method

.method private addHorizontalPreference(Landroid/support/v7/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "parent"    # Landroid/support/v7/preference/PreferenceCategory;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 579
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 580
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    const v1, 0x7f04008e

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 581
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 582
    invoke-virtual {v0, p3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 583
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 584
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 578
    return-void
.end method

.method private addMessage(I)V
    .locals 3
    .param p1, "message"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/support/v7/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 674
    return-void
.end method

.method private checkForceStop()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 701
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 703
    return-void

    .line 705
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_3

    .line 706
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 708
    return-void

    .line 705
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 711
    :cond_3
    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_4

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v9

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 714
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 715
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 722
    const-string/jumbo v3, "package"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 721
    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 723
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const-string/jumbo v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    const-string/jumbo v0, "android.intent.extra.user_handle"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 700
    return-void

    .line 718
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 711
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private createDetails()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 388
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 389
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v5, "since"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsageSince:I

    .line 390
    const-string/jumbo v5, "uid"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 391
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 392
    const-string/jumbo v5, "drainType"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper$DrainType;

    iput-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 393
    const-string/jumbo v5, "noCoverage"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    .line 394
    const-string/jumbo v5, "showLocationButton"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    .line 396
    const-string/jumbo v5, "types"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    .line 397
    const-string/jumbo v5, "values"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    .line 399
    const-string/jumbo v5, "two_buttons"

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/LayoutPreference;

    .line 400
    .local v4, "twoButtons":Lcom/android/settings/applications/LayoutPreference;
    const v5, 0x7f110280

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    .line 401
    const v5, 0x7f110282

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    .line 402
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 404
    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v8, 0x2710

    if-lt v5, v8, :cond_5

    .line 405
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const v8, 0x7f0e06ad

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(I)V

    .line 406
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 407
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const v8, 0x10403b6

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(I)V

    .line 409
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 410
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 414
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 415
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    .line 414
    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 423
    const-string/jumbo v8, "send_action_app_error"

    .line 422
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 424
    .local v3, "enabled":I
    if-eqz v3, :cond_3

    .line 425
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 427
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v5, v5, v7

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 426
    invoke-static {v1, v5, v8}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    .line 429
    :cond_0
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 433
    :goto_2
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_4

    .line 434
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v5

    .line 433
    if-eqz v5, :cond_4

    .line 435
    const-string/jumbo v5, "high_power"

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/support/v7/preference/Preference;

    .line 436
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/support/v7/preference/Preference;

    new-instance v6, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;

    invoke-direct {v6, p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 451
    .end local v3    # "enabled":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->refreshStats()V

    .line 453
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    .line 454
    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    .line 455
    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    .line 456
    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillMessagesSection(I)V

    .line 386
    return-void

    .line 419
    :cond_1
    const-string/jumbo v5, "PowerUsageDetail"

    const-string/jumbo v8, "No packages!!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v3    # "enabled":I
    :cond_2
    move v5, v7

    .line 429
    goto :goto_1

    .line 431
    :cond_3
    const-string/jumbo v5, "two_buttons"

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .line 444
    :cond_4
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v6, "high_power"

    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    .line 447
    .end local v3    # "enabled":I
    :cond_5
    const-string/jumbo v5, "two_buttons"

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePreference(Ljava/lang/String;)V

    .line 448
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v6, "high_power"

    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    .line 416
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method private doAction(I)V
    .locals 7
    .param p1, "action"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 509
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    packed-switch p1, :pswitch_data_0

    .line 507
    :goto_0
    return-void

    .line 511
    :pswitch_0
    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 512
    const v3, 0x7f0e048e

    move-object v4, v2

    move-object v5, v2

    .line 511
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 515
    :pswitch_1
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 516
    const v3, 0x7f0e03b7

    move-object v4, v2

    move-object v5, v2

    .line 515
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 519
    :pswitch_2
    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 520
    const v3, 0x7f0e0356

    move-object v4, v2

    move-object v5, v2

    .line 519
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 523
    :pswitch_3
    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 524
    const v3, 0x7f0e026e

    move-object v4, v2

    move-object v5, v2

    .line 523
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 527
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startApplicationDetailsActivity()V

    goto :goto_0

    .line 530
    :pswitch_5
    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 531
    const v3, 0x7f0e02a5

    move-object v4, v2

    move-object v5, v2

    .line 530
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 534
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    .line 537
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private fillControlsSection(I)V
    .locals 12
    .param p1, "uid"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 589
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "packages":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 592
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v2, v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 594
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v3, :cond_3

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 596
    :goto_1
    const/4 v5, 0x1

    .line 597
    .local v5, "removeHeader":Z
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 642
    :cond_0
    :goto_2
    :pswitch_0
    if-eqz v5, :cond_1

    .line 643
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 587
    :cond_1
    return-void

    .end local v5    # "removeHeader":Z
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    move-object v3, v6

    .line 592
    goto :goto_0

    .line 594
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    const/4 v0, 0x0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 600
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "removeHeader":Z
    :pswitch_1
    if-eqz v2, :cond_4

    array-length v7, v2

    if-ne v7, v9, :cond_4

    .line 601
    const v7, 0x7f0e083b

    .line 602
    const v8, 0x7f0e084e

    const/4 v9, 0x5

    .line 601
    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 603
    const/4 v5, 0x0

    .line 609
    :cond_4
    iget-boolean v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    if-eqz v7, :cond_0

    .line 610
    const v7, 0x7f0e02a5

    .line 611
    const v8, 0x7f0e084f

    const/4 v9, 0x6

    .line 610
    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 612
    const/4 v5, 0x0

    goto :goto_2

    .line 616
    :pswitch_2
    const v7, 0x7f0e04bf

    .line 617
    const v8, 0x7f0e0847

    .line 616
    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 619
    const/4 v5, 0x0

    .line 620
    goto :goto_2

    .line 622
    :pswitch_3
    const v7, 0x7f0e03b7

    .line 623
    const v8, 0x7f0e0849

    .line 624
    const/4 v9, 0x2

    .line 622
    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 625
    const/4 v5, 0x0

    .line 626
    goto :goto_2

    .line 628
    :pswitch_4
    const v7, 0x7f0e0356

    .line 629
    const v8, 0x7f0e084b

    .line 630
    const/4 v9, 0x3

    .line 628
    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 631
    const/4 v5, 0x0

    .line 632
    goto :goto_2

    .line 634
    :pswitch_5
    iget-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_0

    .line 635
    const v7, 0x7f0e026e

    .line 636
    const v8, 0x7f0e0843

    .line 637
    const/4 v9, 0x4

    .line 635
    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 638
    const/4 v5, 0x0

    goto :goto_2

    .line 593
    .end local v5    # "removeHeader":Z
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 543
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v6, :cond_1

    .line 544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 546
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    .line 544
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_0
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v6, v6, v0

    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 549
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 570
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v8, v7, v0

    invoke-static {v6, v8, v9, v10}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v5

    .line 572
    .local v5, "value":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/support/v7/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 554
    .local v5, "value":Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    double-to-long v2, v6

    .line 555
    .local v2, "packets":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    goto :goto_3

    .line 558
    .end local v2    # "packets":J
    .local v5, "value":Ljava/lang/String;
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 559
    .local v4, "percentage":I
    invoke-static {v4}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    goto :goto_3

    .line 564
    .end local v4    # "percentage":I
    .local v5, "value":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v8, v8, v0

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0e0855

    invoke-virtual {v6, v8, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    goto :goto_3

    .line 567
    .local v5, "value":Ljava/lang/String;
    :pswitch_4
    iput-boolean v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto :goto_2

    .line 542
    .end local v0    # "i":I
    .end local v1    # "label":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 549
    :pswitch_data_0
    .packed-switch 0x7f0e0829
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private fillMessagesSection(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 662
    const/4 v0, 0x1

    .line 663
    .local v0, "removeHeader":Z
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 669
    :goto_0
    if-eqz v0, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 661
    :cond_0
    return-void

    .line 665
    :pswitch_0
    const v1, 0x7f0e0853

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addMessage(I)V

    .line 666
    const/4 v0, 0x0

    .line 667
    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 757
    const/4 v5, 0x1

    if-ge p1, v5, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 759
    return-void

    .line 761
    :cond_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 762
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 763
    return-void

    .line 766
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 768
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 770
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 771
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 772
    .local v3, "label":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 773
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 775
    :cond_3
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v2

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/support/v7/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    :cond_4
    return-void

    .line 776
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private killProcesses()V
    .locals 5

    .prologue
    .line 683
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v3, :cond_0

    return-void

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 685
    const-string/jumbo v4, "activity"

    .line 684
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 686
    .local v0, "am":Landroid/app/ActivityManager;
    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 687
    .local v2, "userId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 688
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 687
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 682
    return-void
.end method

.method private removePackagesSection()V
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 678
    return-void
.end method

.method private reportBatteryUse()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 731
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v6, :cond_0

    return-void

    .line 733
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 734
    .local v2, "report":Landroid/app/ApplicationErrorReport;
    const/4 v6, 0x3

    iput v6, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 735
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 736
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 737
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 739
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 742
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 743
    .local v1, "batteryInfo":Landroid/app/ApplicationErrorReport$BatteryInfo;
    const-string/jumbo v4, "percent"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 744
    const-string/jumbo v4, "duration"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 745
    const-string/jumbo v4, "report_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 746
    const-string/jumbo v4, "report_checkin_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 747
    iput-object v1, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 749
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v3, "result":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 751
    const-string/jumbo v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 752
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 753
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    .line 730
    return-void
.end method

.method private setupHeader()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 461
    .local v7, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "title"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v0, "iconPackage"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "pkg":Ljava/lang/String;
    const-string/jumbo v0, "iconId"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 464
    .local v8, "iconId":I
    const/4 v1, 0x0

    .line 465
    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    const/4 v4, -0x1

    .line 466
    .local v4, "uid":I
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 468
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 470
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v10, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 471
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_0

    .line 472
    invoke-virtual {v6, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 473
    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    iget v4, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v1    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 485
    :cond_1
    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v0, v5

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v11, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v11, :cond_3

    const v5, 0x106000b

    :cond_3
    move-object v0, p0

    .line 488
    invoke-static/range {v0 .. v5}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;II)V

    .line 459
    return-void

    .line 478
    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eqz v8, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 475
    .end local v1    # "appIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v9

    .local v9, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 499
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "package"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 503
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 504
    const v3, 0x7f0e06a2

    move-object v5, v4

    .line 503
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 497
    return-void
.end method

.method public static startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;ZZ)V
    .locals 18
    .param p0, "caller"    # Lcom/android/settings/SettingsActivity;
    .param p1, "helper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "statsType"    # I
    .param p3, "entry"    # Lcom/android/settings/fuelgauge/BatteryEntry;
    .param p4, "showLocationButton"    # Z
    .param p5, "includeAppInfo"    # Z

    .prologue
    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v12

    .line 91
    .local v12, "dischargeAmount":I
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v11, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "percent"

    .line 94
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    int-to-double v8, v12

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    .line 93
    double-to-int v3, v6

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string/jumbo v2, "gauge"

    .line 96
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    .line 95
    double-to-int v3, v6

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string/jumbo v2, "duration"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsPeriod()J

    move-result-wide v6

    invoke-virtual {v11, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    const-string/jumbo v2, "iconPackage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, "iconId"

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v2, "noCoverage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v11, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 101
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_0

    .line 102
    const-string/jumbo v2, "uid"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    :cond_0
    const-string/jumbo v2, "drainType"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 105
    const-string/jumbo v2, "showLocationButton"

    move/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    const-string/jumbo v3, "hideInfoButton"

    if-eqz p5, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v11, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    .line 111
    .local v16, "userId":I
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 267
    :pswitch_0
    const v2, 0x7f0e0835

    .line 268
    const v3, 0x7f0e0838

    .line 266
    filled-new-array {v2, v3}, [I

    move-result-object v14

    .line 270
    .local v14, "types":[I
    const/4 v2, 0x2

    new-array v0, v2, [D

    move-object/from16 v17, v0

    .line 271
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x0

    aput-wide v2, v17, v5

    .line 272
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/4 v5, 0x1

    aput-wide v2, v17, v5

    .line 276
    .local v17, "values":[D
    :cond_1
    :goto_1
    const-string/jumbo v2, "types"

    invoke-virtual {v11, v2, v14}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 277
    const-string/jumbo v2, "values"

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 279
    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 280
    new-instance v10, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    const v8, 0x7f0e0818

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object v7, v11

    .line 279
    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 86
    return-void

    .line 106
    .end local v14    # "types":[I
    .end local v16    # "userId":I
    .end local v17    # "values":[D
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 115
    .restart local v16    # "userId":I
    :pswitch_1
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v15, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 116
    .local v15, "uid":Landroid/os/BatteryStats$Uid;
    const/16 v2, 0xf

    new-array v14, v2, [I

    .restart local v14    # "types":[I
    fill-array-data v14, :array_0

    .line 133
    const/16 v2, 0xf

    new-array v0, v2, [D

    move-object/from16 v17, v0

    .line 134
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x0

    aput-wide v2, v17, v5

    .line 135
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x1

    aput-wide v2, v17, v5

    .line 136
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x2

    aput-wide v2, v17, v5

    .line 137
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x3

    aput-wide v2, v17, v5

    .line 138
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x4

    aput-wide v2, v17, v5

    .line 139
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v2, v2

    const/4 v5, 0x5

    aput-wide v2, v17, v5

    .line 140
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v2, v2

    const/4 v5, 0x6

    aput-wide v2, v17, v5

    .line 141
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v2, v2

    const/4 v5, 0x7

    aput-wide v2, v17, v5

    .line 142
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v2, v2

    const/16 v5, 0x8

    aput-wide v2, v17, v5

    .line 143
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v2, v2

    const/16 v5, 0x9

    aput-wide v2, v17, v5

    .line 144
    const-wide/16 v2, 0x0

    const/16 v5, 0xa

    aput-wide v2, v17, v5

    .line 145
    const-wide/16 v2, 0x0

    const/16 v5, 0xb

    aput-wide v2, v17, v5

    .line 146
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    long-to-double v2, v2

    const/16 v5, 0xc

    aput-wide v2, v17, v5

    .line 147
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    long-to-double v2, v2

    const/16 v5, 0xd

    aput-wide v2, v17, v5

    .line 148
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/16 v5, 0xe

    aput-wide v2, v17, v5

    .line 151
    .restart local v17    # "values":[D
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, v3, :cond_1

    .line 152
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 153
    .local v13, "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v13, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 154
    .local v4, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    const-string/jumbo v5, ""

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v6

    .line 155
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    move-object/from16 v3, p0

    .line 154
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 156
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 157
    const-string/jumbo v2, "report_details"

    invoke-virtual {v13}, Ljava/io/Writer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v13, Ljava/io/StringWriter;

    .end local v13    # "result":Ljava/io/Writer;
    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 160
    .restart local v13    # "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v13, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 161
    .restart local v4    # "printWriter":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v3

    .line 162
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    .line 161
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V

    .line 163
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 164
    const-string/jumbo v2, "report_checkin_details"

    .line 165
    invoke-virtual {v13}, Ljava/io/Writer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    goto/16 :goto_1

    .line 175
    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .end local v13    # "result":Ljava/io/Writer;
    .end local v14    # "types":[I
    .end local v15    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v17    # "values":[D
    :pswitch_2
    const v2, 0x7f0e0835

    .line 176
    const v3, 0x7f0e0836

    .line 177
    const v5, 0x7f0e082e

    .line 178
    const v6, 0x7f0e0838

    .line 174
    filled-new-array {v2, v3, v5, v6}, [I

    move-result-object v14

    .line 180
    .restart local v14    # "types":[I
    const/4 v2, 0x4

    new-array v0, v2, [D

    move-object/from16 v17, v0

    .line 181
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x0

    aput-wide v2, v17, v5

    .line 182
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    const/4 v5, 0x1

    aput-wide v2, v17, v5

    .line 183
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v2, v2

    const/4 v5, 0x2

    aput-wide v2, v17, v5

    .line 184
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/4 v5, 0x3

    aput-wide v2, v17, v5

    .line 180
    .restart local v17    # "values":[D
    goto/16 :goto_1

    .line 190
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_3
    const/16 v2, 0x9

    new-array v14, v2, [I

    .restart local v14    # "types":[I
    fill-array-data v14, :array_1

    .line 201
    const/16 v2, 0x9

    new-array v0, v2, [D

    move-object/from16 v17, v0

    .line 202
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x0

    aput-wide v2, v17, v5

    .line 203
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x1

    aput-wide v2, v17, v5

    .line 204
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x2

    aput-wide v2, v17, v5

    .line 205
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x3

    aput-wide v2, v17, v5

    .line 206
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v2, v2

    const/4 v5, 0x4

    aput-wide v2, v17, v5

    .line 207
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v2, v2

    const/4 v5, 0x5

    aput-wide v2, v17, v5

    .line 208
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v2, v2

    const/4 v5, 0x6

    aput-wide v2, v17, v5

    .line 209
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v2, v2

    const/4 v5, 0x7

    aput-wide v2, v17, v5

    .line 210
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/16 v5, 0x8

    aput-wide v2, v17, v5

    .line 201
    .restart local v17    # "values":[D
    goto/16 :goto_1

    .line 215
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_4
    const/16 v2, 0x9

    new-array v14, v2, [I

    .restart local v14    # "types":[I
    fill-array-data v14, :array_2

    .line 226
    const/16 v2, 0x9

    new-array v0, v2, [D

    move-object/from16 v17, v0

    .line 227
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x0

    aput-wide v2, v17, v5

    .line 228
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x1

    aput-wide v2, v17, v5

    .line 229
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x2

    aput-wide v2, v17, v5

    .line 230
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v2, v2

    const/4 v5, 0x3

    aput-wide v2, v17, v5

    .line 231
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v2, v2

    const/4 v5, 0x4

    aput-wide v2, v17, v5

    .line 232
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v2, v2

    const/4 v5, 0x5

    aput-wide v2, v17, v5

    .line 233
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v2, v2

    const/4 v5, 0x6

    aput-wide v2, v17, v5

    .line 234
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v2, v2

    const/4 v5, 0x7

    aput-wide v2, v17, v5

    .line 235
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/16 v5, 0x8

    aput-wide v2, v17, v5

    .line 226
    .restart local v17    # "values":[D
    goto/16 :goto_1

    .line 241
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_5
    const v2, 0x7f0e0837

    .line 242
    const v3, 0x7f0e0838

    .line 243
    const v5, 0x7f0e0839

    .line 240
    filled-new-array {v2, v3, v5}, [I

    move-result-object v14

    .line 245
    .restart local v14    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v17, v0

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v2

    const/4 v5, 0x0

    aput-wide v2, v17, v5

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v2

    const/4 v5, 0x1

    aput-wide v2, v17, v5

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v2

    const/4 v5, 0x2

    aput-wide v2, v17, v5

    .line 245
    .restart local v17    # "values":[D
    goto/16 :goto_1

    .line 254
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_6
    const v2, 0x7f0e0837

    .line 255
    const v3, 0x7f0e0838

    .line 256
    const v5, 0x7f0e0839

    .line 253
    filled-new-array {v2, v3, v5}, [I

    move-result-object v14

    .line 258
    .restart local v14    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v17, v0

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v2

    const/4 v5, 0x0

    aput-wide v2, v17, v5

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v2

    const/4 v5, 0x1

    aput-wide v2, v17, v5

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v2

    const/4 v5, 0x2

    aput-wide v2, v17, v5

    .line 258
    .restart local v17    # "values":[D
    goto/16 :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 116
    :array_0
    .array-data 4
        0x7f0e0826
        0x7f0e0827
        0x7f0e0828
        0x7f0e0829
        0x7f0e082a
        0x7f0e082d
        0x7f0e082c
        0x7f0e082e
        0x7f0e0830
        0x7f0e082f
        0x7f0e0831
        0x7f0e0832
        0x7f0e0833
        0x7f0e0834
        0x7f0e0838
    .end array-data

    .line 190
    :array_1
    .array-data 4
        0x7f0e082a
        0x7f0e0826
        0x7f0e0827
        0x7f0e0828
        0x7f0e082d
        0x7f0e082c
        0x7f0e0830
        0x7f0e082f
        0x7f0e0838
    .end array-data

    .line 215
    :array_2
    .array-data 4
        0x7f0e0835
        0x7f0e0826
        0x7f0e0827
        0x7f0e0828
        0x7f0e082d
        0x7f0e082c
        0x7f0e0830
        0x7f0e082f
        0x7f0e0838
    .end array-data
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 363
    const/16 v0, 0x35

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 380
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 381
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->doAction(I)V

    .line 492
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 352
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addPreferencesFromResource(I)V

    .line 353
    const-string/jumbo v0, "details_parent"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/support/v7/preference/PreferenceCategory;

    .line 354
    const-string/jumbo v0, "controls_parent"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/support/v7/preference/PreferenceCategory;

    .line 355
    const-string/jumbo v0, "messages_parent"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/support/v7/preference/PreferenceCategory;

    .line 356
    const-string/jumbo v0, "packages_parent"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/support/v7/preference/PreferenceCategory;

    .line 358
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->createDetails()V

    .line 347
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 368
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onResume()V

    .line 369
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 370
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 371
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->setupHeader()V

    .line 367
    return-void
.end method
