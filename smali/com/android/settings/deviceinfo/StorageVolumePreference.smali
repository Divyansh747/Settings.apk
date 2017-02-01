.class public Lcom/android/settings/deviceinfo/StorageVolumePreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageVolumePreference$1;
    }
.end annotation


# instance fields
.field private mColor:I

.field private mSecondaryColor:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mUsedPercent:I

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p3, "color"    # I
    .param p4, "totalBytes"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 131
    new-instance v9, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;

    invoke-direct {v9, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreference;)V

    iput-object v9, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    .line 55
    const-class v9, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 56
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 57
    move/from16 v0, p3

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 59
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 60
    .local v7, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v12, 0x1010038

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v7, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v12, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mSecondaryColor:I

    .line 63
    const v9, 0x7f040131

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setLayoutResource(I)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setKey(Ljava/lang/String;)V

    .line 66
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    const-string/jumbo v9, "private"

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 70
    const v9, 0x7f020105

    invoke-virtual {p1, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 75
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    .line 78
    .local v5, "path":Ljava/io/File;
    const-wide/16 v12, 0x0

    cmp-long v9, p4, v12

    if-gtz v9, :cond_0

    .line 79
    invoke-virtual {v5}, Ljava/io/File;->getTotalSpace()J

    move-result-wide p4

    .line 81
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    .line 82
    .local v2, "freeBytes":J
    sub-long v10, p4, v2

    .line 84
    .local v10, "usedBytes":J
    invoke-static {p1, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "used":Ljava/lang/String;
    move-wide/from16 v0, p4

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "total":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v9, v12

    const/4 v12, 0x1

    aput-object v6, v9, v12

    const v12, 0x7f0e0570

    invoke-virtual {p1, v12, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    const-wide/16 v12, 0x0

    cmp-long v9, p4, v12

    if-lez v9, :cond_1

    .line 88
    const-wide/16 v12, 0x64

    mul-long/2addr v12, v10

    div-long v12, v12, p4

    long-to-int v9, v12

    iput v9, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 91
    :cond_1
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v12

    cmp-long v9, v2, v12

    if-gez v9, :cond_2

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/deviceinfo/StorageSettings;->getColorWarning(Landroid/content/res/Resources;)I

    move-result v9

    iput v9, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 93
    const v9, 0x7f020124

    invoke-virtual {p1, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 101
    .end local v2    # "freeBytes":J
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "total":Ljava/lang/String;
    .end local v8    # "used":Ljava/lang/String;
    .end local v10    # "usedBytes":J
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 102
    iget v9, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 103
    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-nez v9, :cond_3

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v9

    .line 105
    if-eqz v9, :cond_3

    .line 107
    const v9, 0x7f0400dd

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setWidgetLayoutResource(I)V

    .line 52
    :cond_3
    return-void

    .line 72
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const v9, 0x7f020111

    invoke-virtual {p1, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .restart local v4    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 97
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(I)V

    .line 98
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    goto :goto_1
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 113
    const v2, 0x7f1101bb

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 114
    .local v1, "unmount":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 115
    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mSecondaryColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_0
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 120
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 128
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 112
    return-void

    .line 125
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
