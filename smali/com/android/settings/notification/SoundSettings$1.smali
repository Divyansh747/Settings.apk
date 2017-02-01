.class Lcom/android/settings/notification/SoundSettings$1;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 389
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get4(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get1(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    .line 390
    invoke-static {v1, v2}, Lcom/android/settings/notification/SoundSettings;->-wrap1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 392
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get2(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 396
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get3(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get1(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    .line 397
    invoke-static {v1, v3}, Lcom/android/settings/notification/SoundSettings;->-wrap1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 399
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get2(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 403
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get0(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get1(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/settings/notification/SoundSettings;->-wrap1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 406
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 407
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-get2(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 388
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method
