.class final Lcom/android/settings/datausage/DataUsageSummary$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    .line 486
    const/4 v3, 0x0

    .line 485
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    .line 488
    .local v0, "hasMobileData":Z
    if-eqz v0, :cond_0

    .line 489
    const-string/jumbo v2, "restrict_background"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    return-object v1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v1, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 466
    .local v0, "resource":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f08001c

    iput v2, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 467
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    new-instance v0, Landroid/provider/SearchIndexableResource;

    .end local v0    # "resource":Landroid/provider/SearchIndexableResource;
    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 471
    .restart local v0    # "resource":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f08001d

    iput v2, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 472
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_0
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    new-instance v0, Landroid/provider/SearchIndexableResource;

    .end local v0    # "resource":Landroid/provider/SearchIndexableResource;
    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 476
    .restart local v0    # "resource":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f080021

    iput v2, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 477
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_1
    return-object v1
.end method
