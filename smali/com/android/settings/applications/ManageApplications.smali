.class public Lcom/android/settings/applications/ManageApplications;
.super Lcom/android/settings/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$1;,
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;,
        Lcom/android/settings/applications/ManageApplications$SectionInfo;,
        Lcom/android/settings/applications/ManageApplications$SummaryProvider;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_LABELS:[I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field public mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field public mFilter:I

.field private mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFinishAfterDialog:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mShowSubstratum:Z

.field private mShowSystem:Z

.field private mSortOrder:I

.field private mSpinnerHeader:Landroid/view/View;

.field private mVolumeName:Ljava/lang/String;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/applications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/applications/ManageApplications;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSubstratum:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/applications/ManageApplications;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v1, 0x10

    const/4 v4, 0x3

    .line 100
    const-string/jumbo v0, "ManageApplications"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    .line 145
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    .line 165
    new-array v0, v1, [Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 166
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 167
    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 166
    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 168
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 169
    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 168
    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 170
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 171
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v4

    .line 172
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 173
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 174
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SILENCED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 175
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_SENSITIVE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 176
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 177
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 178
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 179
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 180
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 181
    sget-object v1, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 182
    sget-object v1, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 183
    sget-object v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 165
    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1326
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ManageApplications$1;-><init>()V

    .line 1325
    sput-object v0, Lcom/android/settings/applications/ManageApplications;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 96
    return-void

    .line 145
    :array_0
    .array-data 4
        0x7f0e0c0a
        0x7f0e0bce
        0x7f0e0bce
        0x7f0e0bcf
        0x7f0e06ce
        0x7f0e0bd2
        0x7f0e0bd7
        0x7f0e0bd5
        0x7f0e0bd6
        0x7f0e0bd4
        0x7f0e0bd0
        0x7f0e0bd1
        0x7f0e0bd3
        0x7f0e0bce
        0x7f0e0c5d
        0x7f0e0c63
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 187
    const v0, 0x7f110334

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 96
    return-void
.end method

.method private createHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 344
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f1100fc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 345
    .local v1, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 346
    const v3, 0x7f04002c

    .line 345
    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    .line 347
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v3, 0x7f110085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    .line 348
    new-instance v2, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    .line 349
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 350
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 351
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 353
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 354
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v2, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 357
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 360
    :cond_0
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v2, v5, :cond_1

    .line 361
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v6}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 362
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 363
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 364
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 365
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 367
    :cond_1
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v2, v6, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 370
    :cond_2
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 371
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setOverrideFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 342
    :cond_3
    return-void
.end method

.method private getDefaultFilter()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 395
    const/4 v0, 0x2

    return v0

    .line 387
    :pswitch_0
    const/16 v0, 0xd

    return v0

    .line 389
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 391
    :pswitch_2
    const/16 v0, 0xe

    return v0

    .line 393
    :pswitch_3
    const/16 v0, 0xf

    return v0

    .line 385
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isFastScrollEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 400
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 406
    :pswitch_0
    return v0

    .line 404
    :pswitch_1
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v2, 0x7f110334

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 6
    .param p2, "titleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    .line 530
    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    .line 529
    invoke-static/range {v0 .. v5}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    .line 528
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 3

    .prologue
    .line 498
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 523
    :pswitch_0
    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    const v1, 0x7f0e06a2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 497
    :goto_0
    return-void

    .line 500
    :pswitch_1
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    .line 501
    const v1, 0x7f0e0b1c

    .line 500
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 504
    :pswitch_2
    const-class v0, Lcom/android/settings/applications/UsageAccessDetails;

    const v1, 0x7f0e0bfa

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 507
    :pswitch_3
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f0e051f

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 510
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 511
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mFinishAfterDialog:Z

    .line 510
    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 514
    :pswitch_5
    const-class v0, Lcom/android/settings/applications/DrawOverlayDetails;

    const v1, 0x7f0e0c5b

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 517
    :pswitch_6
    const-class v0, Lcom/android/settings/applications/WriteSettingsDetails;

    const v1, 0x7f0e0c65

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    const/16 v1, 0xdd

    .line 412
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 428
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 414
    :pswitch_1
    const/16 v0, 0x41

    return v0

    .line 416
    :pswitch_2
    const/16 v0, 0x85

    return v0

    .line 418
    :pswitch_3
    const/16 v0, 0xb6

    return v0

    .line 420
    :pswitch_4
    const/16 v0, 0x5f

    return v0

    .line 422
    :pswitch_5
    const/16 v0, 0xb8

    return v0

    .line 424
    :pswitch_6
    return v1

    .line 426
    :pswitch_7
    return v1

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 480
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 481
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_1

    .line 482
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 485
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mFinishAfterDialog:Z

    if-eqz v0, :cond_4

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 484
    :cond_3
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 491
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 241
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 246
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 247
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "className":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 249
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 251
    :cond_1
    const-class v3, Lcom/android/settings/Settings$AllApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    .line 279
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    .line 281
    if-eqz p1, :cond_2

    .line 282
    const-string/jumbo v3, "sortOrder"

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 283
    const-string/jumbo v3, "showSystem"

    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    .line 284
    const-string/jumbo v3, "showSubstratum"

    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowSubstratum:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mShowSubstratum:Z

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e06ec

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 289
    new-instance v3, Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/applications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    .line 240
    return-void

    .line 253
    :cond_3
    const-class v3, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    iput v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 255
    new-instance v3, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    goto :goto_0

    .line 256
    :cond_4
    const-class v3, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 257
    if-eqz v0, :cond_5

    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 258
    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 259
    const-string/jumbo v3, "volumeName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    .line 260
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 265
    :goto_1
    const v3, 0x7f110335

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_0

    .line 263
    :cond_5
    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto :goto_1

    .line 266
    :cond_6
    const-class v3, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 267
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    .line 268
    :cond_7
    const-class v3, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 269
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 271
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_0

    .line 272
    :cond_8
    const-class v3, Lcom/android/settings/Settings$OverlaySettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 273
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    .line 274
    :cond_9
    const-class v3, Lcom/android/settings/Settings$WriteSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 275
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    .line 277
    :cond_a
    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_0

    .line 536
    const v0, 0x7f0e0a44

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-static {v1, p1, v0, v2}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 537
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 538
    const v0, 0x7f140002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 534
    return-void

    .line 536
    :cond_0
    const v0, 0x7f0e0a43

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 297
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 299
    const v2, 0x7f04009f

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 300
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f11015d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 301
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f110166

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 303
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 306
    .local v0, "emptyView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 307
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 310
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 311
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 312
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 313
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 314
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 315
    new-instance v2, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications;I)V

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 316
    if-eqz p3, :cond_1

    .line 317
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 318
    const-string/jumbo v3, "hasEntries"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 317
    invoke-static {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 319
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 320
    const-string/jumbo v3, "hasBridge"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 319
    invoke-static {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 324
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 326
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v2, v3, v5}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 331
    .end local v0    # "emptyView":Landroid/view/View;
    .end local v1    # "lv":Landroid/widget/ListView;
    :cond_2
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_3

    .line 332
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v6, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 335
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->createHeader()V

    .line 337
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v2, p3}, Lcom/android/settings/applications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 339
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 548
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 470
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onDestroyView()V

    .line 472
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 475
    :cond_0
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 469
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p3, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 623
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 624
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    .line 625
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 620
    .end local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    .line 632
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setFilter(I)V

    .line 633
    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selecting filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 577
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 578
    .local v7, "menuId":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 613
    return v1

    .line 581
    :pswitch_0
    iput v7, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 582
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 615
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 616
    return v8

    .line 589
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    .line 590
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0

    :cond_1
    move v0, v8

    .line 589
    goto :goto_1

    .line 594
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSubstratum:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSubstratum:Z

    .line 595
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0

    :cond_2
    move v0, v8

    .line 594
    goto :goto_2

    .line 598
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/ResetAppsHelper;->buildResetDialog()V

    .line 599
    return v8

    .line 601
    :pswitch_4
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v8, :cond_3

    .line 602
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 603
    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 604
    const v3, 0x7f0e0b0d

    move-object v4, v2

    move-object v5, p0

    .line 602
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 610
    :goto_3
    return v8

    .line 606
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 607
    const-class v1, Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e0bd9

    move-object v4, v2

    move-object v5, p0

    .line 606
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_3

    .line 578
    :pswitch_data_0
    .packed-switch 0x7f11032f
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 457
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 455
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 543
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 434
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateView()V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 437
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 439
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-wrap1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    .line 433
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 445
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 446
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 447
    const-string/jumbo v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    const-string/jumbo v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    const-string/jumbo v0, "showSubstratum"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSubstratum:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    const-string/jumbo v0, "hasEntries"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get3(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    const-string/jumbo v0, "hasBridge"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 464
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStop()V

    .line 465
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/ResetAppsHelper;->stop()V

    .line 463
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 378
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f1100fc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 380
    .local v5, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    const/4 v4, -0x1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/ViewGroup;)V

    .line 376
    .end local v5    # "pinnedHeader":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public setHasDisabled(Z)V
    .locals 2
    .param p1, "hasDisabledApps"    # Z

    .prologue
    .line 649
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v0, :cond_0

    .line 650
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 653
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 648
    return-void
