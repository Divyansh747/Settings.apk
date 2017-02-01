.class public Lcom/android/settings/ChooseLockGeneric;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;,
        Lcom/android/settings/ChooseLockGeneric$InternalActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const-class v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 66
    new-instance v1, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 67
    .local v1, "modIntent":Landroid/content/Intent;
    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    const-string/jumbo v2, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 72
    :cond_0
    const-string/jumbo v2, ":settings:hide_drawer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    :cond_1
    return-object v1
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
