.class public Lcom/android/settings/AppHeader;
.super Ljava/lang/Object;
.source "AppHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/ViewGroup;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "pinnedHeader"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040024

    invoke-virtual {v0, v1, p5, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 54
    .local v7, "bar":Landroid/view/View;
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-static/range {v0 .. v8}, Lcom/android/settings/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;

    .line 55
    invoke-virtual {p5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public static createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 7
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 42
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public static createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;II)V
    .locals 7
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "tintColorRes"    # I

    .prologue
    .line 60
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public static createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 9
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "tintColorRes"    # I
    .param p6, "externalSettings"    # Landroid/content/Intent;

    .prologue
    .line 66
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v7

    .line 67
    .local v7, "bar":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/AppHeader;->includeAppInfo(Landroid/app/Fragment;)Z

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/android/settings/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;

    .line 65
    return-void
.end method

.method public static createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 7
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "externalSettings"    # Landroid/content/Intent;

    .prologue
    .line 47
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public static includeAppInfo(Landroid/app/Fragment;)Z
    .locals 5
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, "args":Landroid/os/Bundle;
    const/4 v2, 0x1

    .line 114
    .local v2, "showInfo":Z
    if-eqz v0, :cond_0

    const-string/jumbo v3, "hideInfoButton"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const/4 v2, 0x0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    const-string/jumbo v3, "hideInfoButton"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    const/4 v2, 0x0

    .line 121
    :cond_1
    return v2
.end method

.method public static setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "includeAppInfo"    # Z
    .param p6, "tintColorRes"    # I
    .param p7, "bar"    # Landroid/view/View;
    .param p8, "externalSettings"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 74
    const v3, 0x7f110073

    invoke-virtual {p7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    if-eqz p6, :cond_0

    .line 77
    invoke-virtual {p0, p6}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 80
    :cond_0
    const v3, 0x7f110074

    invoke-virtual {p7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, "appName":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    if-eqz p3, :cond_1

    const-string/jumbo v3, "os"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    :cond_1
    :goto_0
    return-object p7

    .line 84
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p7, v3}, Landroid/view/View;->setClickable(Z)V

    .line 85
    new-instance v3, Lcom/android/settings/AppHeader$1;

    invoke-direct {v3, p5, p3, p4, p0}, Lcom/android/settings/AppHeader$1;-><init>(ZLjava/lang/String;ILandroid/app/Activity;)V

    invoke-virtual {p7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    if-eqz p8, :cond_1

    .line 98
    const v3, 0x7f110075

    invoke-virtual {p7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "appSettings":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    new-instance v3, Lcom/android/settings/AppHeader$2;

    invoke-direct {v3, p0, p8}, Lcom/android/settings/AppHeader$2;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
