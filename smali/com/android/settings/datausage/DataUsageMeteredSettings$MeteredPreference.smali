.class Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageMeteredSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeteredPreference"
.end annotation


# instance fields
.field private mBinding:Z

.field private final mTemplate:Landroid/net/NetworkTemplate;

.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageMeteredSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageMeteredSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 128
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings/datausage/DataUsageMeteredSettings;

    .line 129
    invoke-direct {p0, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 130
    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 132
    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setPersistent(Z)V

    .line 134
    iput-boolean v7, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 135
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->-get0(Lcom/android/settings/datausage/DataUsageMeteredSettings;)Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 136
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_1

    .line 137
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0, v7}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    .line 139
    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setEnabled(Z)V

    .line 146
    :goto_0
    iput-boolean v6, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 128
    return-void

    .line 141
    :cond_0
    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->notifyChanged()V

    .line 152
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings/datausage/DataUsageMeteredSettings;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->-get0(Lcom/android/settings/datausage/DataUsageMeteredSettings;)Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyMetered(Landroid/net/NetworkTemplate;Z)V

    .line 155
    const-string/jumbo v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method
