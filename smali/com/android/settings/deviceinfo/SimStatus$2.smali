.class Lcom/android/settings/deviceinfo/SimStatus$2;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 470
    .local v0, "slotId":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-get1(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v2, v1}, Lcom/android/settings/deviceinfo/SimStatus;->-set0(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 473
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap3(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 474
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-get4(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/SimStatus;->-get0(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    .line 475
    const/16 v3, 0x141

    .line 474
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 478
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap1(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 479
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap2(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 480
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->-wrap4(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 468
    return-void
.end method
