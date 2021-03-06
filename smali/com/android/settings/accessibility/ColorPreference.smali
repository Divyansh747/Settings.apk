.class public Lcom/android/settings/accessibility/ColorPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "ColorPreference.java"


# instance fields
.field private mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

.field private mPreviewEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const v0, 0x7f04008c

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ColorPreference;->setDialogLayoutResource(I)V

    .line 44
    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ColorPreference;->setListItemLayoutResource(I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected getTitleAt(I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 70
    .local v3, "title":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 71
    return-object v3

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ColorPreference;->getValueAt(I)I

    move-result v4

    .line 76
    .local v4, "value":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 77
    .local v2, "r":I
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 78
    .local v1, "g":I
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 79
    .local v0, "b":I
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const v7, 0x7f0e07d7

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ColorPreference;->getValueAt(I)I

    move-result v1

    .line 116
    .local v1, "argb":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 118
    .local v0, "alpha":I
    const v6, 0x7f1100b9

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 119
    .local v4, "swatch":Landroid/widget/ImageView;
    const/16 v6, 0xff

    if-ge v0, v6, :cond_1

    .line 120
    const v6, 0x7f02017c

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 125
    :goto_0
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 126
    .local v2, "foreground":Landroid/graphics/drawable/Drawable;
    instance-of v6, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_2

    .line 127
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .end local v2    # "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 132
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 133
    .local v5, "title":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 134
    const v6, 0x7f1100ba

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 135
    .local v3, "summary":Landroid/widget/TextView;
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .end local v3    # "summary":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 122
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 129
    .restart local v2    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 86
    iget-boolean v3, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewEnabled:Z

    if-eqz v3, :cond_0

    .line 87
    const v3, 0x7f1101ac

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 88
    .local v1, "previewImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    .line 89
    .local v0, "argb":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    if-ge v3, v4, :cond_1

    .line 90
    const v3, 0x7f02017c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 95
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v3, :cond_2

    .line 96
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    .line 97
    iget-object v3, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 103
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 104
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 83
    .end local v0    # "argb":I
    .end local v1    # "previewImage":Landroid/widget/ImageView;
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 92
    .restart local v0    # "argb":I
    .restart local v1    # "previewImage":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_1

    .line 106
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 109
    :cond_4
    const v3, 0x3e4ccccd    # 0.2f

    goto :goto_3
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
