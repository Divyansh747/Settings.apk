.class Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;
.super Lcom/android/settings/SaveChosenLockWorkerBase;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPattern:Ljava/lang/String;

.field private mLockVirgin:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3
    .param p1, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 744
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    .line 739
    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 8

    .prologue
    .line 715
    const/4 v1, 0x0

    .line 716
    .local v1, "result":Landroid/content/Intent;
    iget v3, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    .line 717
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 719
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v4, :cond_1

    .line 722
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 727
    :goto_0
    if-nez v2, :cond_0

    .line 728
    const-string/jumbo v4, "ChooseLockPattern"

    const-string/jumbo v5, "critical: no token returned for known good pattern"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "result":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 732
    .local v1, "result":Landroid/content/Intent;
    const-string/jumbo v4, "hw_auth_token"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 735
    .end local v1    # "result":Landroid/content/Intent;
    :cond_1
    return-object v1

    .line 723
    .local v1, "result":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v2, 0x0

    .local v2, "token":[B
    goto :goto_0
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;I)V
    .locals 10
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "credentialRequired"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p7, "currentPattern"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "ZZJ",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p6, "chosenPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p8

    .line 702
    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    .line 704
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    .line 705
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    .line 706
    move/from16 v0, p8

    iput v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    .line 708
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    .line 710
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->start()V

    .line 701
    return-void

    .line 708
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
