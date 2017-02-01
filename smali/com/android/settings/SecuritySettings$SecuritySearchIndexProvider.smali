.class Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    return-void
.end method

.method private getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlResId"    # I

    .prologue
    .line 881
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 882
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    iput p2, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 883
    return-object v0
.end method

.method private isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    const/4 v1, 0x0

    .line 887
    invoke-static {p2, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 889
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {p3, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    .line 890
    const/high16 v3, 0x80000

    .line 889
    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 984
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 985
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 986
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 990
    :goto_0
    const-string/jumbo v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 991
    const-string/jumbo v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_0
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 996
    const-string/jumbo v4, "trust_agent"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    const-string/jumbo v4, "manage_trust_agents"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    :cond_1
    return-object v0

    .line 987
    :cond_2
    const-string/jumbo v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 895
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 898
    .local v9, "res":Landroid/content/res/Resources;
    const v15, 0x7f0e02a7

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 900
    .local v12, "screenTitle":Ljava/lang/String;
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 901
    .local v3, "data":Lcom/android/settings/search/SearchIndexableRaw;
    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 902
    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 903
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    .line 906
    .local v14, "um":Landroid/os/UserManager;
    invoke-virtual {v14}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v15

    if-nez v15, :cond_0

    .line 907
    invoke-virtual {v14}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 908
    const v10, 0x7f0e02a3

    .line 910
    .local v10, "resId":I
    :goto_0
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 911
    .restart local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 912
    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 913
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    .end local v10    # "resId":I
    :cond_0
    const-string/jumbo v15, "fingerprint"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    .line 919
    .local v4, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 921
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 922
    .restart local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v15, 0x7f0e02ac

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 923
    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 924
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 927
    .restart local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v15, 0x7f0e02ad

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 928
    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 929
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_1
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 933
    .local v7, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v8

    .line 934
    .local v8, "profileUserId":I
    const/16 v15, -0x2710

    if-eq v8, v15, :cond_2

    .line 935
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v15

    .line 934
    if-eqz v15, :cond_2

    .line 936
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v15

    .line 937
    const/high16 v16, 0x10000

    .line 936
    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    .line 938
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v15

    .line 936
    if-eqz v15, :cond_2

    .line 940
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 941
    .restart local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v15, 0x7f0e068e

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 942
    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 943
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    :cond_2
    const-string/jumbo v15, "no_config_credentials"

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 949
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    .line 951
    .local v6, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v6}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 952
    const v13, 0x7f0e08b2

    .line 955
    .local v13, "storageSummaryRes":I
    :goto_1
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 956
    .restart local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 957
    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 958
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    .end local v6    # "keyStore":Landroid/security/KeyStore;
    .end local v13    # "storageSummaryRes":I
    :cond_3
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 965
    const-class v15, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/admin/DevicePolicyManager;

    .line 964
    move-object/from16 v0, p1

    invoke-static {v0, v7, v15}, Lcom/android/settings/SecuritySettings;->-wrap1(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    .line 966
    .local v2, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v5, v15, :cond_6

    .line 967
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 968
    .local v1, "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 969
    .restart local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    iget-object v15, v1, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 970
    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 971
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 908
    .end local v1    # "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v2    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v4    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v5    # "i":I
    .end local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v8    # "profileUserId":I
    :cond_4
    const v10, 0x7f0e02a1

    .restart local v10    # "resId":I
    goto/16 :goto_0

    .line 953
    .end local v10    # "resId":I
    .restart local v4    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v6    # "keyStore":Landroid/security/KeyStore;
    .restart local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v8    # "profileUserId":I
    :cond_5
    const v13, 0x7f0e08b3

    .restart local v13    # "storageSummaryRes":I
    goto :goto_1

    .line 974
    .end local v6    # "keyStore":Landroid/security/KeyStore;
    .end local v13    # "storageSummaryRes":I
    :cond_6
    return-object v11
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, -0x2710

    .line 826
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v1, "index":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 830
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-static {p1, v8}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v3

    .line 832
    .local v3, "managedPasswordProvider":Lcom/android/settings/ManagedLockPasswordProvider;
    const-string/jumbo v8, "device_policy"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 831
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 833
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    .line 834
    .local v7, "um":Landroid/os/UserManager;
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v4

    .line 838
    .local v4, "profileUserId":I
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-direct {p0, v8, p1, v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 839
    if-eq v4, v9, :cond_3

    .line 840
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v8

    .line 839
    if-nez v8, :cond_3

    .line 841
    invoke-direct {p0, v4, p1, v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 848
    :cond_0
    :goto_0
    if-eq v4, v9, :cond_1

    .line 849
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v8

    .line 848
    if-eqz v8, :cond_1

    .line 850
    invoke-direct {p0, v4, p1, v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 855
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 856
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 869
    :cond_2
    :goto_2
    :pswitch_0
    invoke-static {p1, v2, v3}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I

    move-result v8

    .line 868
    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v6

    .line 871
    .local v6, "sir":Landroid/provider/SearchIndexableResource;
    const-class v8, Lcom/android/settings/SecuritySettings$SecuritySubSettings;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 872
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    const v8, 0x7f080050

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    return-object v1

    .line 844
    .end local v6    # "sir":Landroid/provider/SearchIndexableResource;
    :cond_3
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    .line 843
    invoke-static {p1, v2, v3, v8}, Lcom/android/settings/SecuritySettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v5

    .line 845
    .local v5, "resId":I
    invoke-direct {p0, p1, v5}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 851
    .end local v5    # "resId":I
    :cond_4
    invoke-static {p1, v2, v3, v4}, Lcom/android/settings/SecuritySettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v8

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 859
    :pswitch_1
    const v8, 0x7f08004b

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 863
    :pswitch_2
    const v8, 0x7f08005d

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 856
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
