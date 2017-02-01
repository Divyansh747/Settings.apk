.class Lcom/android/settings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$TetherChangeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 345
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 349
    const-string/jumbo v6, "availableArray"

    .line 348
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 351
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "activeArray"

    .line 350
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 353
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "erroredArray"

    .line 352
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 354
    .local v3, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 355
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 356
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 354
    invoke-static {v9, v6, v7, v8}, Lcom/android/settings/TetherSettings;->-wrap4(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 357
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 358
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Z

    move-result v6

    .line 357
    if-eqz v6, :cond_0

    .line 359
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6, v5}, Lcom/android/settings/TetherSettings;->-set2(Lcom/android/settings/TetherSettings;Z)Z

    .line 360
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "Restarting WifiAp due to prior config change."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6, v5}, Lcom/android/settings/TetherSettings;->-wrap2(Lcom/android/settings/TetherSettings;I)V

    .line 344
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const-string/jumbo v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 364
    const-string/jumbo v6, "wifi_state"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 365
    .local v4, "state":I
    if-ne v4, v10, :cond_0

    .line 366
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Z

    move-result v6

    .line 365
    if-eqz v6, :cond_0

    .line 367
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6, v5}, Lcom/android/settings/TetherSettings;->-set2(Lcom/android/settings/TetherSettings;Z)Z

    .line 368
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "Restarting WifiAp due to prior config change."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6, v5}, Lcom/android/settings/TetherSettings;->-wrap2(Lcom/android/settings/TetherSettings;I)V

    goto :goto_0

    .line 371
    .end local v4    # "state":I
    :cond_2
    const-string/jumbo v7, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 372
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7, v6}, Lcom/android/settings/TetherSettings;->-set1(Lcom/android/settings/TetherSettings;Z)Z

    .line 373
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-wrap3(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 374
    :cond_3
    const-string/jumbo v7, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 375
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6, v5}, Lcom/android/settings/TetherSettings;->-set1(Lcom/android/settings/TetherSettings;Z)Z

    .line 376
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-wrap3(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 377
    :cond_4
    const-string/jumbo v7, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 378
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v8, "connected"

    invoke-virtual {p2, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->-set3(Lcom/android/settings/TetherSettings;Z)Z

    .line 379
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v8, "shared"

    .line 380
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 379
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->-set1(Lcom/android/settings/TetherSettings;Z)Z

    .line 381
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->-get7(Lcom/android/settings/TetherSettings;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 382
    .local v5, "usbAvailable":Z
    :cond_5
    :goto_1
    if-nez v5, :cond_6

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 383
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 385
    :cond_6
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-wrap3(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    .end local v5    # "usbAvailable":Z
    :cond_7
    move v5, v6

    .line 381
    goto :goto_1

    .line 386
    :cond_8
    const-string/jumbo v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 387
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get0(Lcom/android/settings/TetherSettings;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 389
    const-string/jumbo v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x80000000

    .line 388
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 404
    :cond_9
    :goto_2
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-wrap3(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    .line 391
    :sswitch_0
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/settings/TetherSettings;->-wrap2(Lcom/android/settings/TetherSettings;I)V

    .line 392
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6, v5}, Lcom/android/settings/TetherSettings;->-set0(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_2

    .line 397
    :sswitch_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6, v5}, Lcom/android/settings/TetherSettings;->-set0(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_2

    .line 388
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
