.class final Lcom/android/settings/deviceinfo/StorageSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v7, 0x7f0e051f

    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 583
    .local v0, "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 584
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 585
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 588
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v6, 0x7f0e06d5

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 589
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 590
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 593
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 594
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    .line 595
    .local v5, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 596
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->-wrap0(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 597
    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 598
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 599
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 603
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 604
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v6, 0x7f0e053d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 605
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 606
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 609
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v6, 0x7f0e053b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 610
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 611
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 614
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v6, 0x7f0e053f

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 615
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 616
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 619
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v6, 0x7f0e0542

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 620
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 621
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 624
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v6, 0x7f0e0543

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 625
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 626
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 629
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v6, 0x7f0e0541

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 630
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 631
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 634
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v6, 0x7f0e0545

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 635
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 636
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 639
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v6, 0x7f0e0544

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 640
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 641
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    return-object v1
.end method
