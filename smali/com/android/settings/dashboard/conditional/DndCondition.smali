.class public Lcom/android/settings/dashboard/conditional/DndCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "DndCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;
    }
.end annotation


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mZen:I


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 41
    return-void
.end method

.method private getZenState()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    packed-switch v0, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0b09

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    const v1, 0x7f0e0b08

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0b0a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0c97

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020135

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x17d

    return v0
.end method

.method protected getReceiverClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 73
    const-class v0, Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 103
    .local v0, "isForever":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10405d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1

    .end local v0    # "isForever":Z
    :cond_0
    move v1, v2

    .line 102
    goto :goto_0

    :cond_1
    move v0, v2

    .line 101
    goto :goto_1

    .line 104
    .restart local v0    # "isForever":Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 105
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 104
    invoke-static {v1, v3, v4, v2}, Landroid/service/notification/ZenModeConfig;->getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/dashboard/conditional/DndCondition;->getZenState()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0e0c9f

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 124
    const-class v2, Landroid/app/NotificationManager;

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 125
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v1, "DndCondition"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/conditional/DndCondition;->setActive(Z)V

    .line 121
    return-void

    .line 128
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onPrimaryClick()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/StatusBarManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 117
    .local v0, "statusBar":Landroid/app/StatusBarManager;
    const-string/jumbo v1, "dnd"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->expandSettingsPanel(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public refreshState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 49
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    iput v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    .line 50
    iget v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 51
    .local v1, "zenModeEnabled":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 56
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/DndCondition;->setActive(Z)V

    .line 46
    return-void

    .line 54
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    goto :goto_0
.end method

.method restoreState(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;->restoreState(Landroid/os/PersistableBundle;)V

    .line 68
    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    .line 66
    return-void
.end method

.method saveState(Landroid/os/PersistableBundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .prologue
    .line 61
    const-string/jumbo v0, "state"

    iget v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;->saveState(Landroid/os/PersistableBundle;)Z

    move-result v0

    return v0
.end method

.method protected shouldAlwaysListenToBroadcast()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method
