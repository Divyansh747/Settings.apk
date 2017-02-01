.class public Lcom/android/settings/CustomListPreference;
.super Landroid/support/v7/preference/ListPreference;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;,
        Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method


# virtual methods
.method protected getConfirmationMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isAutoClosePreference()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 48
    return-void
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 51
    return-void
.end method

.method protected onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 45
    return-void
.end method
