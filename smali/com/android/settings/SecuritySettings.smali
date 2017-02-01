.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/GearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;,
        Lcom/android/settings/SecuritySettings$SecuritySubSettings;,
        Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsAdmin:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mProfileChallengeUserId:I

.field private mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

.field private mShowPassword:Landroid/support/v14/preference/SwitchPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

.field private mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings/ManagedLockPasswordProvider;
    .param p3, "userId"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->unifyUncompliantLocks()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateUnificationPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    sput-object v0, Lcom/android/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 120
    const-string/jumbo v1, "show_password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_install_applications"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "unification"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "visiblepattern_profile"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 119
    sput-object v0, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 127
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 819
    new-instance v0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;-><init>(Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;)V

    .line 818
    sput-object v0, Lcom/android/settings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addTrustAgentSettings(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 9
    .param p1, "securityCategory"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 435
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 437
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/android/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 438
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 439
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 441
    .local v0, "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v5, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 442
    .local v5, "trustAgentPreference":Lcom/android/settingslib/RestrictedPreference;
    const-string/jumbo v6, "trust_agent"

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 443
    iget-object v6, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v6, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 448
    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {v5, v4}, Lcom/android/settingslib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    .line 451
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 453
    iget-object v6, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 454
    invoke-virtual {v5}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v2, :cond_1

    .line 438
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 455
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 456
    const v6, 0x7f0e0352

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    goto :goto_1

    .line 434
    .end local v0    # "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "trustAgentPreference":Lcom/android/settingslib/RestrictedPreference;
    :cond_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 28

    .prologue
    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v16

    .line 230
    .local v16, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v16, :cond_0

    .line 231
    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 233
    :cond_0
    const v24, 0x7f080049

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v16

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v26, v0

    sget v27, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 237
    invoke-static/range {v24 .. v27}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v15

    .line 239
    .local v15, "resid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 242
    const-string/jumbo v24, "unlock_set_or_change"

    sget v25, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v24, v0

    sget v25, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-static/range {v24 .. v25}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v24, v0

    const/16 v25, -0x2710

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v24

    .line 245
    if-eqz v24, :cond_1

    .line 247
    const v24, 0x7f08005b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 248
    const v24, 0x7f08005e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v26, v0

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v27, v0

    .line 249
    invoke-static/range {v24 .. v27}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v14

    .line 252
    .local v14, "profileResid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v24

    if-nez v24, :cond_c

    .line 256
    const-string/jumbo v24, "unlock_set_or_change_profile"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    .line 257
    .local v11, "lockPreference":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v24

    .line 258
    const v25, 0x7f0e0695

    .line 257
    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 259
    .local v19, "summary":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 263
    const-string/jumbo v24, "unlock_set_or_change"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    .line 272
    .end local v11    # "lockPreference":Landroid/support/v7/preference/Preference;
    .end local v14    # "profileResid":I
    .end local v19    # "summary":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v24, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    .line 273
    .local v22, "unlockSetOrChange":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/settings/GearPreference;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 274
    check-cast v22, Lcom/android/settings/GearPreference;

    .end local v22    # "unlockSetOrChange":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/GearPreference;->setOnGearClickListener(Lcom/android/settings/GearPreference$OnGearClickListener;)V

    .line 278
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->mIsAdmin:Z

    .line 280
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsAdmin:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 281
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 283
    const v24, 0x7f08004b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 292
    :cond_3
    :goto_1
    const-string/jumbo v24, "security_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    .line 291
    check-cast v17, Landroid/support/v7/preference/PreferenceGroup;

    .line 293
    .local v17, "securityCategory":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v17, :cond_4

    .line 294
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V

    .line 295
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->addTrustAgentSettings(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 299
    :cond_4
    const-string/jumbo v24, "visiblepattern_profile"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/support/v14/preference/SwitchPreference;

    .line 298
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    .line 300
    const-string/jumbo v24, "unification"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    .line 303
    const v24, 0x7f080050

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 306
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    .line 308
    .local v20, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string/jumbo v25, "carrier_config"

    invoke-virtual/range {v24 .. v25}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 307
    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 309
    .local v5, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 310
    .local v4, "b":Landroid/os/PersistableBundle;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsAdmin:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isSimIccReady()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 311
    const-string/jumbo v24, "hide_sim_lock_settings_bool"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    .line 310
    if-eqz v24, :cond_e

    .line 312
    :cond_5
    const-string/jumbo v24, "sim_lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 317
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 318
    const-string/jumbo v25, "lock_to_app_enabled"

    const/16 v26, 0x0

    .line 317
    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_6

    .line 319
    const-string/jumbo v24, "screen_pinning_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0e0b8d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 319
    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    :cond_6
    const-string/jumbo v24, "show_password"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    .line 325
    const-string/jumbo v24, "credentials_reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string/jumbo v25, "user"

    invoke-virtual/range {v24 .. v25}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    .line 329
    .local v21, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    .line 332
    const-string/jumbo v25, "no_config_credentials"

    sget v26, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 331
    invoke-static/range {v24 .. v26}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v24

    if-nez v24, :cond_10

    .line 334
    const-string/jumbo v24, "user_credentials"

    .line 333
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/android/settingslib/RestrictedPreference;

    .line 336
    .local v23, "userCredentials":Lcom/android/settingslib/RestrictedPreference;
    const-string/jumbo v24, "no_config_credentials"

    .line 335
    invoke-virtual/range {v23 .. v24}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 338
    const-string/jumbo v24, "credential_storage_type"

    .line 337
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/RestrictedPreference;

    .line 340
    .local v6, "credentialStorageType":Lcom/android/settingslib/RestrictedPreference;
    const-string/jumbo v24, "no_config_credentials"

    .line 339
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 342
    const-string/jumbo v24, "credentials_install"

    .line 341
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/RestrictedPreference;

    .line 344
    .local v10, "installCredentials":Lcom/android/settingslib/RestrictedPreference;
    const-string/jumbo v24, "no_config_credentials"

    .line 343
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    move-object/from16 v24, v0

    .line 346
    const-string/jumbo v25, "no_config_credentials"

    .line 345
    invoke-virtual/range {v24 .. v25}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v24

    if-eqz v24, :cond_f

    const v18, 0x7f0e08b2

    .line 351
    .local v18, "storageSummaryRes":I
    :goto_3
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 364
    .end local v6    # "credentialStorageType":Lcom/android/settingslib/RestrictedPreference;
    .end local v10    # "installCredentials":Lcom/android/settingslib/RestrictedPreference;
    .end local v18    # "storageSummaryRes":I
    .end local v23    # "userCredentials":Lcom/android/settingslib/RestrictedPreference;
    :goto_4
    const-string/jumbo v24, "device_admin_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 363
    check-cast v8, Landroid/support/v7/preference/PreferenceGroup;

    .line 366
    .local v8, "deviceAdminCategory":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v24, "toggle_install_applications"

    .line 365
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settingslib/RestrictedSwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

    move-object/from16 v25, v0

    sget v24, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v24

    if-eqz v24, :cond_11

    const/16 v24, 0x0

    :goto_5
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    .line 372
    const-string/jumbo v25, "no_install_unknown_sources"

    sget v26, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 371
    invoke-static/range {v24 .. v26}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v24

    if-nez v24, :cond_7

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    .line 374
    const-string/jumbo v25, "no_install_apps"

    sget v26, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 373
    invoke-static/range {v24 .. v26}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v24

    .line 371
    if-eqz v24, :cond_8

    .line 375
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 377
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

    move-object/from16 v24, v0

    .line 379
    const-string/jumbo v25, "no_install_unknown_sources"

    .line 378
    invoke-virtual/range {v24 .. v25}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v24

    if-nez v24, :cond_9

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

    move-object/from16 v24, v0

    .line 382
    const-string/jumbo v25, "no_install_apps"

    .line 381
    invoke-virtual/range {v24 .. v25}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 388
    :cond_9
    const-string/jumbo v24, "advanced_security"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    .line 389
    .local v3, "advancedCategory":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v3, :cond_a

    .line 390
    const-string/jumbo v24, "manage_trust_agents"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    .line 391
    .local v12, "manageAgents":Landroid/support/v7/preference/Preference;
    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    sget v25, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 400
    .end local v12    # "manageAgents":Landroid/support/v7/preference/Preference;
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v24

    .line 401
    const-class v25, Lcom/android/settings/SecuritySettings;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    const/16 v27, 0x1

    .line 400
    invoke-virtual/range {v24 .. v27}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 403
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    sget-object v24, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v9, v0, :cond_13

    .line 404
    sget-object v24, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v24, v24, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    .line 405
    .local v13, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 403
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 267
    .end local v3    # "advancedCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v4    # "b":Landroid/os/PersistableBundle;
    .end local v5    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v8    # "deviceAdminCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v9    # "i":I
    .end local v13    # "pref":Landroid/support/v7/preference/Preference;
    .end local v17    # "securityCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v20    # "tm":Landroid/telephony/TelephonyManager;
    .end local v21    # "um":Landroid/os/UserManager;
    .restart local v14    # "profileResid":I
    :cond_c
    const-string/jumbo v24, "unlock_set_or_change_profile"

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v25, v0

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 286
    .end local v14    # "profileResid":I
    :cond_d
    const v24, 0x7f08005d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 315
    .restart local v4    # "b":Landroid/os/PersistableBundle;
    .restart local v5    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v17    # "securityCategory":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v20    # "tm":Landroid/telephony/TelephonyManager;
    :cond_e
    const-string/jumbo v24, "sim_lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isSimReady()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 350
    .restart local v6    # "credentialStorageType":Lcom/android/settingslib/RestrictedPreference;
    .restart local v10    # "installCredentials":Lcom/android/settingslib/RestrictedPreference;
    .restart local v21    # "um":Landroid/os/UserManager;
    .restart local v23    # "userCredentials":Lcom/android/settingslib/RestrictedPreference;
    :cond_f
    const v18, 0x7f0e08b3

    goto/16 :goto_3

    .line 354
    .end local v6    # "credentialStorageType":Lcom/android/settingslib/RestrictedPreference;
    .end local v10    # "installCredentials":Lcom/android/settingslib/RestrictedPreference;
    .end local v23    # "userCredentials":Lcom/android/settingslib/RestrictedPreference;
    :cond_10
    const-string/jumbo v24, "credentials_management"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 353
    check-cast v7, Landroid/support/v7/preference/PreferenceGroup;

    .line 355
    .local v7, "credentialsManager":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v24, "credentials_reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 356
    const-string/jumbo v24, "credentials_install"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 357
    const-string/jumbo v24, "credential_storage_type"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 358
    const-string/jumbo v24, "user_credentials"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_4

    .line 370
    .end local v7    # "credentialsManager":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v8    # "deviceAdminCategory":Landroid/support/v7/preference/PreferenceGroup;
    :cond_11
    const/16 v24, 0x1

    goto/16 :goto_5

    .line 392
    .restart local v3    # "advancedCategory":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v12    # "manageAgents":Landroid/support/v7/preference/Preference;
    :cond_12
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 393
    const v24, 0x7f0e0352

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto/16 :goto_6

    .line 407
    .end local v12    # "manageAgents":Landroid/support/v7/preference/Preference;
    .restart local v9    # "i":I
    :cond_13
    return-object v16
.end method

.method private disableIfPasswordQualityManaged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 415
    invoke-static {v2, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 417
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    .line 418
    const/high16 v3, 0x80000

    .line 417
    if-ne v2, v3, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    .line 421
    .local v1, "pref":Lcom/android/settingslib/RestrictedPreference;
    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 414
    .end local v1    # "pref":Lcom/android/settingslib/RestrictedPreference;
    :cond_0
    return-void
.end method

.method private static getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 500
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 501
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v8, Lcom/android/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 503
    const/16 v9, 0x80

    .line 502
    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 504
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v8, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 507
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x10

    .line 506
    invoke-static {p0, v9, v8}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 509
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-object v6

    .line 510
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 511
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 512
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_3

    .line 510
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 513
    :cond_3
    invoke-static {v4, v3}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 515
    invoke-static {v3, v4}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v7

    .line 516
    .local v7, "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v8, v7, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    .line 518
    invoke-static {v4}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    .line 517
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 519
    iget-object v8, v7, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 516
    if-nez v8, :cond_2

    .line 520
    if-eqz v0, :cond_4

    .line 521
    invoke-static {v4}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    .line 520
    invoke-virtual {p2, v10, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_4

    .line 522
    iput-object v0, v7, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 524
    :cond_4
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings/ManagedLockPasswordProvider;
    .param p3, "userId"    # I

    .prologue
    .line 187
    sget v2, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    if-ne p3, v2, :cond_0

    const/4 v0, 0x1

    .line 188
    .local v0, "isMyUser":Z
    :goto_0
    const/4 v1, 0x0

    .line 189
    .local v1, "resid":I
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 190
    if-nez v0, :cond_1

    .line 191
    const v1, 0x7f08004f

    .line 219
    :goto_1
    return v1

    .line 187
    .end local v0    # "isMyUser":Z
    .end local v1    # "resid":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isMyUser":Z
    goto :goto_0

    .line 192
    .restart local v1    # "resid":I
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    const v1, 0x7f08004e

    goto :goto_1

    .line 195
    :cond_2
    const v1, 0x7f08004a

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 200
    :sswitch_0
    if-eqz v0, :cond_4

    const v1, 0x7f080054

    goto :goto_1

    .line 201
    :cond_4
    const v1, 0x7f080055

    goto :goto_1

    .line 205
    :sswitch_1
    if-eqz v0, :cond_5

    const v1, 0x7f080058

    goto :goto_1

    .line 206
    :cond_5
    const v1, 0x7f080059

    goto :goto_1

    .line 211
    :sswitch_2
    if-eqz v0, :cond_6

    const v1, 0x7f080051

    goto :goto_1

    .line 212
    :cond_6
    const v1, 0x7f080052

    goto :goto_1

    .line 215
    :sswitch_3
    if-eqz v0, :cond_7

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->getResIdForLockUnlockScreen(Z)I

    move-result v1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 198
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

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 533
    const-string/jumbo v2, "install_non_market_apps"

    .line 532
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPasswordVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 616
    const/4 v0, 0x1

    .line 617
    .local v0, "defaultValue":I
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 618
    const v3, 0x7f0c0045

    .line 617
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    const/4 v0, 0x0

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 622
    const-string/jumbo v3, "show_password"

    .line 621
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isSimIccReady()Z
    .locals 5

    .prologue
    .line 464
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 466
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 468
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 469
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 470
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    const/4 v4, 0x1

    return v4

    .line 476
    .end local v0    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private isSimReady()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "simState":I
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 486
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 487
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 488
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 489
    if-eq v0, v7, :cond_0

    .line 490
    if-eqz v0, :cond_0

    .line 491
    return v7

    .line 495
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return v6
.end method

.method private launchConfirmDeviceLockForUnification()V
    .locals 5

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 700
    const v3, 0x7f0e0301

    .line 699
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 704
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    sget v2, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    const/16 v3, 0x80

    const/4 v4, 0x1

    .line 703
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 705
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->launchConfirmProfileLockForUnification()V

    .line 698
    :cond_0
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 5

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 711
    const v3, 0x7f0e0302

    .line 710
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 715
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    iget v2, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    .line 714
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->unifyLocks()V

    .line 717
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 709
    :cond_0
    return-void
.end method

.method private maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V
    .locals 2
    .param p1, "securityCategory"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "userId"    # I

    .prologue
    .line 428
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 427
    invoke-static {v1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintPreferenceForUser(Landroid/content/Context;I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 429
    .local v0, "fingerprintPreference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 425
    :cond_0
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 538
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    return-void

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "install_non_market_apps"

    .line 543
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 542
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    return-void

    .line 543
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unifyLocks()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 723
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 724
    .local v1, "profileQuality":I
    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    .line 725
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 726
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 727
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v5, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 725
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 733
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 734
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 733
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 736
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    .line 737
    .local v0, "profilePatternVisibility":Z
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 738
    iput-object v6, p0, Lcom/android/settings/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 739
    iput-object v6, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 721
    return-void

    .line 729
    .end local v0    # "profilePatternVisibility":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 730
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 731
    sget v5, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 729
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private unifyUncompliantLocks()V
    .locals 6

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 744
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 743
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 745
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 746
    const v3, 0x7f0e02fb

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 745
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 742
    return-void
.end method

.method private ununifyLocks()V
    .locals 6

    .prologue
    .line 750
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 751
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 754
    const v3, 0x7f0e02fc

    .line 755
    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    .line 752
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 749
    return-void
.end method

.method private updateUnificationPreference()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 627
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 628
    iget v2, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 627
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 625
    :cond_0
    return-void

    .line 627
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 548
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 550
    const v1, 0x1080027

    .line 548
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e069f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 552
    const v1, 0x1040013

    .line 548
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 553
    const v1, 0x1040009

    .line 548
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 546
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 812
    const v0, 0x7f0e0a59

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 671
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 672
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 675
    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 677
    :cond_0
    return-void

    .line 678
    :cond_1
    const/16 v0, 0x80

    if-ne p1, v0, :cond_2

    .line 679
    if-ne p2, v1, :cond_2

    .line 681
    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 682
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->launchConfirmProfileLockForUnification()V

    .line 683
    return-void

    .line 684
    :cond_2
    const/16 v0, 0x81

    if-ne p1, v0, :cond_3

    .line 685
    if-ne p2, v1, :cond_3

    .line 687
    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 688
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->unifyLocks()V

    .line 689
    return-void

    .line 690
    :cond_3
    const/16 v0, 0x82

    if-ne p1, v0, :cond_4

    .line 691
    if-ne p2, v1, :cond_4

    .line 692
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ununifyLocks()V

    .line 693
    return-void

    .line 695
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 670
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 559
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 560
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 561
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 562
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 558
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 560
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 168
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-static {v0, v1}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    .line 172
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 176
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 178
    if-eqz p1, :cond_0

    .line 179
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 178
    if-eqz v0, :cond_0

    .line 180
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 163
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 578
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 576
    :cond_0
    return-void
.end method

.method public onGearClick(Lcom/android/settings/GearPreference;)V
    .locals 6
    .param p1, "p"    # Lcom/android/settings/GearPreference;

    .prologue
    const/4 v3, 0x0

    .line 570
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {p1}, Lcom/android/settings/GearPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const-class v0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 569
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 760
    const/4 v5, 0x1

    .line 761
    .local v5, "result":Z
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    .line 763
    .local v4, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v7, "visiblepattern_profile"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 765
    iget v9, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 764
    invoke-static {v7, v8, v9}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 766
    return v0

    .line 768
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget v8, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 807
    :cond_1
    :goto_0
    return v5

    .line 769
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v7, "unification"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 770
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 771
    iget v10, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 770
    invoke-static {v7, v9, v10}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 772
    return v0

    .line 774
    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 776
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v7

    .line 777
    const/high16 v8, 0x10000

    .line 776
    if-lt v7, v8, :cond_4

    .line 778
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 779
    iget v8, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 778
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v0

    .line 781
    .local v0, "compliantForDevice":Z
    :cond_4
    invoke-static {v0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->newIntance(Z)Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;

    move-result-object v1

    .line 782
    .local v1, "dialog":Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string/jumbo v8, "unification_dialog"

    invoke-virtual {v1, v7, v8}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 784
    .end local v0    # "compliantForDevice":Z
    .end local v1    # "dialog":Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 785
    const v9, 0x7f0e0301

    .line 784
    invoke-virtual {v7, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 787
    .local v6, "title":Ljava/lang/String;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 789
    .local v2, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    sget v7, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    const/16 v9, 0x82

    .line 788
    invoke-virtual {v2, v9, v6, v8, v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v7

    if-nez v7, :cond_1

    .line 790
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ununifyLocks()V

    goto :goto_0

    .line 793
    .end local v2    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    .end local v6    # "title":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v7, "show_password"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_password"

    move-object v7, p2

    .line 795
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v8

    .line 794
    :cond_7
    invoke-static {v9, v10, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 796
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto/16 :goto_0

    .line 797
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v7, "toggle_install_applications"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 798
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 799
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v7, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 800
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    .line 802
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 804
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v5, 0x0

    .line 634
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 635
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 637
    const v3, 0x7f0e02fb

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    .line 636
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 663
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 638
    :cond_1
    const-string/jumbo v0, "unlock_set_or_change_profile"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 640
    iget v2, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 639
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    const/4 v0, 0x0

    return v0

    .line 643
    :cond_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 644
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 645
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 646
    const v3, 0x7f0e02fc

    .line 647
    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    .line 645
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 648
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v0, "trust_agent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 650
    new-instance v7, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 651
    .local v7, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 653
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x7e

    .line 652
    invoke-virtual {v7, v1, v0}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    .line 654
    .local v6, "confirmationLaunched":Z
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 657
    iput-object v5, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 661
    .end local v6    # "confirmationLaunched":Z
    .end local v7    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 593
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 597
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 599
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 601
    iget v2, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 600
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 604
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateUnificationPreference()V

    .line 606
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isPasswordVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 592
    :cond_2
    :goto_0
    return-void

    .line 611
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 585
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 587
    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 584
    :cond_0
    return-void
.end method
