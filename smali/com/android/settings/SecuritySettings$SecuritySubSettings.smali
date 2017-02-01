.class public Lcom/android/settings/SecuritySettings$SecuritySubSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecuritySubSettings"
.end annotation


# static fields
.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLockAfter:Lcom/android/settings/TimeoutListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

.field private mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

.field private mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings/ManagedLockPasswordProvider;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1013
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lock_after_timeout"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1014
    const-string/jumbo v1, "visiblepattern"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "power_button_instantly_locks"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1013
    sput-object v0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 1004
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1004
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 1063
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 1064
    .local v4, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 1065
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 1067
    :cond_0
    const/4 v4, 0x0

    .line 1069
    .local v4, "root":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1070
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1071
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v10

    .line 1069
    invoke-static {v6, v9, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I

    move-result v3

    .line 1072
    .local v3, "resid":I
    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->addPreferencesFromResource(I)V

    .line 1075
    const-string/jumbo v6, "lock_after_timeout"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/TimeoutListPreference;

    iput-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    .line 1076
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    if-eqz v6, :cond_1

    .line 1077
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->setupLockAfterPreference()V

    .line 1078
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->updateLockAfterPreferenceSummary()V

    .line 1082
    :cond_1
    const-string/jumbo v6, "visiblepattern"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    .line 1086
    const-string/jumbo v6, "power_button_instantly_locks"

    .line 1085
    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    .line 1087
    const-string/jumbo v6, "trust_agent"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 1088
    .local v5, "trustAgentPreference":Landroid/support/v7/preference/Preference;
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_2

    .line 1089
    if-eqz v5, :cond_2

    .line 1090
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1091
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    new-array v9, v8, [Ljava/lang/Object;

    .line 1093
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1092
    const v10, 0x7f0e0686

    .line 1091
    invoke-virtual {p0, v10, v9}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1096
    :cond_2
    const-string/jumbo v6, "owner_info_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/RestrictedPreference;

    iput-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    .line 1097
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v6, :cond_3

    .line 1098
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1099
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1100
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1117
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v6, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_7

    .line 1118
    sget-object v6, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 1119
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_4

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1117
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1102
    .end local v1    # "i":I
    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v12}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1103
    iget-object v9, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1104
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1105
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    .line 1106
    new-instance v7, Lcom/android/settings/SecuritySettings$SecuritySubSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings$1;-><init>(Lcom/android/settings/SecuritySettings$SecuritySubSettings;)V

    .line 1105
    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_6
    move v6, v8

    .line 1103
    goto :goto_2

    .line 1062
    .restart local v1    # "i":I
    :cond_7
    return-void
.end method

.method private static getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings/ManagedLockPasswordProvider;

    .prologue
    .line 1194
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1195
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1211
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1197
    :sswitch_0
    const v0, 0x7f080056

    return v0

    .line 1200
    :sswitch_1
    const v0, 0x7f08005a

    return v0

    .line 1204
    :sswitch_2
    const v0, 0x7f080053

    return v0

    .line 1206
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/settings/ManagedLockPasswordProvider;->getResIdForLockUnlockSubScreen()I

    move-result v0

    return v0

    .line 1208
    :cond_1
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    const v0, 0x7f08005c

    return v0

    .line 1195
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_3
    .end sparse-switch
.end method

.method private setupLockAfterPreference()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 1125
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1126
    const-string/jumbo v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    .line 1125
    invoke-static {v1, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1127
    .local v4, "currentTimeout":J
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1129
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1131
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1130
    invoke-static {v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1132
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1133
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 1132
    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v2

    .line 1135
    .local v2, "adminTimeout":J
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v10, "screen_off_timeout"

    invoke-static {v1, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1134
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v6, v1

    .line 1139
    .local v6, "displayTimeout":J
    const-wide/16 v10, 0x0

    sub-long v12, v2, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1140
    .local v8, "maxTimeout":J
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v1, v8, v9, v0}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1123
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v2    # "adminTimeout":J
    .end local v6    # "displayTimeout":J
    .end local v8    # "maxTimeout":J
    :cond_0
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 1146
    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1147
    const v10, 0x7f0e0c91

    invoke-virtual {p0, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1175
    .local v6, "summary":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10, v6}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1144
    return-void

    .line 1150
    .end local v6    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1151
    const-string/jumbo v11, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    .line 1150
    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1152
    .local v2, "currentTimeout":J
    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1153
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 1154
    .local v7, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1155
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v7

    if-ge v4, v10, :cond_2

    .line 1156
    aget-object v10, v7, v4

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1157
    .local v8, "timeout":J
    cmp-long v10, v2, v8

    if-ltz v10, :cond_1

    .line 1158
    move v0, v4

    .line 1155
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1162
    .end local v8    # "timeout":J
    :cond_2
    const-string/jumbo v10, "trust_agent"

    invoke-virtual {p0, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 1163
    .local v5, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 1164
    aget-object v10, v7, v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 1165
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 1166
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1165
    const v11, 0x7f0e0298

    invoke-virtual {p0, v11, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 1168
    .end local v6    # "summary":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 1169
    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 1168
    const v11, 0x7f0e0299

    invoke-virtual {p0, v11, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "summary":Ljava/lang/String;
    goto/16 :goto_0

    .line 1172
    .end local v6    # "summary":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0e0297

    invoke-virtual {p0, v11, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "summary":Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 1026
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1057
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1059
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    .line 1056
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 1031
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1032
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1033
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1034
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    .line 1030
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1216
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1217
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "power_button_instantly_locks"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1218
    iget-object v3, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    .line 1232
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1219
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "lock_after_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1220
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1222
    .local v2, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1223
    const-string/jumbo v4, "lock_screen_lock_after_timeout"

    .line 1222
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->setupLockAfterPreference()V

    .line 1228
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->updateLockAfterPreferenceSummary()V

    goto :goto_0

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "SecuritySettings"

    const-string/jumbo v4, "could not persist lockAfter timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1229
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v3, "visiblepattern"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1230
    iget-object v3, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1039
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1041
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    .line 1043
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1045
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    .line 1044
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1049
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    .line 1048
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1052
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->updateOwnerInfo()V

    .line 1038
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    .line 1182
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v1

    .line 1181
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1185
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 1184
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1186
    :cond_2
    const v0, 0x7f0e029e

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
