.class Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;
.super Landroid/text/style/URLSpan;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LearnMoreSpan"
.end annotation


# static fields
.field private static final TYPEFACE_MEDIUM:Landroid/graphics/Typeface;


# instance fields
.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 752
    const-string/jumbo v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 751
    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    .line 749
    return-void
.end method

.method private constructor <init>(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    const/4 v1, 0x0

    move-object v0, v1

    .line 764
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 757
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 765
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 763
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 760
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 759
    return-void
.end method

.method public static linkify(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Ljava/lang/CharSequence;
    .locals 11
    .param p0, "rawText"    # Ljava/lang/CharSequence;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    const/4 v8, 0x0

    .line 792
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 793
    .local v5, "msg":Landroid/text/SpannableString;
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v9

    const-class v10, Landroid/text/Annotation;

    invoke-virtual {v5, v8, v9, v10}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/Annotation;

    .line 794
    .local v6, "spans":[Landroid/text/Annotation;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 795
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    array-length v9, v6

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v0, v6, v8

    .line 796
    .local v0, "annotation":Landroid/text/Annotation;
    invoke-virtual {v0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 797
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 798
    .local v7, "start":I
    invoke-virtual {v5, v0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 799
    .local v2, "end":I
    const/4 v4, 0x0

    .line 800
    .local v4, "link":Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;
    const-string/jumbo v10, "url"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 801
    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;

    .end local v4    # "link":Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;
    invoke-direct {v4, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;-><init>(Ljava/lang/String;)V

    .line 805
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 806
    invoke-virtual {v5, v4}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v1, v4, v7, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 795
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 802
    .restart local v4    # "link":Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;
    :cond_2
    const-string/jumbo v10, "admin_details"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 803
    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;

    .end local v4    # "link":Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;
    invoke-direct {v4, p2}, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;-><init>(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .local v4, "link":Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;
    goto :goto_1

    .line 809
    .end local v0    # "annotation":Landroid/text/Annotation;
    .end local v2    # "end":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "link":Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;
    .end local v7    # "start":I
    :cond_3
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 770
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 771
    .local v0, "ctx":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v3, :cond_0

    .line 772
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v3}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 769
    :goto_0
    return-void

    .line 774
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 776
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 777
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "FingerprintSettings"

    .line 779
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Actvity was not found for intent, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 778
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 786
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 787
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 788
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 785
    return-void
.end method
