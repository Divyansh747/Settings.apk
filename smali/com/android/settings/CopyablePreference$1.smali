.class Lcom/android/settings/CopyablePreference$1;
.super Ljava/lang/Object;
.source "CopyablePreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CopyablePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CopyablePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/CopyablePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CopyablePreference;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/CopyablePreference$1;->this$0:Lcom/android/settings/CopyablePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/CopyablePreference$1;->this$0:Lcom/android/settings/CopyablePreference;

    invoke-virtual {v0}, Lcom/android/settings/CopyablePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CopyablePreference$1;->this$0:Lcom/android/settings/CopyablePreference;

    invoke-static {v0, v1}, Lcom/android/settings/CopyablePreference;->copyPreference(Landroid/content/Context;Lcom/android/settings/CopyablePreference;)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method
