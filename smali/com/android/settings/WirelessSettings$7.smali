.class Lcom/android/settings/WirelessSettings$7;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WirelessSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 396
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$7;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 399
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string/jumbo v1, "com.qualcomm.qti.wfcservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string/jumbo v1, "com.qualcomm.qti.wfcservice"

    .line 402
    const-string/jumbo v2, "com.qualcomm.qti.wfcservice.WifiCallingEnhancedSettings"

    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$7;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->-get1(Lcom/android/settings/WirelessSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 404
    const/4 v1, 0x0

    return v1
.end method
