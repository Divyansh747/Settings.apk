.class Lcom/android/settings/WirelessSettings$5;
.super Landroid/os/Handler;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/WirelessSettings;

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 788
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 790
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 791
    .local v4, "updateResult":I
    if-ne v4, v8, :cond_1

    .line 792
    iget-object v6, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v6}, Lcom/android/settings/WirelessSettings;->-get6(Lcom/android/settings/WirelessSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iget-object v6, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v6}, Lcom/android/settings/WirelessSettings;->-get6(Lcom/android/settings/WirelessSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 795
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 796
    const-string/jumbo v9, "volte_preferred_on"

    .line 797
    iget-object v10, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v10}, Lcom/android/settings/WirelessSettings;->-get6(Lcom/android/settings/WirelessSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 795
    :goto_2
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v6, v8

    .line 792
    goto :goto_1

    :cond_3
    move v8, v7

    .line 797
    goto :goto_2

    .line 803
    .end local v4    # "updateResult":I
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 804
    .local v3, "queryResult":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 805
    .local v2, "mode":I
    iget-object v6, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v6}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 806
    const-string/jumbo v9, "volte_preferred_on"

    .line 805
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 807
    .local v5, "value":I
    const-string/jumbo v6, "WirelessSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Local setting status = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v6, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v6}, Lcom/android/settings/WirelessSettings;->-get6(Lcom/android/settings/WirelessSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 809
    iget-object v6, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v6}, Lcom/android/settings/WirelessSettings;->-get6(Lcom/android/settings/WirelessSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    if-ne v5, v8, :cond_4

    :goto_3
    invoke-virtual {v6, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 810
    if-nez v3, :cond_0

    if-eq v2, v5, :cond_0

    .line 812
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v6}, Lcom/android/settings/WirelessSettings;->-get4(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 813
    iget-object v6, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v6}, Lcom/android/settings/WirelessSettings;->-get4(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v6

    .line 814
    iget-object v7, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v7}, Lcom/android/settings/WirelessSettings;->-get4(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/ims/QtiImsExtManager;->getImsPhoneId()I

    move-result v7

    .line 816
    iget-object v8, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v8}, Lcom/android/settings/WirelessSettings;->-get0(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v8

    .line 813
    invoke-virtual {v6, v7, v5, v8}, Lorg/codeaurora/ims/QtiImsExtManager;->updateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_1
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 818
    :catch_1
    move-exception v1

    .line 819
    .local v1, "e":Lorg/codeaurora/ims/QtiImsException;
    const-string/jumbo v6, "WirelessSettings"

    invoke-virtual {v1}, Lorg/codeaurora/ims/QtiImsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "e":Lorg/codeaurora/ims/QtiImsException;
    :cond_4
    move v8, v7

    .line 809
    goto :goto_3

    .line 788
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
