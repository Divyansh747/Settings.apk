.class Lcom/android/settings/TetherSettings$2;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/TetherSettings;->-wrap0(Lcom/android/settings/TetherSettings;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const-string/jumbo v1, "Hotspot_PreConfigure"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    :goto_0
    const-string/jumbo v1, "com.qualcomm.qti.extsettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 218
    const/4 v1, 0x0

    return v1

    .line 214
    :cond_0
    const-string/jumbo v1, "com.qti.ap.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
