.class public Lcom/android/settings/SeekBarDialogPreference;
.super Lcom/android/settings/CustomDialogPreference;
.source "SeekBarDialogPreference.java"


# instance fields
.field private final mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const v0, 0x7f0400cc

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarDialogPreference;->setDialogLayoutResource(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/SeekBarDialogPreference;->createActionButtons()V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/SeekBarDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarDialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 33
    return-void
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "dialogView"    # Landroid/view/View;

    .prologue
    .line 68
    const v0, 0x7f1101ad

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarDialogPreference;->setPositiveButtonText(I)V

    .line 52
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarDialogPreference;->setNegativeButtonText(I)V

    .line 50
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 59
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, "iconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/settings/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/settings/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :goto_0
    return-void

    .line 63
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
