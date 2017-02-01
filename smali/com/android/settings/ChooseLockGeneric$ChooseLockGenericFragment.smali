.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# instance fields
.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForChangeCredRequiredForBoot:Z

.field protected mForFingerprint:Z

.field private mHasChallenge:Z

.field private mHideDrawer:Z

.field private mIsSetNewPassword:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mPasswordConfirmed:Z

.field private mRequirePassword:Z

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)V
    .locals 0
    .param p1, "parentUserId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 90
    return-void
.end method

.method private getIntentForUnlockMethod(IZ)Landroid/content/Intent;
    .locals 12
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 685
    const/4 v11, 0x0

    .line 686
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 687
    .local v1, "context":Landroid/content/Context;
    const/high16 v0, 0x80000

    if-lt p1, v0, :cond_2

    .line 688
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 711
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 712
    const-string/jumbo v0, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 714
    :cond_1
    return-object v11

    .line 689
    .restart local v11    # "intent":Landroid/content/Intent;
    :cond_2
    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_5

    .line 690
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v5, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v3

    .line 691
    .local v3, "minLength":I
    const/4 v0, 0x4

    if-ge v3, v0, :cond_3

    .line 692
    const/4 v3, 0x4

    .line 694
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 695
    .local v4, "maxLength":I
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_4

    .line 697
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    iget v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v0, p0

    move v2, p1

    .line 696
    invoke-virtual/range {v0 .. v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 700
    .local v11, "intent":Landroid/content/Intent;
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v0, p0

    move v2, p1

    .line 699
    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 702
    .end local v3    # "minLength":I
    .end local v4    # "maxLength":I
    .local v11, "intent":Landroid/content/Intent;
    :cond_5
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 703
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_6

    .line 704
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 705
    iget-wide v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    iget v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v5, p0

    move-object v6, v1

    .line 704
    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 707
    .local v11, "intent":Landroid/content/Intent;
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 708
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 707
    invoke-virtual {p0, v1, v0, v2, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 446
    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 445
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 447
    .local v0, "credentialOwner":I
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    const-string/jumbo v1, "unlock_set_off"

    return-object v1

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 465
    const/4 v1, 0x0

    return-object v1

    .line 452
    :sswitch_0
    const-string/jumbo v1, "unlock_set_pattern"

    return-object v1

    .line 455
    :sswitch_1
    const-string/jumbo v1, "unlock_set_pin"

    return-object v1

    .line 459
    :sswitch_2
    const-string/jumbo v1, "unlock_set_password"

    return-object v1

    .line 461
    :sswitch_3
    const-string/jumbo v1, "unlock_set_managed"

    return-object v1

    .line 463
    :sswitch_4
    const-string/jumbo v1, "unlock_set_none"

    return-object v1

    .line 450
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_3
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 4

    .prologue
    .line 797
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    .line 798
    .local v0, "hasFingerprints":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    .line 799
    .local v1, "isProfile":Z
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 837
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 838
    const v2, 0x7f0e0330

    return v2

    .line 801
    :sswitch_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 802
    const v2, 0x7f0e032a

    return v2

    .line 804
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    .line 806
    :cond_1
    if-eqz v1, :cond_3

    .line 807
    const v2, 0x7f0e0329

    return v2

    .line 805
    :cond_2
    const v2, 0x7f0e0322

    return v2

    .line 809
    :cond_3
    const v2, 0x7f0e0321

    return v2

    .line 813
    :sswitch_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 814
    const v2, 0x7f0e032c

    return v2

    .line 815
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_6

    .line 817
    :cond_5
    if-eqz v1, :cond_7

    .line 818
    const v2, 0x7f0e032b

    return v2

    .line 816
    :cond_6
    const v2, 0x7f0e0324

    return v2

    .line 820
    :cond_7
    const v2, 0x7f0e0323

    return v2

    .line 826
    :sswitch_2
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 827
    const v2, 0x7f0e032e

    return v2

    .line 829
    :cond_8
    if-eqz v0, :cond_9

    if-eqz v1, :cond_a

    .line 831
    :cond_9
    if-eqz v1, :cond_b

    .line 832
    const v2, 0x7f0e032d

    return v2

    .line 830
    :cond_a
    const v2, 0x7f0e0326

    return v2

    .line 834
    :cond_b
    const v2, 0x7f0e0325

    return v2

    .line 840
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v1, :cond_e

    .line 842
    :cond_d
    if-eqz v1, :cond_f

    .line 843
    const v2, 0x7f0e032f

    return v2

    .line 841
    :cond_e
    const v2, 0x7f0e0328

    return v2

    .line 845
    :cond_f
    const v2, 0x7f0e0327

    return v2

    .line 799
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 3

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    .line 792
    .local v0, "isProfile":Z
    if-eqz v0, :cond_0

    const v1, 0x7f0e0320

    :goto_0
    return v1

    .line 793
    :cond_0
    const v1, 0x7f0e031f

    goto :goto_0
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    .line 851
    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 851
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 9
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 279
    const-string/jumbo v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 280
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 281
    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 282
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v7

    .line 280
    if-eqz v7, :cond_0

    .line 283
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 310
    :cond_0
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v7, :cond_4

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 313
    return-void

    .line 284
    :cond_1
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v7

    if-nez v7, :cond_0

    .line 285
    iput p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 286
    iput-boolean p2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v5

    .line 291
    .local v5, "unlockMethodIntent":Landroid/content/Intent;
    const-string/jumbo v7, "for_cred_req_boot"

    .line 292
    iget-boolean v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 290
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 297
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 298
    .local v0, "accEn":Z
    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v4

    .line 299
    .local v4, "required":Z
    invoke-virtual {p0, v1, p1, v4, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 301
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "for_fingerprint"

    .line 302
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 301
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    const-string/jumbo v6, ":settings:hide_drawer"

    iget-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v6, :cond_3

    .line 307
    const/16 v6, 0x67

    .line 304
    :goto_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 278
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "required":Z
    .end local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 298
    .restart local v0    # "accEn":Z
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 308
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "required":Z
    :cond_3
    const/16 v6, 0x65

    goto :goto_1

    .line 315
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "required":Z
    .end local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :cond_4
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_2
.end method

.method private removeAllFingerprintForUserAndFinish(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 718
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 719
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 720
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 722
    move v6, p1

    .line 723
    .local v6, "groupId":I
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 724
    .local v0, "finger":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 725
    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    .line 724
    invoke-virtual {v1, v0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 717
    .end local v0    # "finger":Landroid/hardware/fingerprint/Fingerprint;
    .end local v6    # "groupId":I
    :goto_0
    return-void

    .line 745
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method private removeManagedProfileFingerprintsAndFinishIfNecessary(I)V
    .locals 8
    .param p1, "parentUserId"    # I

    .prologue
    .line 757
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 759
    .local v4, "um":Landroid/os/UserManager;
    const/4 v0, 0x0

    .line 760
    .local v0, "hasChildProfile":Z
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_2

    .line 762
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 763
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 764
    .local v3, "profilesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 765
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 766
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 767
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 766
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 764
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    :cond_1
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 769
    const/4 v0, 0x1

    .line 774
    .end local v1    # "i":I
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "profilesSize":I
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    if-nez v0, :cond_3

    .line 775
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 756
    :cond_3
    return-void
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 856
    const v0, 0x16058

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 858
    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 879
    :goto_0
    return v1

    .line 861
    :cond_0
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    invoke-virtual {p0, v3, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 864
    :cond_1
    const-string/jumbo v0, "unlock_set_managed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 865
    const/high16 v0, 0x80000

    invoke-direct {p0, v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 866
    :cond_2
    const-string/jumbo v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 868
    const/high16 v0, 0x10000

    .line 867
    invoke-direct {p0, v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 869
    :cond_3
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 871
    const/high16 v0, 0x20000

    .line 870
    invoke-direct {p0, v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 872
    :cond_4
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 874
    const/high16 v0, 0x40000

    .line 873
    invoke-direct {p0, v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 876
    :cond_5
    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Encountered unknown unlock method to set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return v3
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v2

    .line 884
    .local v2, "title":I
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 886
    .local v1, "message":I
    invoke-static {v2, v1, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;)Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 888
    .local v0, "dialog":Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "frp_warning_dialog"

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method private updateCurrentPreference()V
    .locals 3

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "currentKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 439
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 440
    const v2, 0x7f0e0311

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 436
    :cond_0
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 7

    .prologue
    .line 572
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 573
    return-void

    .line 576
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 577
    return-void

    .line 580
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    .line 581
    const/4 v6, -0x1

    .line 580
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 582
    return-void

    .line 585
    :cond_2
    const v5, 0x7f0e07dc

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 588
    .local v3, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 589
    .local v2, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_6

    .line 590
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 591
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "unlock_set_pattern"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 596
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    :cond_5
    const-string/jumbo v6, "unlock_set_pin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "unlock_set_password"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "unlock_set_managed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 569
    .end local v1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_6
    return-void
.end method

.method private updatePreferenceText()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 409
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v6, :cond_1

    .line 410
    const/4 v6, 0x3

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v6, "unlock_set_pattern"

    aput-object v6, v1, v5

    .line 411
    const-string/jumbo v6, "unlock_set_pin"

    const/4 v7, 0x1

    aput-object v6, v1, v7

    .line 412
    const-string/jumbo v6, "unlock_set_password"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 413
    .local v1, "key":[Ljava/lang/String;
    const v6, 0x7f0e0312

    .line 414
    const v7, 0x7f0e0313

    .line 415
    const v8, 0x7f0e0314

    .line 413
    filled-new-array {v6, v7, v8}, [I

    move-result-object v4

    .line 416
    .local v4, "res":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_1

    .line 417
    aget-object v6, v1, v0

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 418
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v3, :cond_0

    .line 419
    aget v6, v4, v0

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 416
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "i":I
    .end local v1    # "key":[Ljava/lang/String;
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    .end local v4    # "res":[I
    :cond_1
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v6}, Lcom/android/settings/ManagedLockPasswordProvider;->isSettingManagedPasswordSupported()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 425
    const-string/jumbo v6, "unlock_set_managed"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 426
    .local v2, "managed":Landroid/support/v7/preference/Preference;
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    iget-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v6, v7}, Lcom/android/settings/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 431
    .end local v2    # "managed":Landroid/support/v7/preference/Preference;
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v6, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    :cond_2
    if-nez v5, :cond_3

    .line 432
    const-string/jumbo v5, "unlock_skip_fingerprint"

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    .line 408
    :cond_3
    return-void

    .line 428
    :cond_4
    const-string/jumbo v6, "unlock_set_managed"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 377
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 378
    .local v3, "quality":I
    if-ne v3, v5, :cond_1

    .line 380
    const-string/jumbo v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 381
    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v3

    .line 383
    const-string/jumbo v4, "hide_disabled_prefs"

    .line 382
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 384
    .local v0, "hideDisabledPrefs":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 385
    .local v2, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 389
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 390
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    .line 391
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    .line 392
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 375
    .end local v0    # "hideDisabledPrefs":Z
    .end local v2    # "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(I)I
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 471
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 477
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 478
    move p1, v0

    .line 480
    :cond_0
    return p1
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 241
    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setHeaderView(I)V

    .line 242
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v0

    const v1, 0x7f1100aa

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    const v1, 0x7f0e0316

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    :cond_0
    return-void
.end method

.method protected addPreferences()V
    .locals 2

    .prologue
    const v1, 0x7f11000b

    .line 399
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 402
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 403
    const-string/jumbo v0, "unlock_skip_fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 404
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f11000c

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 405
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f11000d

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 398
    return-void
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "hideDisabledPrefs"    # Z

    .prologue
    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 491
    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 12
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 505
    .local v4, "entries":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 507
    .local v0, "adminEnforcedQuality":I
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 506
    invoke-static {v9, v10}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 508
    .local v3, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_19

    .line 509
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 510
    .local v7, "pref":Landroid/support/v7/preference/Preference;
    instance-of v9, v7, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v9, :cond_3

    .line 511
    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "key":Ljava/lang/String;
    const/4 v2, 0x1

    .line 513
    .local v2, "enabled":Z
    const/4 v8, 0x1

    .line 514
    .local v8, "visible":Z
    const/4 v1, 0x0

    .line 515
    .local v1, "disabledByAdmin":Z
    const-string/jumbo v9, "unlock_set_off"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 516
    if-gtz p1, :cond_4

    const/4 v2, 0x1

    .line 517
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0013

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 518
    const/4 v2, 0x0

    .line 519
    const/4 v8, 0x0

    .line 521
    :cond_0
    if-lez v0, :cond_5

    const/4 v1, 0x1

    .line 549
    .end local v2    # "enabled":Z
    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    .line 550
    move v8, v2

    .line 552
    .end local v8    # "visible":Z
    :cond_2
    if-nez v8, :cond_16

    .line 553
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 508
    .end local v1    # "disabledByAdmin":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 516
    .restart local v1    # "disabledByAdmin":Z
    .restart local v2    # "enabled":Z
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v8    # "visible":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 521
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 523
    :cond_6
    const-string/jumbo v9, "unlock_set_none"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 524
    iget v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 526
    const/4 v8, 0x0

    .line 528
    :cond_7
    if-gtz p1, :cond_8

    const/4 v2, 0x1

    .line 529
    :goto_4
    if-lez v0, :cond_9

    const/4 v1, 0x1

    goto :goto_2

    .line 528
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 529
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 531
    :cond_a
    const-string/jumbo v9, "unlock_set_pattern"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 532
    const/high16 v9, 0x10000

    if-gt p1, v9, :cond_b

    const/4 v2, 0x1

    .line 534
    :goto_5
    const/high16 v9, 0x10000

    .line 533
    if-le v0, v9, :cond_c

    const/4 v1, 0x1

    goto :goto_2

    .line 532
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 533
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 535
    :cond_d
    const-string/jumbo v9, "unlock_set_pin"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 536
    const/high16 v9, 0x30000

    if-gt p1, v9, :cond_e

    const/4 v2, 0x1

    .line 538
    :goto_6
    const/high16 v9, 0x30000

    .line 537
    if-le v0, v9, :cond_f

    const/4 v1, 0x1

    goto :goto_2

    .line 536
    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    .line 537
    :cond_f
    const/4 v1, 0x0

    goto :goto_2

    .line 539
    :cond_10
    const-string/jumbo v9, "unlock_set_password"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 540
    const/high16 v9, 0x60000

    if-gt p1, v9, :cond_11

    const/4 v2, 0x1

    .line 542
    :goto_7
    const/high16 v9, 0x60000

    .line 541
    if-le v0, v9, :cond_12

    const/4 v1, 0x1

    goto :goto_2

    .line 540
    :cond_11
    const/4 v2, 0x0

    goto :goto_7

    .line 541
    :cond_12
    const/4 v1, 0x0

    goto :goto_2

    .line 543
    :cond_13
    const-string/jumbo v9, "unlock_set_managed"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 544
    const/high16 v9, 0x80000

    if-gt p1, v9, :cond_14

    .line 545
    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v9}, Lcom/android/settings/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v2

    .line 547
    .end local v2    # "enabled":Z
    :goto_8
    const/high16 v9, 0x80000

    .line 546
    if-le v0, v9, :cond_15

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 544
    .restart local v2    # "enabled":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_8

    .line 546
    .end local v2    # "enabled":Z
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 554
    .end local v8    # "visible":Z
    :cond_16
    if-eqz v1, :cond_17

    if-eqz v3, :cond_17

    .line 555
    check-cast v7, Lcom/android/settingslib/RestrictedPreference;

    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v7, v3}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_3

    .line 556
    .restart local v7    # "pref":Landroid/support/v7/preference/Preference;
    :cond_17
    if-nez v2, :cond_18

    move-object v9, v7

    .line 559
    check-cast v9, Lcom/android/settingslib/RestrictedPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 560
    const v9, 0x7f0e0317

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 561
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 563
    :cond_18
    check-cast v7, Lcom/android/settingslib/RestrictedPreference;

    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_3

    .line 502
    .end local v1    # "disabledByAdmin":Z
    .end local v6    # "key":Ljava/lang/String;
    :cond_19
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z
    .param p4, "unlockMethodIntent"    # Landroid/content/Intent;

    .prologue
    .line 644
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 787
    const v0, 0x7f0e0a53

    return v0
.end method

.method protected getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "requirePassword"    # Z
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/ManagedLockPasswordProvider;->createIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "challenge"    # J
    .param p8, "userId"    # I

    .prologue
    .line 616
    invoke-static/range {p1 .. p8}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 622
    invoke-static/range {p1 .. p7}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .prologue
    .line 634
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 639
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 323
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 324
    const/16 v2, 0x64

    if-ne p1, v2, :cond_3

    if-ne p2, v1, :cond_3

    .line 325
    iput-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 326
    const-string/jumbo v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 327
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 328
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 330
    invoke-direct {p0, v1, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    .line 360
    .end local p2    # "resultCode":I
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 321
    :cond_1
    return-void

    .line 333
    .restart local p2    # "resultCode":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 336
    :cond_3
    const/16 v2, 0x66

    if-eq p1, v2, :cond_4

    .line 337
    const/16 v2, 0x65

    if-ne p1, v2, :cond_6

    .line 338
    :cond_4
    if-nez p2, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_0

    .line 339
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 342
    :cond_6
    const/16 v2, 0x67

    if-ne p1, v2, :cond_8

    .line 343
    if-ne p2, v4, :cond_8

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_7

    .line 346
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 348
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 350
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    const/16 v2, 0x68

    if-ne p1, v2, :cond_a

    .line 351
    if-eqz p2, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 353
    if-ne p2, v4, :cond_9

    move p2, v1

    .line 352
    .end local p2    # "resultCode":I
    :cond_9
    invoke-virtual {v2, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 357
    .restart local p2    # "resultCode":I
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "chooseLockAction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v9, "fingerprint"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintManager;

    .line 145
    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 147
    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 148
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 149
    new-instance v6, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 150
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 152
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 153
    const-string/jumbo v6, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 154
    const-string/jumbo v6, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 153
    :goto_0
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 158
    const-string/jumbo v9, "confirm_credentials"

    .line 157
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 159
    .local v2, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    if-eqz v6, :cond_0

    .line 160
    if-eqz v2, :cond_6

    move v6, v8

    :goto_1
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v9, ":settings:hide_drawer"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 165
    const-string/jumbo v9, "has_challenge"

    .line 164
    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 167
    const-string/jumbo v9, "challenge"

    const-wide/16 v10, 0x0

    .line 166
    invoke-virtual {v6, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 169
    const-string/jumbo v9, "for_fingerprint"

    .line 168
    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 171
    const-string/jumbo v9, "for_cred_req_boot"

    .line 170
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_2
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 172
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v6, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 180
    const-string/jumbo v9, "password_confirmed"

    .line 179
    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 183
    :cond_1
    if-eqz p1, :cond_2

    .line 184
    const-string/jumbo v6, "password_confirmed"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 185
    const-string/jumbo v6, "waiting_for_confirmation"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 186
    const-string/jumbo v6, "encrypt_requested_quality"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 188
    const-string/jumbo v6, "encrypt_requested_disabled"

    .line 187
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 191
    invoke-static {v6, v9, v12, v10}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 196
    .local v5, "targetUser":I
    const-string/jumbo v6, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 197
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 204
    iput v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 207
    :goto_3
    const-string/jumbo v6, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iget v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6, v9}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v6

    .line 207
    if-eqz v6, :cond_3

    .line 209
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    .line 207
    if-eqz v6, :cond_3

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v9, 0x7f0e02fc

    invoke-virtual {v6, v9}, Landroid/app/Activity;->setTitle(I)V

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6, v9}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    .line 215
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v6, :cond_a

    .line 216
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 217
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v6, :cond_4

    .line 218
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 219
    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 218
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    invoke-direct {p0, v6, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    .line 236
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addHeaderView()V

    .line 141
    return-void

    .end local v2    # "confirmCredentials":Z
    .end local v5    # "targetUser":I
    :cond_5
    move v6, v7

    .line 153
    goto/16 :goto_0

    .restart local v2    # "confirmCredentials":Z
    :cond_6
    move v6, v7

    .line 160
    goto/16 :goto_1

    :cond_7
    move v6, v8

    .line 170
    goto/16 :goto_2

    .line 200
    .restart local v5    # "targetUser":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 201
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v0, :cond_9

    .end local v0    # "arguments":Landroid/os/Bundle;
    :goto_5
    invoke-static {v6, v0}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    goto :goto_3

    .line 202
    .restart local v0    # "arguments":Landroid/os/Bundle;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_5

    .line 221
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_a
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v6, :cond_4

    .line 223
    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 225
    .local v3, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iget v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 224
    invoke-static {v6, v9}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 226
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_b

    move v4, v8

    .line 227
    .local v4, "managedProfileWithUnifiedLock":Z
    :goto_6
    if-nez v4, :cond_d

    .line 229
    const v6, 0x7f0e0301

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 228
    const/16 v9, 0x64

    invoke-virtual {v3, v9, v6, v7, v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 233
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_4

    .end local v4    # "managedProfileWithUnifiedLock":Z
    :cond_b
    move v4, v7

    .line 226
    goto :goto_6

    :cond_c
    move v4, v8

    .line 224
    goto :goto_6

    .line 230
    .restart local v4    # "managedProfileWithUnifiedLock":Z
    :cond_d
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 231
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 781
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 782
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 780
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 251
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 257
    return v4

    .line 258
    :cond_0
    const-string/jumbo v2, "unlock_skip_fingerprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v0, "chooseLockGenericIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v2, "password_confirmed"

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    const/16 v2, 0x68

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    return v4

    .line 265
    .end local v0    # "chooseLockGenericIntent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 369
    const-string/jumbo v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    const-string/jumbo v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    const-string/jumbo v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    const-string/jumbo v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 366
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 5
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 659
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v1, :cond_0

    .line 660
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Tried to update password without confirming it"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    .line 664
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v0

    .line 665
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 667
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v1, :cond_1

    .line 668
    const/16 v1, 0x67

    .line 666
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 670
    return-void

    .line 669
    :cond_1
    const/16 v1, 0x66

    goto :goto_0

    .line 673
    :cond_2
    if-nez p1, :cond_3

    .line 674
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 676
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 678
    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 657
    :goto_1
    return-void

    .line 680
    :cond_3
    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    goto :goto_1
.end method
