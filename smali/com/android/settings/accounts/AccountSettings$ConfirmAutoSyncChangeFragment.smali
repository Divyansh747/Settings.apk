.class public Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# instance fields
.field private mEnabling:Z

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/accounts/AccountSettings;
    .param p1, "enabling"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 650
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 651
    .local v0, "dialog":Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;
    iput-boolean p1, v0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 652
    iput-object p2, v0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 653
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 654
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 647
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 659
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 660
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 661
    const-string/jumbo v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 662
    const-string/jumbo v2, "userHandle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iput-object v2, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 665
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 666
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    .line 667
    const v2, 0x7f0e097f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 668
    const v2, 0x7f0e0980

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 674
    :goto_0
    new-instance v2, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 681
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 683
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 670
    :cond_1
    const v2, 0x7f0e097d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 671
    const v2, 0x7f0e097e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 688
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 689
    const-string/jumbo v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 690
    const-string/jumbo v0, "userHandle"

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 687
    return-void
.end method
