.class public Lcom/android/settings/accounts/ProviderPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "providerName"    # Ljava/lang/CharSequence;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setPersistent(Z)V

    .line 41
    invoke-virtual {p0, p4}, Lcom/android/settings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->useAdminDisabledSummary(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public checkAccountManagementAndSetDisabled(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/accounts/ProviderPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v1, v2, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 52
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 49
    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method