.end method

.method updateOptionsMenu()V
    .locals 7

    .prologue
    const v6, 0x7f110334

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 553
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 554
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f11032f

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 557
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_3

    :cond_1
    move v0, v1

    .line 556
    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 559
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v4, :cond_5

    .line 560
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v0, v6, :cond_4

    move v0, v1

    .line 559
    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 561
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110335

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v4, :cond_7

    .line 562
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v4, 0x7f110335

    if-eq v0, v4, :cond_6

    move v0, v1

    .line 561
    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 564
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110330

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-nez v0, :cond_9

    .line 565
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v0, v5, :cond_8

    move v0, v1

    .line 564
    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 566
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110331

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v0, :cond_b

    .line 567
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v0, v5, :cond_a

    move v0, v1

    .line 566
    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 569
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110332

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSubstratum:Z

    if-nez v0, :cond_d

    .line 570
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v0, v5, :cond_c

    move v0, v1

    .line 569
    :goto_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 571
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110333

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mShowSubstratum:Z

    if-eqz v3, :cond_2

    .line 572
    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v3, v5, :cond_2

    move v2, v1

    .line 571
    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 552
    return-void

    :cond_3
    move v0, v2

    .line 557
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 560
    goto :goto_1

    :cond_5
    move v0, v2

    .line 559
    goto :goto_1

    :cond_6
    move v0, v2

    .line 562
    goto :goto_2

    :cond_7
    move v0, v2

    .line 561
    goto :goto_2

    :cond_8
    move v0, v2

    .line 565
    goto :goto_3

    :cond_9
    move v0, v2

    .line 564
    goto :goto_3

    :cond_a
    move v0, v2

    .line 567
    goto :goto_4

    :cond_b
    move v0, v2

    .line 566
    goto :goto_4

    :cond_c
    move v0, v2

    .line 570
    goto :goto_5

    :cond_d
    move v0, v2

    .line 569
    goto :goto_5
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 642
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 643
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 640
    :cond_0
    return-void
.end method
