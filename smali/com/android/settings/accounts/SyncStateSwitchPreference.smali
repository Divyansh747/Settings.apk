.class public Lcom/android/settings/accounts/SyncStateSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "SyncStateSwitchPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    const/4 v0, 0x0

    const v1, 0x7f1001ad

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    iput-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 35
    iput-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 36
    iput-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 46
    iput-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 59
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    const v0, 0x7f1001ad

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 50
    iput-object v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 51
    iput-object v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mUid:I

    .line 48
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mUid:I

    return v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 10
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 74
    const v6, 0x7f1101c2

    .line 73
    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/widget/AnimatedImageView;

    .line 75
    .local v4, "syncActiveView":Lcom/android/settingslib/widget/AnimatedImageView;
    const v6, 0x7f1101c1

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 77
    .local v5, "syncFailedView":Landroid/view/View;
    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    if-nez v6, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 78
    .local v0, "activeVisible":Z
    :goto_0
    if-eqz v0, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v4, v6}, Lcom/android/settingslib/widget/AnimatedImageView;->setVisibility(I)V

    .line 79
    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    invoke-virtual {v4, v6}, Lcom/android/settingslib/widget/AnimatedImageView;->setAnimating(Z)V

    .line 81
    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    if-eqz v6, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v7

    .line 82
    .local v1, "failedVisible":Z
    :goto_2
    if-eqz v1, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 84
    const v6, 0x1020040

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 85
    .local v3, "switchView":Landroid/view/View;
    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-eqz v6, :cond_5

    .line 86
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 93
    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 94
    .local v2, "summary":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v7

    const v7, 0x7f0e0924

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .end local v2    # "summary":Landroid/widget/TextView;
    :goto_4
    return-void

    .end local v0    # "activeVisible":Z
    .end local v1    # "failedVisible":Z
    .end local v3    # "switchView":Landroid/view/View;
    :cond_1
    move v0, v9

    .line 77
    goto :goto_0

    .restart local v0    # "activeVisible":Z
    :cond_2
    move v6, v8

    .line 78
    goto :goto_1

    :cond_3
    move v1, v9

    .line 81
    goto :goto_2

    .restart local v1    # "failedVisible":Z
    :cond_4
    move v6, v8

    .line 82
    goto :goto_3

    .line 96
    .restart local v3    # "switchView":Landroid/view/View;
    :cond_5
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const-string/jumbo v0, "SyncState"

    const-string/jumbo v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onClick()V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 104
    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .param p1, "failed"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 122
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0
    .param p1, "oneTimeSyncMode"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 130
    return-void
.end method

.method public setPending(Z)V
    .locals 0
    .param p1, "isPending"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 113
    return-void
.end method

.method public setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 64
    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    .line 66
    iput p4, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mUid:I

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 62
    return-void
.end method
