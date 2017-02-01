.class Lcom/android/settings/DisplaySettings$5;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;

.field final synthetic val$cb_showagain:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplaySettings;
    .param p2, "val$cb_showagain"    # Landroid/widget/CheckBox;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$5;->this$0:Lcom/android/settings/DisplaySettings;

    iput-object p2, p0, Lcom/android/settings/DisplaySettings$5;->val$cb_showagain:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$5;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->-get1(Lcom/android/settings/DisplaySettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "is_checked"

    iget-object v2, p0, Lcom/android/settings/DisplaySettings$5;->val$cb_showagain:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 437
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$5;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->-get1(Lcom/android/settings/DisplaySettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 438
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$5;->this$0:Lcom/android/settings/DisplaySettings;

    const-string/jumbo v1, "1.30"

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$5;->this$0:Lcom/android/settings/DisplaySettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDialog(I)V

    .line 440
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$5;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->-get0(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/WarnedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/WarnedPreference;->waringDialogOk()V

    .line 435
    return-void
.end method
