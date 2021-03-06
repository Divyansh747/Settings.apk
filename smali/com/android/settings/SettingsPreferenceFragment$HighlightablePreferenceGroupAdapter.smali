.class public Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;
.super Landroid/support/v7/preference/PreferenceGroupAdapter;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighlightablePreferenceGroupAdapter"
.end annotation


# instance fields
.field private mHighlightPosition:I


# direct methods
.method public constructor <init>(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 760
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 757
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 759
    return-void
.end method


# virtual methods
.method public highlight(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 764
    iput p1, p0, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 763
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 770
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    .line 771
    iget v3, p0, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v3, :cond_1

    .line 772
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 773
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 774
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 775
    .local v0, "centerX":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 776
    .local v1, "centerY":I
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 778
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 779
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 780
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 769
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
