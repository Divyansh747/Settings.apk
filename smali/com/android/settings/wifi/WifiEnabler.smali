.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiEnabler$1;,
        Lcom/android/settings/wifi/WifiEnabler$2;
    }
.end annotation


# static fields
.field private static mNotShowAgainCheckbox:Landroid/widget/CheckBox;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/WifiEnabler;->mNotShowAgainCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$2;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 107
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->setupSwitchBar()V

    .line 103
    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 206
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 175
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 176
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 177
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    .line 179
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->mayDisableTethering(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 181
    const-string/jumbo v3, "no_config_tethering"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 180
    invoke-static {v1, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 153
    :cond_1
    :goto_1
    return-void

    .line 159
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 163
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 164
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 170
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 171
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 172
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 185
    const-string/jumbo v2, "no_config_tethering"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 184
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 186
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private mayDisableTethering(Z)Z
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 299
    .local v0, "wifiApState":I
    if-eqz p1, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    .line 300
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 300
    goto :goto_0

    :cond_2
    move v1, v2

    .line 299
    goto :goto_0
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 200
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isWiFiOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 195
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 196
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "is_wifi_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 12
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0e03bf

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 225
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v5, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-static {v5, v6}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 237
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiStaSapConcurrency()Z

    move-result v5

    if-nez v5, :cond_8

    .line 238
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->mayDisableTethering(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 239
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 240
    const v6, 0x7f0c003c

    .line 239
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 241
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 242
    const-string/jumbo v6, "layout_inflater"

    .line 241
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 243
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0400ab

    invoke-virtual {v1, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 244
    .local v4, "showAgainView":Landroid/view/View;
    const v5, 0x7f110184

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    sput-object v5, Lcom/android/settings/wifi/WifiEnabler;->mNotShowAgainCheckbox:Landroid/widget/CheckBox;

    .line 245
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 246
    const-string/jumbo v6, "MY_PERFS"

    .line 245
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 248
    .local v2, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "TurnOffWifiShowAgain"

    .line 247
    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 250
    .local v3, "showAgain":Z
    if-nez v3, :cond_5

    .line 251
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v11, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 252
    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 253
    if-eqz p2, :cond_4

    const/16 v5, 0x8b

    .line 252
    :goto_0
    invoke-static {v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 255
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 257
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 258
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 261
    :cond_2
    return-void

    .line 230
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "sharedpreferences":Landroid/content/SharedPreferences;
    .end local v3    # "showAgain":Z
    .end local v4    # "showAgainView":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v6, 0x7f0e03c1

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 232
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 233
    return-void

    .line 254
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    .restart local v2    # "sharedpreferences":Landroid/content/SharedPreferences;
    .restart local v3    # "showAgain":Z
    .restart local v4    # "showAgainView":Landroid/view/View;
    :cond_4
    const/16 v5, 0x8a

    goto :goto_0

    .line 264
    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    const v6, 0x7f0e0d51

    .line 264
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 266
    const v6, 0x7f0e0d52

    .line 264
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 269
    new-instance v6, Lcom/android/settings/wifi/WifiEnabler$3;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/wifi/WifiEnabler$3;-><init>(Lcom/android/settings/wifi/WifiEnabler;Landroid/content/SharedPreferences;)V

    .line 268
    const v7, 0x7f0e0265

    .line 264
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 278
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 281
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "sharedpreferences":Landroid/content/SharedPreferences;
    .end local v3    # "showAgain":Z
    .end local v4    # "showAgainView":Landroid/view/View;
    :cond_6
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v11, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 282
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_7

    .line 284
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 285
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 287
    :cond_7
    return-void

    .line 290
    :cond_8
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_9

    .line 292
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 293
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 223
    :cond_9
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 145
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 135
    :cond_0
    return-void
.end method

.method public setupSwitchBar()V
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 119
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 120
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 117
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 127
    return-void
.end method
