.class final Lcom/android/settings/WirelessSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 11
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
    const/4 v4, 0x0

    .line 689
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v9, "user"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 692
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    if-eqz v9, :cond_9

    move v3, v4

    .line 693
    .local v3, "isSecondaryUser":Z
    :goto_0
    if-nez v3, :cond_0

    .line 694
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 695
    const v10, 0x112006d

    .line 694
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 696
    .local v4, "isWimaxEnabled":Z
    :cond_0
    if-nez v4, :cond_1

    .line 697
    const-string/jumbo v9, "wimax_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_1
    if-eqz v3, :cond_2

    .line 701
    const-string/jumbo v9, "vpn_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_2
    const-string/jumbo v9, "nfc"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 705
    check-cast v5, Landroid/nfc/NfcManager;

    .line 707
    .local v5, "manager":Landroid/nfc/NfcManager;
    if-eqz v5, :cond_3

    .line 708
    invoke-virtual {v5}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 709
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_3

    .line 710
    const-string/jumbo v9, "toggle_nfc"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    const-string/jumbo v9, "android_beam_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_3
    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 717
    :cond_4
    const-string/jumbo v9, "mobile_network_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    const-string/jumbo v9, "manage_mobile_plan"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 724
    const v10, 0x7f0c0011

    .line 723
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 725
    .local v2, "isMobilePlanEnabled":Z
    if-nez v2, :cond_6

    .line 726
    const-string/jumbo v9, "manage_mobile_plan"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 732
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v9, "android.hardware.type.television"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 733
    const-string/jumbo v9, "toggle_airplane"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_7
    const-string/jumbo v9, "proxy_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    const-string/jumbo v9, "connectivity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 740
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 742
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v3, :cond_a

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 746
    :goto_1
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 747
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 752
    :goto_2
    const-string/jumbo v9, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 751
    invoke-static {p1, v9, v10}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 753
    const-string/jumbo v9, "network_reset"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_8
    return-object v7

    .line 692
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "isMobilePlanEnabled":Z
    .end local v3    # "isSecondaryUser":Z
    .end local v4    # "isWimaxEnabled":Z
    .end local v5    # "manager":Landroid/nfc/NfcManager;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 743
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "isMobilePlanEnabled":Z
    .restart local v3    # "isSecondaryUser":Z
    .restart local v4    # "isWimaxEnabled":Z
    .restart local v5    # "manager":Landroid/nfc/NfcManager;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_a
    const-string/jumbo v9, "tether_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 748
    :cond_b
    const-string/jumbo v9, "wifi_calling_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
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
    .line 679
    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 682
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 683
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f080081

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 684
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
