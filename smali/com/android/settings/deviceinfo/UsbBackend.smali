.class public Lcom/android/settings/deviceinfo/UsbBackend;
.super Ljava/lang/Object;
.source "UsbBackend.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsUnlocked:Z

.field private final mMidi:Z

.field private mPort:Landroid/hardware/usb/UsbPort;

.field private mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field private final mRestricted:Z

.field private final mRestrictedBySystem:Z

.field private mTetheringEnabled:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mContext:Landroid/content/Context;

    .line 60
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 61
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mIsUnlocked:Z

    .line 64
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUserManager:Landroid/os/UserManager;

    .line 65
    const-class v5, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbManager;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 68
    const v6, 0x7f0c003a

    .line 67
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mTetheringEnabled:Z

    .line 69
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v6, "no_usb_file_transfer"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestricted:Z

    .line 70
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUserManager:Landroid/os/UserManager;

    .line 71
    const-string/jumbo v6, "no_usb_file_transfer"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 70
    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestrictedBySystem:Z

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.software.midi"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mMidi:Z

    .line 74
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v3

    .line 77
    .local v3, "ports":[Landroid/hardware/usb/UsbPort;
    array-length v0, v3

    .line 78
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 79
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v4

    .line 80
    .local v4, "status":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    aget-object v5, v3, v1

    iput-object v5, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 82
    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 57
    .end local v4    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_0
    return-void

    .line 62
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "ports":[Landroid/hardware/usb/UsbPort;
    :cond_1
    const-string/jumbo v6, "unlocked"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_0

    .line 78
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "ports":[Landroid/hardware/usb/UsbPort;
    .restart local v4    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private modeToPower(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 163
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    .line 164
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setUsbFunction(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x1

    .line 122
    packed-switch p1, :pswitch_data_0

    .line 142
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v2, "charging"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 121
    :goto_0
    return-void

    .line 124
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v2, "mtp"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v2, "ptp"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v2, "midi"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0

    .line 136
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/TetherSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 92
    .local v0, "power":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v1

    or-int/2addr v1, v0

    return v1

    .line 91
    .end local v0    # "power":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "power":I
    goto :goto_0

    .line 94
    .end local v0    # "power":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v1

    or-int/lit8 v1, v1, 0x0

    return v1
.end method

.method public getUsbDataMode()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mTetheringEnabled:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "rndis"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 98
    if-eqz v0, :cond_0

    .line 100
    const/16 v0, 0x8

    return v0

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mIsUnlocked:Z

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "charging"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_1
    return v2

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "mtp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    const/4 v0, 0x2

    return v0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "ptp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    const/4 v0, 0x4

    return v0

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "midi"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    const/4 v0, 0x6

    return v0

    .line 118
    :cond_5
    return v2
.end method

.method public isModeDisallowed(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestricted:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_0

    .line 169
    and-int/lit8 v0, p1, 0xe

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 171
    const/4 v0, 0x1

    return v0

    .line 173
    :cond_0
    return v2
.end method

.method public isModeDisallowedBySystem(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestrictedBySystem:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_0

    .line 178
    and-int/lit8 v0, p1, 0xe

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 180
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_0
    return v2
.end method

.method public isModeSupported(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 186
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mMidi:Z

    if-nez v3, :cond_0

    and-int/lit8 v3, p1, 0xe

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 187
    return v2

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v3, :cond_3

    .line 191
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v0

    .line 192
    .local v0, "power":I
    and-int/lit8 v2, p1, 0xe

    if-eqz v2, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1, v0, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    return v1

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    .line 198
    :cond_2
    return v1

    .line 203
    .end local v0    # "power":I
    :cond_3
    and-int/lit8 v3, p1, 0x1

    if-eq v3, v1, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v2, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v1

    .line 154
    .local v1, "powerRole":I
    and-int/lit8 v2, p1, 0xe

    if-nez v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    .line 154
    if-eqz v2, :cond_1

    .line 156
    const/4 v0, 0x1

    .line 157
    .local v0, "dataRole":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2, v3, v1, v0}, Landroid/hardware/usb/UsbManager;->setPortRoles(Landroid/hardware/usb/UsbPort;II)V

    .line 159
    .end local v0    # "dataRole":I
    .end local v1    # "powerRole":I
    :cond_0
    and-int/lit8 v2, p1, 0xe

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/UsbBackend;->setUsbFunction(I)V

    .line 148
    return-void

    .line 156
    .restart local v1    # "powerRole":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "dataRole":I
    goto :goto_0
.end method
