.class Lcom/android/settings/datausage/DataSaverBackend$1$2;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSaverBackend$1;->onRestrictBackgroundWhitelistChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/DataSaverBackend$1;

.field final synthetic val$uid:I

.field final synthetic val$whitelisted:Z


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverBackend$1;IZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/datausage/DataSaverBackend$1;
    .param p2, "val$uid"    # I
    .param p3, "val$whitelisted"    # Z

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend$1$2;->this$1:Lcom/android/settings/datausage/DataSaverBackend$1;

    iput p2, p0, Lcom/android/settings/datausage/DataSaverBackend$1$2;->val$uid:I

    iput-boolean p3, p0, Lcom/android/settings/datausage/DataSaverBackend$1$2;->val$whitelisted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$1$2;->this$1:Lcom/android/settings/datausage/DataSaverBackend$1;

    iget-object v0, v0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    iget v1, p0, Lcom/android/settings/datausage/DataSaverBackend$1$2;->val$uid:I

    iget-boolean v2, p0, Lcom/android/settings/datausage/DataSaverBackend$1$2;->val$whitelisted:Z

    invoke-static {v0, v1, v2}, Lcom/android/settings/datausage/DataSaverBackend;->-wrap2(Lcom/android/settings/datausage/DataSaverBackend;IZ)V

    .line 204
    return-void
.end method
