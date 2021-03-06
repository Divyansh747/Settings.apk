.class public Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;-><init>()V

    .line 195
    sput-object v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    .line 94
    .local v9, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    .line 97
    .local v2, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 96
    invoke-static {v2, v4, v1, v4}, Lcom/android/settingslib/wifi/WifiTracker;->getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v6

    .line 98
    .local v6, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    new-instance v1, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$2;-><init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 109
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 110
    .local v7, "accessPointsSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 112
    new-instance v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 113
    iget-object v3, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    move-object v5, p0

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .line 114
    .local v0, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {v9, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 110
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 119
    const-string/jumbo v1, "SavedAccessPointsWifiSettings"

    const-string/jumbo v3, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/LongPressAccessPointPreference;Z)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .param p2, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->removeDialog(I)V

    .line 126
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showDialog(I)V

    .line 123
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x6a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 80
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    .line 70
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 67
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "dialogId"    # I

    .prologue
    const/4 v3, 0x0

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 142
    iput-object v3, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 146
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 147
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    .line 146
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 173
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 169
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 184
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v0, :cond_0

    .line 185
    check-cast p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showDialog(Lcom/android/settings/wifi/LongPressAccessPointPreference;Z)V

    .line 186
    const/4 v0, 0x1

    return v0

    .line 188
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    .line 74
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 163
    const-string/jumbo v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .prologue
    .line 178
    return-void
.end method
