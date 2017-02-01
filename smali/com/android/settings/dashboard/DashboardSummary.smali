.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/android/settings/InstrumentedFragment;
.source "DashboardSummary.java"

# interfaces
.implements Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;
.implements Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;
.implements Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$1;,
        Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;
    }
.end annotation


# static fields
.field public static final INITIAL_ITEMS:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

.field private mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

.field private mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

.field private mSuggestionsChecks:Lcom/android/settings/dashboard/SuggestionsChecks;

.field private mSuggestionsHiddenLogged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsShownLogged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settingslib/SuggestionParser;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/SuggestionsChecks;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/settings/dashboard/SuggestionsChecks;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/DashboardSummary;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    const-class v1, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 61
    const-class v1, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 62
    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 63
    const-class v1, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 64
    const-class v1, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 65
    const-class v1, Lcom/android/settings/Settings$StorageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 59
    sput-object v0, Lcom/android/settings/dashboard/DashboardSummary;->INITIAL_ITEMS:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method

.method private rebuildUI()V
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const-string/jumbo v1, "DashboardSummary"

    const-string/jumbo v2, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 251
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategories(Ljava/util/List;)V

    .line 254
    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 243
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x23

    return v0
.end method

.method public onCategoriesChanged()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    .line 258
    return-void
.end method

.method public onConditionsChanged()V
    .locals 2

    .prologue
    .line 264
    const-string/jumbo v0, "DashboardSummary"

    const-string/jumbo v1, "onConditionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setConditions(Ljava/util/List;)V

    .line 263
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    .local v2, "startTime":J
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    new-instance v4, Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 110
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, v6}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 111
    new-instance v4, Lcom/android/settingslib/SuggestionParser;

    .line 112
    const-string/jumbo v5, "suggestions"

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const v6, 0x7f080066

    .line 111
    invoke-direct {v4, v1, v5, v6}, Lcom/android/settingslib/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    .line 113
    new-instance v4, Lcom/android/settings/dashboard/SuggestionsChecks;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/dashboard/SuggestionsChecks;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/settings/dashboard/SuggestionsChecks;

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    .line 116
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    .line 102
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string/jumbo v4, "suggestions_shown_logged"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 118
    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    .line 121
    const-string/jumbo v4, "suggestions_hidden_logged"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 120
    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    const v0, 0x7f040057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    .line 130
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onDestroy()V

    .line 128
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 210
    const-string/jumbo v0, "suggestions_hidden_logged"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 211
    const-string/jumbo v0, "suggestions_shown_logged"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    const-string/jumbo v0, "scroll_position"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 10

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 136
    .local v4, "startTime":J
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStart()V

    .line 138
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardAdapter;->getLte4GEnabler()Lcom/android/settings/Lte4GEnabler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/Lte4GEnabler;->resume()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v7, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 140
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 141
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/Condition;

    .line 142
    .local v0, "c":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    goto :goto_0

    .line 147
    .end local v0    # "c":Lcom/android/settings/dashboard/conditional/Condition;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 148
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "suggestion$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    .line 149
    .local v3, "suggestion":Lcom/android/settingslib/drawer/Tile;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v8

    .line 149
    const/16 v9, 0x180

    invoke-static {v7, v9, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 154
    .end local v3    # "suggestion":Lcom/android/settingslib/drawer/Tile;
    .end local v6    # "suggestion$iterator":Ljava/util/Iterator;
    :cond_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    return-void
.end method

.method public onStop()V
    .locals 7

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStop()V

    .line 164
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/DashboardAdapter;->getLte4GEnabler()Lcom/android/settings/Lte4GEnabler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/Lte4GEnabler;->pause()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v5, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 167
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 168
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/Condition;

    .line 169
    .local v0, "c":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    goto :goto_0

    .line 173
    .end local v0    # "c":Lcom/android/settings/dashboard/conditional/Condition;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    .line 174
    return-void

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v5

    if-nez v5, :cond_4

    .line 177
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "suggestion$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    .line 178
    .local v3, "suggestion":Lcom/android/settingslib/drawer/Tile;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 180
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 182
    const/16 v6, 0x181

    .line 181
    invoke-static {v5, v6, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 162
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "suggestion":Lcom/android/settingslib/drawer/Tile;
    .end local v4    # "suggestion$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 222
    .local v2, "startTime":J
    const v1, 0x7f1100e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    .line 223
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 224
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 225
    if-eqz p2, :cond_0

    .line 226
    const-string/jumbo v1, "scroll_position"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    .local v0, "scrollPosition":I
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 229
    .end local v0    # "scrollPosition":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 230
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, v5}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setHasFixedSize(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setListener(Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    new-instance v4, Lcom/android/settings/dashboard/DashboardDecorator;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/dashboard/DashboardDecorator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 233
    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    .line 234
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v6}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v6

    .line 233
    invoke-direct {v1, v4, v5, p2, v6}, Lcom/android/settings/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;Lcom/android/settingslib/SuggestionParser;Landroid/os/Bundle;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    .line 235
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 236
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/SummaryLoader;->setAdapter(Lcom/android/settings/dashboard/DashboardAdapter;)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-static {v1}, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils;->addDismiss(Landroid/support/v7/widget/RecyclerView;)V

    .line 240
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    .line 220
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 191
    .local v0, "startTime":J
    if-eqz p1, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V

    .line 193
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->refreshAll()V

    .line 189
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->remListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V

    goto :goto_0
.end method
