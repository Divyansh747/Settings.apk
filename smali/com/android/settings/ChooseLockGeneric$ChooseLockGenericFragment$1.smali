.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p2, "val$userId"    # I

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    iput p2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;->val$userId:I

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 729
    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fingerprint removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    .line 728
    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 737
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    .line 736
    :cond_0
    return-void
.end method
