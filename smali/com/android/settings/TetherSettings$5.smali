.class Lcom/android/settings/TetherSettings$5;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->showFirstUseUSBTetheringDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;
    .param p2, "val$ctx"    # Landroid/content/Context;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    iput-object p2, p0, Lcom/android/settings/TetherSettings$5;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->val$ctx:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->-wrap1(Lcom/android/settings/TetherSettings;Landroid/content/Context;)V

    .line 842
    return-void
.end method
