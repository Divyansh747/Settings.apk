.class Lcom/android/settings/wifi/AdvancedWifiSettings$2;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 168
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;-><init>(I)V

    .line 169
    .local v0, "wpsFragment":Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "wps_push_button"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x1

    return v1
.end method
