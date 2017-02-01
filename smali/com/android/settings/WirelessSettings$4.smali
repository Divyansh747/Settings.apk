.class Lcom/android/settings/WirelessSettings$4;
.super Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;
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
    .line 764
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$4;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoltePreferenceQueried(II)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "mode"    # I

    .prologue
    .line 776
    const-string/jumbo v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voltePreferenceQueried, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$4;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->-get5(Lcom/android/settings/WirelessSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 778
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 779
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 780
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 781
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 775
    return-void
.end method

.method public onVoltePreferenceUpdated(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 767
    const-string/jumbo v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voltePreferenceUpdated, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$4;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->-get5(Lcom/android/settings/WirelessSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 769
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 770
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 771
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 766
    return-void
.end method
