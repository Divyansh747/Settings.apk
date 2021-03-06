.class Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;
.super Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;
.source "SupportItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mEnabled1:Z

.field private mEnabled2:Z

.field private mSummary1:Ljava/lang/CharSequence;

.field private mSummary2:Ljava/lang/CharSequence;

.field private mText1:I

.field private mText2:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mEnabled1:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mEnabled2:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mSummary1:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mSummary2:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mText1:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mText2:Ljava/lang/CharSequence;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 657
    const v0, 0x7f04013b

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;-><init>(Landroid/content/Context;I)V

    .line 656
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 653
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;-><init>(Landroid/content/Context;I)V

    .line 652
    return-void
.end method


# virtual methods
.method build()Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;
    .locals 2

    .prologue
    .line 696
    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V

    return-object v0
.end method

.method bridge synthetic build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;

    move-result-object v0

    return-object v0
.end method

.method setEnabled1(Z)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 661
    iput-boolean p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mEnabled1:Z

    .line 662
    return-object p0
.end method

.method setEnabled2(Z)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 686
    iput-boolean p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mEnabled2:Z

    .line 687
    return-object p0
.end method

.method setSummary1(Ljava/lang/String;)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;
    .locals 0
    .param p1, "summary1"    # Ljava/lang/String;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mSummary1:Ljava/lang/CharSequence;

    .line 682
    return-object p0
.end method

.method setSummary2(Ljava/lang/String;)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;
    .locals 0
    .param p1, "summary2"    # Ljava/lang/String;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mSummary2:Ljava/lang/CharSequence;

    .line 692
    return-object p0
.end method

.method setText1(I)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;
    .locals 0
    .param p1, "text1"    # I

    .prologue
    .line 666
    iput p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mText1:I

    .line 667
    return-object p0
.end method

.method setText2(I)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;
    .locals 1
    .param p1, "text2"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->mText2:Ljava/lang/CharSequence;

    .line 672
    return-object p0
.end method
