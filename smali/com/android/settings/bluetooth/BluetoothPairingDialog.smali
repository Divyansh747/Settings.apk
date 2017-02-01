.class public final Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;,
        Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;
    }
.end annotation


# instance fields
.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mHandler:Landroid/os/Handler;

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Landroid/widget/EditText;

.field private mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mType:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 488
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method private createConfirmationDialog()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 340
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 341
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 340
    const v2, 0x7f0e0359

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 342
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 343
    const v1, 0x7f0e004b

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 344
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 345
    const v1, 0x7f0e004d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 346
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 338
    return-void
.end method

.method private createConsentDialog()V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 352
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 353
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 352
    const v2, 0x7f0e0359

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 354
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 355
    const v1, 0x7f0e004b

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 356
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 357
    const v1, 0x7f0e004d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 358
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 350
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 363
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 364
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    new-array v2, v5, [Ljava/lang/Object;

    .line 365
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 364
    const v3, 0x7f0e0359

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 366
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 367
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 368
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 373
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 374
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 377
    .local v1, "pinBytes":[B
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 12

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040036

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 197
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f11009d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 198
    .local v6, "messageViewCaptionHint":Landroid/widget/TextView;
    const v8, 0x7f11009f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 199
    .local v5, "messageView2":Landroid/widget/TextView;
    const v8, 0x7f11009e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 201
    .local v0, "alphanumericPin":Landroid/widget/CheckBox;
    const v8, 0x7f1100a0

    .line 200
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 202
    .local v1, "contactSharing":Landroid/widget/CheckBox;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 203
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 202
    const v9, 0x7f0e0364

    invoke-virtual {p0, v9, v8}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 205
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 207
    :cond_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 208
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 222
    :goto_0
    new-instance v8, Lcom/android/settings/bluetooth/BluetoothPairingDialog$3;

    invoke-direct {v8, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$3;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 233
    const v8, 0x7f11009c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 234
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 238
    const v4, 0x7f0e035d

    .line 240
    .local v4, "messageIdHint":I
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    sparse-switch v8, :sswitch_data_0

    .line 258
    const-string/jumbo v8, "BluetoothPairingDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v8, 0x0

    return-object v8

    .line 209
    .end local v4    # "messageIdHint":I
    :cond_1
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 210
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v8

    .line 213
    const/16 v9, 0x408

    .line 212
    if-ne v8, v9, :cond_3

    .line 214
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 215
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 217
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 242
    .restart local v4    # "messageIdHint":I
    :sswitch_0
    const v4, 0x7f0e035e

    .line 245
    :sswitch_1
    const v3, 0x7f0e035f

    .line 247
    .local v3, "messageId":I
    const/16 v2, 0x10

    .line 262
    .local v2, "maxLength":I
    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 263
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 265
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    .line 266
    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 265
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 268
    return-object v7

    .line 251
    .end local v2    # "maxLength":I
    .end local v3    # "messageId":I
    :sswitch_2
    const v3, 0x7f0e0360

    .line 253
    .restart local v3    # "messageId":I
    const/4 v2, 0x6

    .line 254
    .restart local v2    # "maxLength":I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private createUserEntryDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 182
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 183
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 182
    const v2, 0x7f0e0359

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 184
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createPinEntryView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 185
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 186
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 187
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 188
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 191
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 192
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040035

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 273
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f110098

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 274
    .local v4, "pairingViewCaption":Landroid/widget/TextView;
    const v7, 0x7f110099

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 275
    .local v5, "pairingViewContent":Landroid/widget/TextView;
    const v7, 0x7f11009a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 277
    .local v2, "messagePairing":Landroid/widget/TextView;
    const v7, 0x7f11009b

    .line 276
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 278
    .local v0, "contactSharing":Landroid/widget/CheckBox;
    new-array v7, v11, [Ljava/lang/Object;

    .line 279
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 278
    const v8, 0x7f0e0364

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 281
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 283
    :cond_0
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 284
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 298
    :goto_0
    new-instance v7, Lcom/android/settings/bluetooth/BluetoothPairingDialog$4;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$4;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "messageCaption":Ljava/lang/String;
    const/4 v3, 0x0

    .line 311
    .local v3, "pairingContent":Ljava/lang/String;
    iget v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v7, :pswitch_data_0

    .line 325
    const-string/jumbo v7, "BluetoothPairingDialog"

    const-string/jumbo v8, "Incorrect pairing type received, not creating view"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-object v12

    .line 285
    .end local v1    # "messageCaption":Ljava/lang/String;
    .end local v3    # "pairingContent":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v7

    if-ne v7, v13, :cond_2

    .line 286
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    .line 289
    const/16 v8, 0x408

    .line 288
    if-ne v7, v8, :cond_3

    .line 290
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v11}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v13}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 314
    .restart local v1    # "messageCaption":Ljava/lang/String;
    .restart local v3    # "pairingContent":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 329
    .end local v3    # "pairingContent":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_4

    .line 330
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_4
    return-object v6

    .line 321
    .restart local v3    # "pairingContent":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onCancel()V
    .locals 2

    .prologue
    .line 436
    const-string/jumbo v0, "BluetoothPairingDialog"

    const-string/jumbo v1, "Pairing dialog canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 435
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string/jumbo v2, "BluetoothPairingDialog"

    const-string/jumbo v3, "Pairing dialog accepted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 431
    const-string/jumbo v2, "BluetoothPairingDialog"

    const-string/jumbo v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    :pswitch_0
    return-void

    .line 404
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 405
    .local v1, "pinBytes":[B
    if-nez v1, :cond_0

    .line 406
    return-void

    .line 408
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 412
    .end local v1    # "pinBytes":[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 413
    .local v0, "passkey":I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 418
    .end local v0    # "passkey":I
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 427
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private popTimedout()V
    .locals 4

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 484
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x88b8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 481
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 390
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 391
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 392
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 389
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 392
    goto :goto_0

    .line 394
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 465
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 474
    if-eqz p2, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 472
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 448
    packed-switch p2, :pswitch_data_0

    .line 459
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 447
    :goto_0
    return-void

    .line 450
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v5, -0x80000000

    .line 102
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 110
    return-void

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 114
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_1

    .line 115
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Error: BluetoothAdapter not supported by system"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 117
    return-void

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 120
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapClientProfile()Lcom/android/settingslib/bluetooth/PbapClientProfile;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 122
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 123
    const-string/jumbo v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    .line 125
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 169
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void

    .line 129
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog()V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->popTimedout()V

    goto :goto_0

    .line 135
    :pswitch_1
    const-string/jumbo v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .local v2, "passkey":I
    if-ne v2, v5, :cond_2

    .line 137
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%06d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConfirmationDialog()V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->popTimedout()V

    goto :goto_0

    .line 147
    .end local v2    # "passkey":I
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConsentDialog()V

    .line 148
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->popTimedout()V

    goto :goto_0

    .line 154
    :pswitch_3
    const-string/jumbo v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 155
    .local v1, "pairingKey":I
    if-ne v1, v5, :cond_3

    .line 156
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 159
    :cond_3
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 160
    const-string/jumbo v3, "%06d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 164
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyOrPinDialog()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->popTimedout()V

    goto/16 :goto_0

    .line 162
    :cond_4
    const-string/jumbo v3, "%04d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 383
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 384
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 441
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 444
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 469
    return-void
.end method
