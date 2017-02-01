.class public Lcom/android/settings/IccLockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/IccLockSettings$1;,
        Lcom/android/settings/IccLockSettings$2;,
        Lcom/android/settings/IccLockSettings$3;,
        Lcom/android/settings/IccLockSettings$4;
    }
.end annotation


# instance fields
.field private mDialogState:I

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings/EditPinPreference;

.field private mPinToggle:Landroid/support/v14/preference/SwitchPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mToState:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 117
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    new-instance v0, Lcom/android/settings/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$3;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 520
    new-instance v0, Lcom/android/settings/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$4;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 59
    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 528
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 5
    .param p1, "attemptsRemaining"    # I

    .prologue
    const/4 v4, 0x0

    .line 475
    if-nez p1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e050d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 485
    const-string/jumbo v3, " displayMessage="

    .line 484
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-object v0

    .line 477
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 480
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 479
    const v3, 0x7f130009

    .line 478
    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 482
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e050e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private iccLockChanged(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v2, 0x1

    .line 442
    if-eqz p1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 449
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 441
    return-void

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private iccPinChanged(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    const/4 v2, 0x1

    .line 454
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 463
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 452
    return-void

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e0503

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    const/4 v2, 0x0

    .line 458
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 490
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 491
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 490
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 499
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 500
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 501
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 497
    return-void
.end method

.method private setDialogValues()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0e04ff

    .line 342
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v0, ""

    .line 344
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 364
    :goto_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    iput-object v4, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 341
    return-void

    .line 346
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e04f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e04fa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e04fb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 352
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e04fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e04fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 360
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e04fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 334
    return-void

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 338
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    .line 332
    return-void
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 436
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 438
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 432
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 467
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 468
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 469
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 468
    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 466
    return-void
.end method

.method private updatePreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 252
    :cond_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 250
    :goto_1
    return-void

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    goto :goto_0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 272
    const/16 v0, 0x38

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->finish()V

    .line 164
    return-void

    .line 167
    :cond_0
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 169
    const-string/jumbo v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    .line 170
    const-string/jumbo v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    .line 171
    if-eqz p1, :cond_1

    const-string/jumbo v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string/jumbo v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 173
    const-string/jumbo v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 174
    const-string/jumbo v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 175
    const-string/jumbo v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 178
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 195
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setPersistent(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 159
    return-void

    .line 180
    :pswitch_0
    const-string/jumbo v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_0

    .line 184
    :pswitch_1
    const-string/jumbo v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 209
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 210
    .local v4, "numSims":I
    const/4 v12, 0x1

    if-le v4, v12, :cond_3

    .line 211
    const v12, 0x7f040090

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 212
    .local v11, "view":Landroid/view/View;
    const v12, 0x7f110063

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 213
    .local v6, "prefs_container":Landroid/view/ViewGroup;
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v11, v6, v12}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-super {v0, v1, v6, v2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    .line 215
    .local v5, "prefs":Landroid/view/View;
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    const v12, 0x1020012

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    .line 218
    const v12, 0x1020013

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TabWidget;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/IccLockSettings;->mTabWidget:Landroid/widget/TabWidget;

    .line 219
    const v12, 0x102000a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/IccLockSettings;->mListView:Landroid/widget/ListView;

    .line 221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v12}, Landroid/widget/TabHost;->setup()V

    .line 222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v12}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    .line 226
    .local v8, "sm":Landroid/telephony/SubscriptionManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 227
    invoke-virtual {v8, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    .line 228
    .local v9, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 229
    if-nez v9, :cond_0

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    add-int/lit8 v16, v3, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const v16, 0x7f0e0a9b

    move/from16 v0, v16

    invoke-virtual {v12, v0, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 229
    :goto_1
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/settings/IccLockSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_1

    .line 233
    .end local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .line 235
    .local v7, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v7, :cond_2

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 237
    return-object v11

    .line 236
    :cond_2
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    goto :goto_2

    .line 239
    .end local v3    # "i":I
    .end local v5    # "prefs":Landroid/view/View;
    .end local v6    # "prefs_container":Landroid/view/ViewGroup;
    .end local v7    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v8    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v11    # "view":Landroid/view/View;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 240
    invoke-super/range {p0 .. p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v12

    return-object v12
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    return-void
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 373
    if-nez p2, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 375
    return-void

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0500

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 382
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 383
    return-void

    .line 385
    :cond_1
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 372
    :goto_0
    return-void

    .line 387
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 390
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 391
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 392
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 393
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 394
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 397
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 398
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 399
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 400
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 403
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0501

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 405
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 406
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 407
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 409
    :cond_2
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 410
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 418
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2

    .line 420
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 422
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 423
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 424
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 429
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 422
    goto :goto_0

    .line 425
    :cond_2
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p1, v2, :cond_0

    .line 426
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 427
    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 277
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 276
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string/jumbo v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string/jumbo v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_0
    return-void

    .line 314
    :pswitch_0
    const-string/jumbo v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :pswitch_1
    const-string/jumbo v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 247
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    .line 245
    return-void
.end method
