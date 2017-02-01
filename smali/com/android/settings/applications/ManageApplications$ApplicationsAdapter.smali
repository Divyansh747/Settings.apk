.class Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;,
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;,
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;
    }
.end annotation


# static fields
.field private static final EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

.field private final mFgHandler:Landroid/os/Handler;

.field private mFilter:Landroid/widget/Filter;

.field private mFilterMode:I

.field private mHasReceivedBridgeCallback:Z

.field private mHasReceivedLoadEntries:Z

.field private mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSortMode:I

.field private final mManageApplications:Lcom/android/settings/applications/ManageApplications;

.field private mOverrideFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPositionToSectionIndex:[I

.field private mResumed:Z

.field private mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

.field private final mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mWhichSize:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuildSections()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/settings/applications/ManageApplications$SectionInfo;

    sput-object v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    .line 740
    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications;I)V
    .locals 4
    .param p1, "state"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p2, "manageApplications"    # Lcom/android/settings/applications/ManageApplications;
    .param p3, "filterMode"    # I

    .prologue
    .line 790
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 757
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 758
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 766
    sget-object v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    .line 769
    new-instance v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 792
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 793
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFgHandler:Landroid/os/Handler;

    .line 794
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBgHandler:Landroid/os/Handler;

    .line 795
    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 796
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    .line 797
    invoke-virtual {p2}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 798
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 799
    iput p3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 800
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 801
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 802
    invoke-static {p2}, Lcom/android/settings/applications/ManageApplications;->-get6(Lcom/android/settings/applications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v3

    .line 801
    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/settings/applications/AppStateNotificationBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    .line 791
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 804
    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 806
    new-instance v0, Lcom/android/settings/applications/AppStatePowerBridge;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/applications/AppStatePowerBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 808
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 810
    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 812
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0
.end method

.method private static packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z
    .locals 2
    .param p0, "info1"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "info2"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 929
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 930
    :cond_0
    return v1

    .line 932
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 933
    :cond_2
    return v1

    .line 935
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private rebuildSections()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 992
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v10}, Lcom/android/settings/applications/ManageApplications;->-get4(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->isFastScrollEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 994
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    if-nez v10, :cond_2

    .line 995
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 996
    .local v5, "locales":Landroid/os/LocaleList;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 997
    new-instance v5, Landroid/os/LocaleList;

    .end local v5    # "locales":Landroid/os/LocaleList;
    new-array v10, v13, [Ljava/util/Locale;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v11, v10, v12

    invoke-direct {v5, v10}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 999
    .restart local v5    # "locales":Landroid/os/LocaleList;
    :cond_0
    new-instance v1, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v5, v12}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    .line 1000
    .local v1, "index":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<Ljava/util/Locale;>;"
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v4

    .line 1001
    .local v4, "localeCount":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1002
    new-array v10, v13, [Ljava/util/Locale;

    invoke-virtual {v5, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v1, v10}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 1001
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    new-array v10, v13, [Ljava/util/Locale;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v11, v10, v12

    invoke-virtual {v1, v10}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 1006
    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    .line 1009
    .end local v0    # "i":I
    .end local v1    # "index":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<Ljava/util/Locale;>;"
    .end local v4    # "localeCount":I
    .end local v5    # "locales":Landroid/os/LocaleList;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .local v8, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ManageApplications$SectionInfo;>;"
    const/4 v3, -0x1

    .line 1011
    .local v3, "lastSecId":I
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1012
    .local v9, "totalEntries":I
    new-array v10, v9, [I

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    .line 1014
    const/4 v6, 0x0

    .local v6, "pos":I
    :goto_1
    if-ge v6, v9, :cond_5

    .line 1015
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 1016
    .local v2, "label":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v2, ""

    .end local v2    # "label":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10, v2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v7

    .line 1017
    .local v7, "secId":I
    if-eq v7, v3, :cond_4

    .line 1018
    move v3, v7

    .line 1019
    new-instance v10, Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iget-object v11, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v11, v7}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v6}, Lcom/android/settings/applications/ManageApplications$SectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_4
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    aput v11, v10, v6

    .line 1014
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1023
    .end local v7    # "secId":I
    :cond_5
    sget-object v10, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    .line 991
    .end local v3    # "lastSecId":I
    .end local v6    # "pos":I
    .end local v8    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ManageApplications$SectionInfo;>;"
    .end local v9    # "totalEntries":I
    :goto_2
    return-void

    .line 1025
    :cond_6
    sget-object v10, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    .line 1026
    iput-object v11, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    goto :goto_2
.end method

.method private removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 941
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 943
    .local v5, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 947
    .local v4, "returnEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 948
    .local v3, "lastInfo":Landroid/content/pm/PackageItemInfo;
    const/4 v1, 0x0

    .end local v3    # "lastInfo":Landroid/content/pm/PackageItemInfo;
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 949
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 950
    .local v0, "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 951
    .local v2, "info":Landroid/content/pm/PackageItemInfo;
    iget-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v6}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 952
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_0
    move-object v3, v2

    .line 948
    .local v3, "lastInfo":Landroid/content/pm/PackageItemInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 956
    .end local v0    # "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v2    # "info":Landroid/content/pm/PackageItemInfo;
    .end local v3    # "lastInfo":Landroid/content/pm/PackageItemInfo;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 957
    return-object v4
.end method

.method private updateLoading()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1031
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get5(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    .line 1032
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get3(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    .line 1033
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1031
    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 1030
    return-void

    :cond_0
    move v0, v1

    .line 1033
    goto :goto_0
.end method

.method private updateSummary(Lcom/android/settings/applications/AppViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/applications/AppViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 1186
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 1228
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 1185
    :goto_0
    return-void

    .line 1188
    :pswitch_1
    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1189
    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 1192
    :cond_0
    iget-object v1, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    .line 1193
    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 1192
    invoke-static {v0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1196
    :cond_1
    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1201
    :pswitch_2
    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1202
    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-nez v0, :cond_2

    .line 1203
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 1205
    :cond_2
    iget-object v1, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v2, v0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1206
    const v0, 0x7f0e0b8d

    .line 1205
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1207
    :cond_3
    const v0, 0x7f0e0b8e

    goto :goto_1

    .line 1210
    :cond_4
    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1215
    :pswitch_3
    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1219
    :pswitch_4
    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1223
    :pswitch_5
    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 1224
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1223
    invoke-static {v1, v2}, Lcom/android/settings/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method synthetic -com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V
    .locals 3
    .param p1, "finalFilterObj"    # Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .param p2, "comparatorObj"    # Ljava/util/Comparator;

    .prologue
    .line 919
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 920
    const/4 v2, 0x0

    .line 919
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 921
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v0, :cond_0

    .line 922
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;-><init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 0
    :cond_0
    return-void
.end method

.method synthetic -com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$2(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "entries"    # Ljava/util/ArrayList;

    .prologue
    .line 922
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->onRebuildComplete(Ljava/util/ArrayList;)V

    .line 0
    return-void
.end method

.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1038
    .local p2, "origEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1039
    :cond_0
    return-object p2

    .line 1041
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1042
    .local v4, "prefixStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1044
    .local v5, "spacePrefixStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .local v2, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1046
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1047
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 1048
    .local v3, "nlabel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 1049
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1052
    .end local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v3    # "nlabel":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1138
    const/4 v0, 0x0

    return v0
.end method

.method public getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/settings/applications/ManageApplications$SectionInfo;->position:I

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1153
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications;->-get2(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/settings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;

    move-result-object v1

    .line 1155
    .local v1, "holder":Lcom/android/settings/applications/AppViewHolder;
    iget-object p2, v1, Lcom/android/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 1158
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1159
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 1160
    :try_start_0
    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1161
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1162
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 1165
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1166
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1168
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings/applications/AppViewHolder;)V

    .line 1169
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 1170
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1171
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0e06d3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    .line 1179
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1180
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1182
    return-object p2

    .line 1172
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    .line 1173
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1174
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0e06d2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1159
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 1176
    :cond_3
    :try_start_2
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 1143
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v2, v2, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 1144
    return v1

    .line 1146
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1147
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 1115
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v1, 0x7f110335

    if-ne v0, v1, :cond_0

    .line 1116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1114
    :cond_0
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    .line 1059
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1057
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get8(Lcom/android/settings/applications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1107
    :cond_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 1082
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1079
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1239
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 1073
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 1069
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1068
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1087
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1088
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    .line 1089
    .local v0, "holder":Lcom/android/settings/applications/AppViewHolder;
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1090
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    .line 1091
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings/applications/AppViewHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1093
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications;->-get0(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v3, 0x7f110335

    if-ne v2, v3, :cond_0

    .line 1099
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1101
    :cond_0
    return-void

    .line 1090
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 1087
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1086
    .end local v0    # "holder":Lcom/android/settings/applications/AppViewHolder;
    :cond_2
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 962
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    if-eqz v0, :cond_0

    .line 963
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    if-ne v0, v2, :cond_1

    .line 964
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 966
    :cond_1
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 967
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 968
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 969
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuildSections()V

    .line 976
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 978
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 979
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get3(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 980
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get5(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->-get3(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v1

    .line 980
    invoke-static {v0, v1, v2, v2}, Lcom/android/settings/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 985
    return-void

    .line 971
    :cond_3
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 972
    sget-object v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    .line 973
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    goto :goto_0

    .line 988
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications;->setHasDisabled(Z)V

    .line 961
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1063
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 844
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->pause()V

    .line 845
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->pause()V

    .line 841
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .param p1, "sort"    # I

    .prologue
    .line 859
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 860
    return-void

    .line 862
    :cond_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 863
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 858
    return-void
.end method

.method public rebuild(Z)V
    .locals 7
    .param p1, "eraseold"    # Z

    .prologue
    .line 867
    iget-boolean v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v5, :cond_5

    .line 868
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-eqz v5, :cond_5

    .line 872
    :cond_0
    sget-boolean v5, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "ManageApplications"

    const-string/jumbo v6, "Rebuilding app list..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 876
    .local v1, "emulated":Z
    if-eqz v1, :cond_6

    .line 877
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 881
    :goto_0
    sget-object v5, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iget v6, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    aget-object v2, v5, v6

    .line 882
    .local v2, "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    if-eqz v5, :cond_2

    .line 883
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 885
    :cond_2
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/applications/ManageApplications;->-get8(Lcom/android/settings/applications/ManageApplications;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/applications/ManageApplications;->-get7(Lcom/android/settings/applications/ManageApplications;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 890
    :cond_3
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/applications/ManageApplications;->-get8(Lcom/android/settings/applications/ManageApplications;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 891
    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    .line 892
    sget-object v5, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 891
    invoke-direct {v3, v2, v5}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .end local v2    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .local v3, "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    move-object v2, v3

    .line 897
    .end local v3    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .restart local v2    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    :cond_4
    :goto_1
    iget v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v5, :pswitch_data_0

    .line 912
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 915
    .local v0, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v5, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v3, v2, v5}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 917
    .end local v2    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .restart local v3    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    move-object v4, v3

    .line 918
    .local v4, "finalFilterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBgHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;

    invoke-direct {v6, p0, v3, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;-><init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 866
    return-void

    .line 870
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    .end local v1    # "emulated":Z
    .end local v3    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .end local v4    # "finalFilterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    :cond_5
    return-void

    .line 879
    .restart local v1    # "emulated":Z
    :cond_6
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 886
    .restart local v2    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    :cond_7
    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    .line 887
    sget-object v5, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 886
    invoke-direct {v3, v2, v5}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 888
    .end local v2    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .restart local v3    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    .line 889
    sget-object v5, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_SUBSTRATUM:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 888
    invoke-direct {v2, v3, v5}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 885
    .end local v3    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .restart local v2    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 893
    :cond_8
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/applications/ManageApplications;->-get7(Lcom/android/settings/applications/ManageApplications;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 894
    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    .line 895
    sget-object v5, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_SUBSTRATUM:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 894
    invoke-direct {v3, v2, v5}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .end local v2    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .restart local v3    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    move-object v2, v3

    .end local v3    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .restart local v2    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 899
    :pswitch_0
    iget v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v5, :pswitch_data_1

    .line 907
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 901
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_1
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 904
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_2
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0x7f110335
        :pswitch_0
    .end packed-switch

    .line 899
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->release()V

    .line 853
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    .line 851
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 3
    .param p1, "sort"    # I

    .prologue
    .line 827
    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 830
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->resume()V

    .line 831
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 832
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->resume()V

    .line 835
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 826
    :goto_0
    return-void

    .line 837
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method

.method public setFilter(I)V
    .locals 1
    .param p1, "filter"    # I

    .prologue
    .line 822
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 823
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 821
    return-void
.end method

.method public setOverrideFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 1
    .param p1, "overrideFilter"    # Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 818
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 816
    return-void
.end method
