.class Lcom/android/settings/WirelessSettings$1;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 141
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 144
    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v2, "AIDLExample connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {p2}, Lorg/codeaurora/wfcservice/IWFCService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/wfcservice/IWFCService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->-set1(Lcom/android/settings/WirelessSettings;Lorg/codeaurora/wfcservice/IWFCService;)Lorg/codeaurora/wfcservice/IWFCService;

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->-get7(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/wfcservice/IWFCService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v2}, Lcom/android/settings/WirelessSettings;->-get2(Lcom/android/settings/WirelessSettings;)Lorg/codeaurora/wfcservice/IWFCServiceCB;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/codeaurora/wfcservice/IWFCService;->registerCallback(Lorg/codeaurora/wfcservice/IWFCServiceCB;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 153
    const-string/jumbo v0, "WirelessSettings"

    const-string/jumbo v1, " AIDLExample disconnect service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->-set1(Lcom/android/settings/WirelessSettings;Lorg/codeaurora/wfcservice/IWFCService;)Lorg/codeaurora/wfcservice/IWFCService;

    .line 152
    return-void
.end method
