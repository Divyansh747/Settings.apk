.class public abstract Lcom/android/settings/notification/NotificationSettingsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationSettingsBase.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mBlock:Lcom/android/settingslib/RestrictedSwitchPreference;

.field protected mContext:Landroid/content/Context;

.field protected mCreated:Z

.field protected mImportance:Lcom/android/settings/notification/ImportanceSeekBarPreference;

.field protected mPkg:Ljava/lang/String;

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mPriority:Lcom/android/settingslib/RestrictedSwitchPreference;

.field protected mShowSlider:Z

.field protected mSilent:Lcom/android/settingslib/RestrictedSwitchPreference;

.field protected mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mUid:I

.field protected mUm:Landroid/os/UserManager;

.field protected mUserId:I

.field protected mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/notification/NotificationSettingsBase;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getGlobalVisibility()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "NotifiSettingsBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mShowSlider:Z

    .line 47
    return-void
.end method

.method private findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v8, 0x0

    .line 323
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 325
    array-length v0, v4

    .line 326
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 327
    aget-object v3, v4, v2

    .line 328
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "NotifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    return-object v8
.end method

.method private getGlobalVisibility()I
    .locals 2

    .prologue
    .line 286
    const/16 v0, -0x3e8

    .line 287
    .local v0, "globalVis":I
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getLockscreenNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    const/4 v0, -0x1

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getLockscreenAllowPrivateNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "entryValue"    # Ljava/lang/CharSequence;
    .param p3, "keyguardNotificationFeatures"    # I

    .prologue
    .line 278
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    .line 277
    invoke-static {v2, p3, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 279
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 281
    .local v1, "item":Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->addRestrictedItem(Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;)V

    .line 276
    .end local v1    # "item":Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 302
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 301
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 297
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 296
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    sget-boolean v0, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NotifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityCreated mCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mCreated:Z

    if-eqz v0, :cond_1

    .line 80
    const-string/jumbo v0, "NotifiSettingsBase"

    const-string/jumbo v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mCreated:Z

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, "args":Landroid/os/Bundle;
    sget-boolean v2, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate getIntent()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 94
    const-string/jumbo v2, "NotifiSettingsBase"

    const-string/jumbo v3, "No intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 96
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    .line 100
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUm:Landroid/os/UserManager;

    .line 102
    if-eqz v0, :cond_3

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    :goto_0
    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    .line 105
    if-eqz v0, :cond_4

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 105
    :goto_1
    iput v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    .line 108
    iget v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    if-eq v2, v7, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    :cond_2
    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Missing extras: app_package was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    const-string/jumbo v4, "app_uid"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    const-string/jumbo v4, " was "

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    iget v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 112
    return-void

    .line 104
    :cond_3
    const-string/jumbo v2, "app_package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 107
    :cond_4
    const-string/jumbo v2, "app_uid"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    .line 114
    :cond_5
    iget v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    .line 116
    sget-boolean v2, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Load details for pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_6
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-direct {p0, v2, v5}, Lcom/android/settings/notification/NotificationSettingsBase;->findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 118
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_7

    .line 119
    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to find package info: app_package was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    const-string/jumbo v4, ", "

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    const-string/jumbo v4, "app_uid"

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    const-string/jumbo v4, " was "

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    iget v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 122
    return-void

    .line 126
    :cond_7
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    .line 125
    invoke-static {v2, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "show_importance_slider"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mShowSlider:Z

    .line 87
    return-void

    :cond_8
    move v2, v4

    .line 127
    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 133
    iget v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->finish()V

    .line 136
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    .line 138
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings/notification/ImportanceSeekBarPreference;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings/notification/ImportanceSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPriority:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPriority:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSilent:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSilent:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 131
    :cond_5
    return-void
.end method

.method protected setVisible(Landroid/support/v7/preference/Preference;Z)V
    .locals 3
    .param p1, "p"    # Landroid/support/v7/preference/Preference;
    .param p2, "visible"    # Z

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 309
    .local v0, "isVisible":Z
    :goto_0
    if-ne v0, p2, :cond_1

    return-void

    .line 308
    .end local v0    # "isVisible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    .restart local v0    # "isVisible":Z
    :cond_1
    if-eqz p2, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 307
    :goto_1
    return-void

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method protected setupImportancePrefs(ZZIZ)V
    .locals 5
    .param p1, "notBlockable"    # Z
    .param p2, "notSilenceable"    # Z
    .param p3, "importance"    # I
    .param p4, "banned"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mShowSlider:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings/notification/ImportanceSeekBarPreference;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 179
    if-eqz p1, :cond_4

    .line 180
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 196
    :goto_0
    if-eqz p2, :cond_6

    .line 197
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSilent:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 212
    :goto_1
    if-eqz p4, :cond_8

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettingsBase;->updateDependents(I)V

    .line 158
    :goto_3
    return-void

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSilent:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings/notification/ImportanceSeekBarPreference;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v4}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 163
    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings/notification/ImportanceSeekBarPreference;

    .line 164
    if-eqz p1, :cond_2

    move v1, v2

    .line 163
    :goto_4
    invoke-virtual {v4, v1}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setMinimumProgress(I)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings/notification/ImportanceSeekBarPreference;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setMax(I)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings/notification/ImportanceSeekBarPreference;

    invoke-virtual {v1, p3}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setProgress(I)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings/notification/ImportanceSeekBarPreference;

    const/16 v4, -0x3e8

    if-ne p3, v4, :cond_3

    :goto_5
    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setAutoOn(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings/notification/ImportanceSeekBarPreference;

    new-instance v2, Lcom/android/settings/notification/NotificationSettingsBase$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/NotificationSettingsBase$1;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setCallback(Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;)V

    goto :goto_3

    :cond_2
    move v1, v3

    .line 164
    goto :goto_4

    :cond_3
    move v2, v3

    .line 167
    goto :goto_5

    .line 182
    :cond_4
    if-eqz p3, :cond_5

    move v0, p4

    .line 183
    :goto_6
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 184
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    new-instance v4, Lcom/android/settings/notification/NotificationSettingsBase$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/NotificationSettingsBase$2;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    invoke-virtual {v1, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 182
    :cond_5
    const/4 v0, 0x1

    .local v0, "blocked":Z
    goto :goto_6

    .line 199
    .end local v0    # "blocked":Z
    :cond_6
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSilent:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v4, 0x2

    if-ne p3, v4, :cond_7

    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSilent:Lcom/android/settingslib/RestrictedSwitchPreference;

    new-instance v2, Lcom/android/settings/notification/NotificationSettingsBase$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/NotificationSettingsBase$3;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    :cond_7
    move v2, v3

    .line 199
    goto :goto_7

    :cond_8
    move v3, p3

    .line 212
    goto :goto_2
.end method

.method protected setupPriorityPref(Z)V
    .locals 2
    .param p1, "priority"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPriority:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPriority:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPriority:Lcom/android/settingslib/RestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettingsBase$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettingsBase$4;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    return-void
.end method

.method protected setupVisOverridePref(I)V
    .locals 9
    .param p1, "sensitive"    # I

    .prologue
    const/16 v8, -0x3e8

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->clearRestrictedItems()V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getLockscreenNotificationsEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getLockscreenAllowPrivateNotifications()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 235
    const v6, 0x7f0e0b12

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const/16 v6, 0xc

    .line 239
    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 244
    .end local v3    # "summaryShowEntry":Ljava/lang/String;
    .end local v4    # "summaryShowEntryValue":Ljava/lang/String;
    :cond_0
    const v6, 0x7f0e0b13

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "summaryHideEntry":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    const/4 v6, 0x4

    .line 248
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 250
    const v6, 0x7f0e0b14

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 253
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 255
    if-ne p1, v8, :cond_1

    .line 256
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getGlobalVisibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 260
    :goto_0
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    const-string/jumbo v7, "%s"

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    new-instance v7, Lcom/android/settings/notification/NotificationSettingsBase$5;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/NotificationSettingsBase$5;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    return-void

    .line 258
    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected toastAndFinish()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0e06de

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 317
    return-void
.end method

.method abstract updateDependents(I)V
.end method
