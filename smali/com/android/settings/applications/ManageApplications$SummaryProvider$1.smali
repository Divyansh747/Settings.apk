.class Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;
.super Lcom/android/settings/applications/AppCounter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplications$SummaryProvider;->setListening(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ManageApplications$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications$SummaryProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/applications/ManageApplications$SummaryProvider;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;->this$1:Lcom/android/settings/applications/ManageApplications$SummaryProvider;

    invoke-direct {p0, p2}, Lcom/android/settings/applications/AppCounter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1282
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    .line 1283
    return v3

    .line 1284
    :cond_0
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    .line 1285
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 1286
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "Substratum_Parent"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1287
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "Substratum_IconPack"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1288
    :cond_1
    return v4

    .line 1291
    :cond_2
    return v3

    .line 1293
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1294
    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    .line 1293
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1295
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1293
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1296
    .local v1, "launchIntent":Landroid/content/Intent;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1297
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;->mPm:Landroid/content/pm/PackageManager;

    .line 1299
    const v6, 0xc0200

    .line 1297
    invoke-virtual {v5, v1, v6, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1303
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    :goto_0
    return v3

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method protected onCountComplete(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;->this$1:Lcom/android/settings/applications/ManageApplications$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->-get1(Lcom/android/settings/applications/ManageApplications$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;->this$1:Lcom/android/settings/applications/ManageApplications$SummaryProvider;

    .line 1277
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;->this$1:Lcom/android/settings/applications/ManageApplications$SummaryProvider;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->-get0(Lcom/android/settings/applications/ManageApplications$SummaryProvider;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0e0c85

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1276
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 1275
    return-void
.end method
