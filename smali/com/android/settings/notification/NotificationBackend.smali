.class public Lcom/android/settings/notification/NotificationBackend;
.super Ljava/lang/Object;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationBackend$AppRow;,
        Lcom/android/settings/notification/NotificationBackend$Row;
    }
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBypassZenMode(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    :try_start_0
    sget-object v2, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->getPriority(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NotificationBackend"

    const-string/jumbo v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    return v1
.end method

.method public getImportance(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 137
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->getImportance(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    const/16 v1, -0x3e8

    return v1
.end method

.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 78
    :try_start_0
    sget-object v3, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v3, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    .local v1, "enabled":Z
    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "enabled":Z
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NotificationBackend"

    const-string/jumbo v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    return v2
.end method

.method public getVisibilityOverride(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 108
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->getVisibilityOverride(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/16 v1, -0x3e8

    return v1
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 41
    new-instance v0, Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend$AppRow;-><init>()V

    .line 42
    .local v0, "row":Lcom/android/settings/notification/NotificationBackend$AppRow;
    iget-object v2, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 43
    iget v2, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 45
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 52
    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getImportance(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appImportance:I

    .line 53
    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getBypassZenMode(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appBypassDnd:Z

    .line 54
    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getVisibilityOverride(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appVisOverride:I

    .line 55
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockScreenSecure:Z

    .line 57
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "NotificationBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "app"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v6, 0x1

    .line 61
    iget-object v4, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v3

    .line 62
    .local v3, "row":Lcom/android/settings/notification/NotificationBackend$AppRow;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2, p3}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->cantBlock:Z

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 64
    const v5, 0x1070064

    .line 63
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "nonBlockablePkgs":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 66
    array-length v0, v2

    .line 67
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 68
    iget-object v4, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    iput-boolean v6, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->cantSilence:Z

    iput-boolean v6, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->cantBlock:Z

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public setBypassZenMode(Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "bypassZen"    # Z

    .prologue
    const/4 v2, 0x0

    .line 97
    :try_start_0
    sget-object v3, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    .line 98
    if-eqz p3, :cond_0

    const/4 v1, 0x2

    .line 97
    :goto_0
    invoke-interface {v3, p1, p2, v1}, Landroid/app/INotificationManager;->setPriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v1, 0x1

    return v1

    :cond_0
    move v1, v2

    .line 98
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v3, "Error calling NoMan"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return v2
.end method

.method public setImportance(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 127
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/INotificationManager;->setImportance(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v1, 0x1

    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v1, 0x0

    return v1
.end method

.method public setVisibilityOverride(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "override"    # I

    .prologue
    .line 117
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/INotificationManager;->setVisibilityOverride(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const/4 v1, 0x1

    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v1, 0x0

    return v1
.end method
