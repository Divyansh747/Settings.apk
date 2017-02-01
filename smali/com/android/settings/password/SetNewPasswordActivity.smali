.class public Lcom/android/settings/password/SetNewPasswordActivity;
.super Landroid/app/Activity;
.source "SetNewPasswordActivity.java"

# interfaces
.implements Lcom/android/settings/password/SetNewPasswordController$Ui;


# instance fields
.field private mNewPasswordAction:Ljava/lang/String;

.field private mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public launchChooseLock(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "chooseLockFingerprintExtras"    # Landroid/os/Bundle;

    .prologue
    .line 47
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    iget-object v2, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 52
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetNewPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->finish()V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/android/settings/password/SetNewPasswordController;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/password/SetNewPasswordController;-><init>(Landroid/content/Context;Lcom/android/settings/password/SetNewPasswordController$Ui;)V

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;

    .line 42
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;

    invoke-virtual {v0}, Lcom/android/settings/password/SetNewPasswordController;->dispatchSetNewPasswordIntent()V

    .line 37
    return-void
.end method
