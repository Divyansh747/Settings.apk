.class Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 591
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 592
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 589
    return-void
.end method

.method private getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 611
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mEnabled:Z

    if-nez v0, :cond_0

    const v0, 0x7f0e0d0b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 612
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mConnected:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0e0028

    goto :goto_0

    .line 613
    :cond_1
    const v0, 0x7f0e0025

    goto :goto_0
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 618
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mEnabled:Z

    .line 619
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 617
    return-void

    .line 618
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 624
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mConnected:Z

    .line 625
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 623
    return-void

    .line 624
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 634
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 644
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 639
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    .line 629
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 597
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 598
    .local v0, "defaultAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    return-void

    .line 599
    :cond_0
    if-eqz p1, :cond_2

    .line 600
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mEnabled:Z

    .line 602
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 601
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mConnected:Z

    .line 603
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 604
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 596
    :goto_1
    return-void

    .line 602
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 606
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    goto :goto_1
.end method
