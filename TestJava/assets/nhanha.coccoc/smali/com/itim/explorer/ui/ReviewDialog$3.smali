.class Lcom/itim/explorer/ui/ReviewDialog$3;
.super Ljava/lang/Object;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/ReviewDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/ReviewDialog;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/ReviewDialog;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/itim/explorer/ui/ReviewDialog$3;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 116
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 112
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    iget-object v3, p0, Lcom/itim/explorer/ui/ReviewDialog$3;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/itim/explorer/ui/ReviewDialog;->isEdidCommentFilled:Z
    invoke-static {v3, v0}, Lcom/itim/explorer/ui/ReviewDialog;->access$102(Lcom/itim/explorer/ui/ReviewDialog;Z)Z

    .line 105
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewDialog$3;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewDialog;->mBtnRate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewDialog;->access$200(Lcom/itim/explorer/ui/ReviewDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v3, p0, Lcom/itim/explorer/ui/ReviewDialog$3;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewDialog;->isRatingBarFilled:Z
    invoke-static {v3}, Lcom/itim/explorer/ui/ReviewDialog;->access$000(Lcom/itim/explorer/ui/ReviewDialog;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/itim/explorer/ui/ReviewDialog$3;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewDialog;->isEdidCommentFilled:Z
    invoke-static {v3}, Lcom/itim/explorer/ui/ReviewDialog;->access$100(Lcom/itim/explorer/ui/ReviewDialog;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    return-void

    :cond_0
    move v0, v2

    .line 104
    goto :goto_0

    :cond_1
    move v1, v2

    .line 105
    goto :goto_1
.end method
