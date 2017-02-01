.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;
.super Landroid/app/DialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemInfoFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "parent"    # Landroid/app/Fragment;

    .prologue
    .line 783
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 785
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;-><init>()V

    .line 786
    .local v0, "dialog":Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 787
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "systemInfo"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 782
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 792
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 793
    const v1, 0x7f0e058c

    .line 792
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 794
    const v1, 0x104000a

    const/4 v2, 0x0

    .line 792
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
