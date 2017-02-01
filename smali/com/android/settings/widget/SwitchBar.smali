.class public Lcom/android/settings/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;,
        Lcom/android/settings/widget/SwitchBar$SavedState;
    }
.end annotation


# static fields
.field private static XML_ATTRIBUTES:[I


# instance fields
.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mLabel:Ljava/lang/String;

.field private mLoggingIntialized:Z

.field private mMetricsTag:Ljava/lang/String;

.field private mRestrictedIcon:Landroid/view/View;

.field private mSummary:Ljava/lang/String;

.field private final mSummarySpan:Landroid/text/style/TextAppearanceSpan;

.field private mSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mSwitchChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const v0, 0x7f01015c

    const v1, 0x7f01015d

    .line 77
    const v2, 0x7f01015e

    .line 75
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/widget/SwitchBar;->XML_ATTRIBUTES:[I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iput-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04016d

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 96
    sget-object v5, Lcom/android/settings/widget/SwitchBar;->XML_ATTRIBUTES:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v4, v5

    .line 98
    .local v4, "switchBarMarginStart":I
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v3, v5

    .line 99
    .local v3, "switchBarMarginEnd":I
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 100
    .local v2, "switchBarBackgroundColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    const v5, 0x7f110259

    invoke-virtual {p0, v5}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    .line 103
    iget-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0b8e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 105
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    iget-object v6, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    const v7, 0x7f1001e7

    invoke-direct {v5, v6, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    .line 106
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->updateText()V

    .line 107
    iget-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 108
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 110
    const v5, 0x7f11025a

    invoke-virtual {p0, v5}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/ToggleSwitch;

    iput-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 113
    iget-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v5, v8}, Lcom/android/settings/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 114
    iget-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v5, v9}, Lcom/android/settings/widget/ToggleSwitch;->setImportantForAccessibility(I)V

    .line 115
    iget-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v5}, Lcom/android/settings/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 116
    .restart local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SwitchBar;->setBackgroundColor(I)V

    .line 118
    iget-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v5, v2}, Lcom/android/settings/widget/ToggleSwitch;->setBackgroundColor(I)V

    .line 120
    new-instance v5, Lcom/android/settings/widget/SwitchBar$1;

    invoke-direct {v5, p0}, Lcom/android/settings/widget/SwitchBar$1;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 127
    const v5, 0x7f1101fd

    invoke-virtual {p0, v5}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    .line 129
    invoke-virtual {p0, p0}, Lcom/android/settings/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 91
    return-void
.end method

.method private updateText()V
    .locals 5

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void

    .line 155
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/android/settings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 156
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 157
    .local v1, "start":I
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 158
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 341
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSwitch()Lcom/android/settings/widget/ToggleSwitch;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    .line 250
    iget-boolean v0, p0, Lcom/android/settings/widget/SwitchBar;->mLoggingIntialized:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/switch_bar|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 253
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/widget/SwitchBar;->mLoggingIntialized:Z

    .line 254
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->propagateChecked(Z)V

    .line 249
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 232
    iget-boolean v1, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/switch_bar|restricted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 234
    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 231
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 237
    .local v0, "isChecked":Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 363
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 354
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 348
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 327
    check-cast v0, Lcom/android/settings/widget/SwitchBar$SavedState;

    .line 329
    .local v0, "ss":Lcom/android/settings/widget/SwitchBar$SavedState;
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 331
    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean v2, v0, Lcom/android/settings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 332
    iget-boolean v1, v0, Lcom/android/settings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 333
    iget-boolean v1, v0, Lcom/android/settings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 334
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean v1, v0, Lcom/android/settings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_1

    move-object v1, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->requestLayout()V

    .line 326
    return-void

    .line 333
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 334
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 317
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 319
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/settings/widget/SwitchBar$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 320
    .local v0, "ss":Lcom/android/settings/widget/SwitchBar$SavedState;
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/widget/SwitchBar$SavedState;->checked:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->isShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/widget/SwitchBar$SavedState;->visible:Z

    .line 322
    return-object v0
.end method

.method public propagateChecked(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 243
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    .line 162
    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 167
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 192
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 193
    if-eqz p1, :cond_0

    .line 194
    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 195
    iput-boolean v2, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    .line 196
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ToggleSwitch;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :goto_0
    return-void

    .line 201
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    .line 202
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 177
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 179
    return-void

    .line 181
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 176
    return-void
.end method

.method public setMetricsTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 141
    if-eqz p1, :cond_0

    const v0, 0x7f0e0b8d

    .line 140
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->updateText()V

    .line 139
    return-void

    .line 141
    :cond_0
    const v0, 0x7f0e0b8e

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    :cond_0
    return-void
.end method
