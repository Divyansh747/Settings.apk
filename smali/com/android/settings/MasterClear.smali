.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/OptionsMenuFragment;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MasterClear$1;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .param p1, "request"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/MasterClear;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/OptionsMenuFragment;-><init>()V

    .line 113
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 60
    return-void
.end method

.method private establishInitialState()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 135
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f110170

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 136
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f11016e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 138
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f11016f

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 147
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    .line 148
    .local v3, "isExtStorageEmulated":Z
    if-nez v3, :cond_0

    .line 149
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v6

    .line 148
    if-eqz v6, :cond_2

    .line 150
    :cond_0
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f11016d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 153
    .local v2, "externalOption":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f110169

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 156
    .local v1, "externalAlsoErased":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v8, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    .end local v1    # "externalAlsoErased":Landroid/view/View;
    .end local v2    # "externalOption":Landroid/view/View;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 172
    .local v5, "um":Landroid/os/UserManager;
    invoke-direct {p0, v5}, Lcom/android/settings/MasterClear;->loadAccountList(Landroid/os/UserManager;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v0, "contentDescription":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f110168

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 175
    .local v4, "masterClearContainer":Landroid/view/View;
    invoke-direct {p0, v4, v0}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 176
    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    return-void

    .line 160
    .end local v0    # "contentDescription":Ljava/lang/StringBuffer;
    .end local v4    # "masterClearContainer":Landroid/view/View;
    .end local v5    # "um":Landroid/os/UserManager;
    .restart local v1    # "externalAlsoErased":Landroid/view/View;
    .restart local v2    # "externalOption":Landroid/view/View;
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "externalAlsoErased":Landroid/view/View;
    .end local v2    # "externalOption":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v7, Lcom/android/settings/MasterClear$2;

    invoke-direct {v7, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "description"    # Ljava/lang/StringBuffer;

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 184
    check-cast v2, Landroid/view/ViewGroup;

    .line 185
    .local v2, "vGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 186
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 187
    .local v1, "nextChild":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "i":I
    .end local v1    # "nextChild":Landroid/view/View;
    .end local v2    # "vGroup":Landroid/view/ViewGroup;
    :cond_1
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 190
    check-cast v3, Landroid/widget/TextView;

    .line 191
    .local v3, "vText":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 192
    const-string/jumbo v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    .end local v3    # "vText":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 197
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 36
    .param p1, "um"    # Landroid/os/UserManager;

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f11016a

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 203
    .local v9, "accountsLabel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f11016b

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 204
    .local v12, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 207
    .local v13, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v33

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v27

    .line 208
    .local v27, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v28

    .line 210
    .local v28, "profilesSize":I
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    .line 213
    .local v23, "mgr":Landroid/accounts/AccountManager;
    const-string/jumbo v33, "layout_inflater"

    .line 212
    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/LayoutInflater;

    .line 215
    .local v21, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    .line 216
    .local v8, "accountsCount":I
    const/16 v26, 0x0

    .local v26, "profileIndex":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    .line 217
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    .line 218
    .local v32, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    .line 219
    .local v25, "profileId":I
    new-instance v31, Landroid/os/UserHandle;

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 220
    .local v31, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v7

    .line 221
    .local v7, "accounts":[Landroid/accounts/Account;
    array-length v5, v7

    .line 222
    .local v5, "N":I
    if-nez v5, :cond_1

    .line 216
    :cond_0
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 225
    :cond_1
    add-int/2addr v8, v5

    .line 227
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v15

    .line 229
    .local v15, "descs":[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v15

    .line 231
    .local v4, "M":I
    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v30

    .line 232
    .local v30, "titleView":Landroid/view/View;
    const v33, 0x1020016

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 233
    .local v29, "titleText":Landroid/widget/TextView;
    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v33

    if-eqz v33, :cond_2

    const v33, 0x7f0e0085

    :goto_1
    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 235
    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v5, :cond_0

    .line 238
    aget-object v6, v7, v19

    .line 239
    .local v6, "account":Landroid/accounts/Account;
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v13, v0}, Lcom/android/settings/Utils;->showAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_3

    .line 237
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 234
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v19    # "i":I
    :cond_2
    const v33, 0x7f0e0084

    goto :goto_1

    .line 243
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v19    # "i":I
    :cond_3
    const/4 v14, 0x0

    .line 244
    .local v14, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_4
    move/from16 v0, v22

    if-ge v0, v4, :cond_4

    .line 245
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    aget-object v34, v15, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 246
    aget-object v14, v15, v22

    .line 250
    .end local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_4
    if-nez v14, :cond_6

    .line 251
    const-string/jumbo v33, "MasterClear"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "No descriptor for account name="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 252
    const-string/jumbo v35, " type="

    .line 251
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 252
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 251
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 244
    .restart local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 255
    .end local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_6
    const/16 v20, 0x0

    .line 257
    .local v20, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v33, v0

    if-eqz v33, :cond_7

    .line 258
    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 259
    const/16 v34, 0x0

    .line 258
    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v31

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    .line 260
    .local v10, "authContext":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    .line 261
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 260
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 268
    .end local v10    # "authContext":Landroid/content/Context;
    .end local v20    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_5
    if-nez v20, :cond_8

    .line 269
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 272
    :cond_8
    const v33, 0x7f0400a2

    .line 273
    const/16 v34, 0x0

    .line 272
    move-object/from16 v0, v21

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 274
    .local v11, "child":Landroid/widget/TextView;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 276
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 265
    .end local v11    # "child":Landroid/widget/TextView;
    .restart local v20    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v17

    .line 266
    .local v17, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v33, "MasterClear"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Invalid icon id for account type "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 263
    .end local v17    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v16

    .line 264
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v33, "MasterClear"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Bad package name for account type "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 280
    .end local v4    # "M":I
    .end local v5    # "N":I
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "accounts":[Landroid/accounts/Account;
    .end local v15    # "descs":[Landroid/accounts/AuthenticatorDescription;
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "i":I
    .end local v20    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v22    # "j":I
    .end local v25    # "profileId":I
    .end local v29    # "titleText":Landroid/widget/TextView;
    .end local v30    # "titleView":Landroid/view/View;
    .end local v31    # "userHandle":Landroid/os/UserHandle;
    .end local v32    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_9
    if-lez v8, :cond_a

    .line 281
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f11016c

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 286
    .local v24, "otherUsers":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v33

    sub-int v33, v33, v28

    if-lez v33, :cond_b

    const/16 v18, 0x1

    .line 287
    .local v18, "hasOtherUsers":Z
    :goto_6
    if-eqz v18, :cond_c

    const/16 v33, 0x0

    :goto_7
    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    return-void

    .line 286
    .end local v18    # "hasOtherUsers":Z
    :cond_b
    const/16 v18, 0x0

    goto :goto_6

    .line 287
    .restart local v18    # "hasOtherUsers":Z
    :cond_c
    const/16 v33, 0x8

    goto :goto_7
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 81
    const v2, 0x7f0e05eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 80
    invoke-virtual {v1, p1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 102
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "erase_sd"

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 105
    const v3, 0x7f0e05f7

    const/4 v6, 0x0

    move-object v5, v4

    .line 104
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 101
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 314
    const/16 v0, 0x42

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/OptionsMenuFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 89
    return-void

    .line 94
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    .line 85
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 293
    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 295
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 296
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 297
    const-string/jumbo v4, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 296
    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    :cond_0
    const v3, 0x7f0400a4

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 299
    :cond_1
    if-eqz v0, :cond_2

    .line 300
    const v3, 0x7f04001f

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 301
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v0, v7}, Lcom/android/settings/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Z)V

    .line 302
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 303
    return-object v2

    .line 306
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    const v3, 0x7f0400a1

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 308
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 309
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v3
.end method
