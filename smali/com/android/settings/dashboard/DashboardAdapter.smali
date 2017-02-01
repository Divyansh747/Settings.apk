.class public Lcom/android/settings/dashboard/DashboardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;,
        Lcom/android/settings/dashboard/DashboardAdapter$IconCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static SUGGESTION_MODE_COLLAPSED:I

.field private static SUGGESTION_MODE_DEFAULT:I

.field private static SUGGESTION_MODE_EXPANDED:I


# instance fields
.field private final mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

.field private mId:I

.field private final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShowingAll:Z

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLte4GEnabler:Lcom/android/settings/Lte4GEnabler;

.field private mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

.field private mSuggestionMode:I

.field private mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mSw:Landroid/widget/Switch;

.field private final mTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/DashboardAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/dashboard/DashboardAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/dashboard/DashboardAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/DashboardAdapter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->hasMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/dashboard/DashboardAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/dashboard/DashboardAdapter;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->set4GEnableSummary(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/dashboard/DashboardAdapter;Landroid/view/View;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->showRemoveOption(Landroid/view/View;Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    .line 69
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    .line 70
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/SuggestionParser;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lcom/android/settingslib/SuggestionParser;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/SuggestionParser;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 99
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    .line 94
    sget v1, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    iput v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    .line 96
    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    .line 101
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 102
    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    invoke-direct {v1, p1}, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    .line 103
    new-instance v1, Lcom/android/settings/Lte4GEnabler;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/android/settings/Lte4GEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings/Lte4GEnabler;

    .line 104
    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    .line 105
    iput-object p4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    .line 107
    invoke-virtual {p0, v5}, Lcom/android/settings/dashboard/DashboardAdapter;->setHasStableIds(Z)V

    .line 109
    const/4 v0, 0x1

    .line 110
    .local v0, "showAll":Z
    if-eqz p3, :cond_0

    .line 111
    const-string/jumbo v1, "suggestion_list"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    .line 112
    const-string/jumbo v1, "category_list"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    .line 113
    const-string/jumbo v1, "is_showing_all"

    invoke-virtual {p3, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 115
    .local v0, "showAll":Z
    const-string/jumbo v1, "suggestion_mode"

    sget v2, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    .line 114
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    .line 117
    .end local v0    # "showAll":Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->setShowingAll(Z)V

    .line 100
    return-void
.end method

.method private countItem(Ljava/lang/Object;IZI)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "type"    # I
    .param p3, "add"    # Z
    .param p4, "nameSpace"    # I

    .prologue
    .line 272
    if-eqz p3, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    add-int/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    iget v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    .line 271
    return-void
.end method

.method private getDisplayableSuggestionCount()I
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 283
    .local v0, "suggestionSize":I
    iget v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v2, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    if-ne v1, v2, :cond_1

    .line 284
    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 283
    .end local v0    # "suggestionSize":I
    :cond_0
    :goto_0
    return v0

    .line 285
    .restart local v0    # "suggestionSize":I
    :cond_1
    iget v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v2, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    if-eq v1, v2, :cond_0

    .line 286
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 531
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 537
    :cond_0
    return-object v0
.end method

.method private hasMoreSuggestions()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 429
    iget v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v3, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    if-eq v2, v3, :cond_0

    .line 430
    iget v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v3, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    if-ne v2, v3, :cond_2

    .line 431
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 431
    goto :goto_0

    :cond_2
    move v0, v1

    .line 430
    goto :goto_0
.end method

.method private isAPMAndSimStateEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 167
    const-string/jumbo v2, "airplane_mode_on"

    .line 166
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings/Lte4GEnabler;

    invoke-virtual {v0}, Lcom/android/settings/Lte4GEnabler;->isThereSimReady()Z

    move-result v0

    .line 166
    :cond_0
    return v0
.end method

.method private onBindCategory(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "category"    # Lcom/android/settingslib/drawer/DashboardCategory;

    .prologue
    .line 446
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    return-void
.end method

.method private onBindSeeAll(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    .prologue
    .line 450
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e0c81

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 452
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter$7;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/DashboardAdapter$7;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    return-void

    .line 451
    :cond_0
    const v0, 0x7f0e0c80

    goto :goto_0
.end method

.method private onBindSuggestionHeader(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V
    .locals 9
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 393
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->hasMoreSuggestions()Z

    move-result v0

    .line 395
    .local v0, "moreSuggestions":Z
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->getDisplayableSuggestionCount()I

    move-result v4

    sub-int v2, v3, v4

    .line 396
    .local v2, "undisplayedSuggestionCount":I
    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v3, 0x7f0200b7

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0e0caa

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    if-eqz v0, :cond_1

    .line 401
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    .line 403
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 402
    const v5, 0x7f130015

    .line 401
    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "summaryContentDescription":Ljava/lang/String;
    :goto_1
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 409
    if-nez v2, :cond_2

    .line 410
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :goto_2
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/android/settings/dashboard/DashboardAdapter$6;

    invoke-direct {v4, p0}, Lcom/android/settings/dashboard/DashboardAdapter$6;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    return-void

    .line 397
    .end local v1    # "summaryContentDescription":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0200b6

    goto :goto_0

    .line 405
    :cond_1
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0c9a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "summaryContentDescription":Ljava/lang/String;
    goto :goto_1

    .line 412
    :cond_2
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    .line 413
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0e0cab

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 435
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    iget-object v2, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private recountItems()V
    .locals 15

    .prologue
    const/16 v14, 0x7d0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 222
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->reset()V

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "hasConditions":Z
    const/4 v3, 0x0

    .end local v1    # "hasConditions":Z
    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 225
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v8}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v6

    .line 226
    .local v6, "shouldShow":Z
    or-int/2addr v1, v6

    .line 227
    .local v1, "hasConditions":Z
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const v11, 0x7f04003f

    const/16 v12, 0xbb8

    invoke-direct {p0, v8, v11, v6, v12}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "hasConditions":Z
    .end local v6    # "shouldShow":Z
    :cond_0
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    .line 230
    .local v2, "hasSuggestions":Z
    :goto_1
    if-eqz v1, :cond_2

    move v8, v2

    :goto_2
    const v11, 0x7f04005b

    invoke-direct {p0, v13, v11, v8, v9}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 231
    const v8, 0x7f040138

    invoke-direct {p0, v13, v8, v2, v9}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 232
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->resetCount()V

    .line 233
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    if-eqz v8, :cond_4

    .line 234
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->getDisplayableSuggestionCount()I

    move-result v5

    .line 235
    .local v5, "maxSuggestions":I
    const/4 v3, 0x0

    :goto_3
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 236
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ge v3, v5, :cond_3

    move v8, v10

    :goto_4
    const v12, 0x7f040139

    .line 237
    const/16 v13, 0x3e8

    .line 236
    invoke-direct {p0, v11, v12, v8, v13}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 229
    .end local v2    # "hasSuggestions":Z
    .end local v5    # "maxSuggestions":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "hasSuggestions":Z
    goto :goto_1

    :cond_2
    move v8, v9

    .line 230
    goto :goto_2

    .restart local v5    # "maxSuggestions":I
    :cond_3
    move v8, v9

    .line 236
    goto :goto_4

    .line 240
    .end local v5    # "maxSuggestions":I
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->resetCount()V

    .line 241
    const/4 v3, 0x0

    :goto_5
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_9

    .line 242
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 243
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-boolean v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    const v9, 0x7f040058

    invoke-direct {p0, v0, v9, v8, v14}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 244
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    .line 245
    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    .line 246
    .local v7, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v8, v7, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Lte4GEnableActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 247
    iget-boolean v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    if-nez v8, :cond_5

    .line 248
    sget-object v8, Lcom/android/settings/dashboard/DashboardSummary;->INITIAL_ITEMS:[Ljava/lang/String;

    .line 249
    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 248
    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 247
    :goto_7
    const v9, 0x7f04005d

    invoke-direct {p0, v7, v9, v8, v14}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 244
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    move v8, v10

    .line 247
    goto :goto_7

    .line 251
    :cond_6
    iget-boolean v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    if-nez v8, :cond_7

    .line 252
    sget-object v8, Lcom/android/settings/dashboard/DashboardSummary;->INITIAL_ITEMS:[Ljava/lang/String;

    .line 253
    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 252
    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 251
    :goto_9
    const v9, 0x7f04005c

    invoke-direct {p0, v7, v9, v8, v14}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    goto :goto_8

    :cond_7
    move v8, v10

    goto :goto_9

    .line 241
    .end local v7    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 257
    .end local v0    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v4    # "j":I
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 221
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 267
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    .line 264
    return-void
.end method

.method private resetCount()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    .line 260
    return-void
.end method

.method private set4GEnableSummary(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    .line 174
    const v1, 0x7f0e0d44

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    .line 177
    const v1, 0x7f0e0d45

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showRemoveOption(Landroid/view/View;Lcom/android/settingslib/drawer/Tile;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 362
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    .line 363
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f10017c

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 362
    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 364
    .local v0, "popup":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0e0cac

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 365
    new-instance v2, Lcom/android/settings/dashboard/DashboardAdapter$5;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/dashboard/DashboardAdapter$5;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V

    .line 364
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 376
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 361
    return-void
.end method


# virtual methods
.method public disableSuggestion(Lcom/android/settingslib/drawer/Tile;)V
    .locals 4
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    if-nez v0, :cond_0

    .line 381
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/SuggestionParser;->dismissSuggestion(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 385
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 386
    const/4 v2, 0x2

    .line 387
    const/4 v3, 0x1

    .line 384
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 388
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SuggestionParser;->markCategoryDone(Ljava/lang/String;)V

    .line 379
    :cond_1
    return-void
.end method

.method public getItem(J)Ljava/lang/Object;
    .locals 5
    .param p1, "itemId"    # J

    .prologue
    .line 522
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 522
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLte4GEnabler()Lcom/android/settings/Lte4GEnabler;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings/Lte4GEnabler;

    return-object v0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public notifyChanged(Lcom/android/settingslib/drawer/Tile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 212
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 296
    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "position"    # I

    .prologue
    .line 297
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 299
    :sswitch_0
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {p0, p1, v3}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindCategory(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V

    goto :goto_0

    .line 302
    :sswitch_1
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 303
    .local v1, "tile":Lcom/android/settingslib/drawer/Tile;
    invoke-direct {p0, p1, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V

    .line 304
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 305
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 308
    .end local v1    # "tile":Lcom/android/settingslib/drawer/Tile;
    :sswitch_2
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 309
    .local v2, "tileSitch":Lcom/android/settingslib/drawer/Tile;
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    .line 310
    invoke-direct {p0, p1, v2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V

    .line 311
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v4, 0x7f11007c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    .line 313
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings/Lte4GEnabler;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Lcom/android/settings/Lte4GEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 314
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/android/settings/dashboard/DashboardAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/settings/dashboard/DashboardAdapter$1;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->updateLte4GEnabler()V

    goto :goto_0

    .line 324
    .end local v2    # "tileSitch":Lcom/android/settingslib/drawer/Tile;
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindSuggestionHeader(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V

    goto :goto_0

    .line 327
    :sswitch_4
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    .line 328
    .local v0, "suggestion":Lcom/android/settingslib/drawer/Tile;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V

    .line 329
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/android/settings/dashboard/DashboardAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter$2;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v4, 0x7f11023f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 338
    new-instance v4, Lcom/android/settings/dashboard/DashboardAdapter$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter$3;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V

    .line 337
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 346
    .end local v0    # "suggestion":Lcom/android/settingslib/drawer/Tile;
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindSeeAll(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V

    goto/16 :goto_0

    .line 349
    :sswitch_6
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/conditional/Condition;

    .line 350
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    .line 351
    :goto_1
    new-instance v5, Lcom/android/settings/dashboard/DashboardAdapter$4;

    invoke-direct {v5, p0}, Lcom/android/settings/dashboard/DashboardAdapter$4;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    .line 349
    invoke-static {v3, p1, v4, p0, v5}, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils;->bindViews(Lcom/android/settings/dashboard/conditional/Condition;Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 350
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x7f04003f -> :sswitch_6
        0x7f040058 -> :sswitch_0
        0x7f04005c -> :sswitch_1
        0x7f04005d -> :sswitch_2
        0x7f040110 -> :sswitch_5
        0x7f040138 -> :sswitch_3
        0x7f040139 -> :sswitch_4
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f1100e7

    if-ne v4, v5, :cond_0

    .line 478
    return-void

    .line 480
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f1100e6

    if-ne v4, v5, :cond_2

    .line 481
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 483
    const v6, 0x7f0e0510

    .line 482
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 481
    if-eqz v4, :cond_1

    .line 484
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v2, "newIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 487
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 486
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 488
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 489
    .local v1, "listSize":I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    .line 490
    return-void

    .line 493
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "listSize":I
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v4, v5}, Lcom/android/settings/SettingsActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    .line 494
    return-void

    .line 496
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    if-ne v4, v5, :cond_3

    .line 497
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 498
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v5

    .line 497
    const/16 v6, 0x177

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 499
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/conditional/Condition;->onPrimaryClick()V

    .line 476
    :goto_0
    return-void

    .line 501
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/dashboard/conditional/Condition;

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    .line 502
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 503
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v5

    .line 502
    const/16 v6, 0x175

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v0, 0x0

    .line 291
    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 292
    const v3, 0x7f04005d

    if-ne p2, v3, :cond_0

    const/4 v0, 0x1

    .line 291
    :cond_0
    invoke-direct {v1, v2, v0}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;Z)V

    return-object v1
.end method

.method public onExpandClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    if-ne v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 511
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    .line 510
    const/16 v2, 0x176

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    .line 518
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 508
    return-void

    .line 514
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/Condition;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    .line 515
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 516
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    .line 515
    const/16 v2, 0x175

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 542
    const-string/jumbo v0, "suggestion_list"

    .line 543
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 542
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 546
    const-string/jumbo v0, "category_list"

    .line 547
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 546
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 549
    :cond_1
    const-string/jumbo v0, "is_showing_all"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 550
    const-string/jumbo v0, "suggestion_mode"

    iget v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    .line 185
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 186
    .local v3, "tintColor":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    .line 187
    const/4 v6, 0x1

    .line 186
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 189
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v4, v4, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 190
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v4, v4, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 192
    .local v2, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 193
    iget-object v5, v2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    iget-object v4, v2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget v5, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 189
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    .end local v2    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "j":I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    .line 181
    return-void
.end method

.method public setCategoriesAndSuggestions(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    .line 127
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    .line 125
    return-void
.end method

.method public setConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    .line 205
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    .line 203
    return-void
.end method

.method public setShowingAll(Z)V
    .locals 0
    .param p1, "showingAll"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIsShowingAll:Z

    .line 218
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    .line 216
    return-void
.end method

.method public updateLte4GEnabler()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    if-nez v1, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->isAPMAndSimStateEnable()Z

    move-result v0

    .line 150
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->sw:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v2, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v1, 0x7f0200e1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    if-nez v0, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const v2, 0x7f0e0d46

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 145
    :goto_1
    return-void

    .line 156
    :cond_1
    const v1, 0x7f0200e2

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->set4GEnableSummary(Z)V

    goto :goto_1
.end method
