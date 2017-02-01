.class Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 509
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 507
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary()V
    .locals 18

    .prologue
    .line 521
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const-class v14, Landroid/os/storage/StorageManager;

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 522
    .local v5, "storageManager":Landroid/os/storage/StorageManager;
    invoke-static {}, Lcom/android/settings/deviceinfo/StorageSettings;->-get0()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_0

    .line 523
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/settings/deviceinfo/StorageSettings;->-set0(J)J

    .line 525
    :cond_0
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v12

    .line 526
    .local v12, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    const-wide/16 v6, 0x0

    .line 527
    .local v6, "privateFreeBytes":J
    const-wide/16 v8, 0x0

    .line 528
    .local v8, "privateTotalBytes":J
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 529
    .local v2, "info":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    .line 530
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    if-eqz v4, :cond_1

    .line 533
    invoke-static {v2}, Lcom/android/settings/deviceinfo/StorageSettings;->-wrap1(Landroid/os/storage/VolumeInfo;)J

    move-result-wide v14

    add-long/2addr v8, v14

    .line 534
    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v14

    add-long/2addr v6, v14

    goto :goto_0

    .line 536
    .end local v2    # "info":Landroid/os/storage/VolumeInfo;
    .end local v4    # "path":Ljava/io/File;
    :cond_2
    sub-long v10, v8, v6

    .line 537
    .local v10, "privateUsedBytes":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    .line 537
    const v16, 0x7f0e0c87

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 519
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 514
    if-eqz p1, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->updateSummary()V

    .line 513
    :cond_0
    return-void
.end method
