.class Lcom/android/settings/TetherSettings$4;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->showTurnOffWifiDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;

.field final synthetic val$notShowAgainCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;
    .param p2, "val$sharedpreferences"    # Landroid/content/SharedPreferences;
    .param p3, "val$notShowAgainCheckbox"    # Landroid/widget/CheckBox;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/settings/TetherSettings$4;->this$0:Lcom/android/settings/TetherSettings;

    iput-object p2, p0, Lcom/android/settings/TetherSettings$4;->val$sharedpreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/settings/TetherSettings$4;->val$notShowAgainCheckbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/settings/TetherSettings$4;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 686
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "TurnOffWifiShowAgain"

    .line 687
    iget-object v1, p0, Lcom/android/settings/TetherSettings$4;->val$notShowAgainCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 686
    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 688
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 684
    return-void

    .line 687
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
