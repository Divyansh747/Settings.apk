.class public Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;
.super Landroid/app/DialogFragment;
.source "AppManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/AppManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplaceExistingVpnFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/vpn2/AppManagementFragment;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/vpn2/AppManagementFragment;

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ReplaceExistingVpn"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 334
    new-instance v0, Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;

    invoke-direct {v0}, Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;-><init>()V

    .line 335
    .local v0, "frag":Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ReplaceExistingVpn"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 332
    .end local v0    # "frag":Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/vpn2/AppManagementFragment;

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/AppManagementFragment;

    .line 354
    .local v0, "target":Lcom/android/settings/vpn2/AppManagementFragment;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/vpn2/AppManagementFragment;->-wrap1(Lcom/android/settings/vpn2/AppManagementFragment;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-static {v0}, Lcom/android/settings/vpn2/AppManagementFragment;->-wrap3(Lcom/android/settings/vpn2/AppManagementFragment;)V

    .line 351
    .end local v0    # "target":Lcom/android/settings/vpn2/AppManagementFragment;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 342
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    const v1, 0x7f0e09b8

    .line 342
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e09b9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e09ac

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 342
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e09b0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
