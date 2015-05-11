.class public Lcom/itim/explorer/ui/AddPOIErrorDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AddPOIErrorDialog.java"


# instance fields
.field private errorMsg_string_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/itim/explorer/ui/AddPOIErrorDialog;->errorMsg_string_id:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itim/explorer/ui/AddPOIErrorDialog;->setStyle(II)V

    .line 22
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "string_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/itim/explorer/ui/AddPOIErrorDialog;->errorMsg_string_id:I

    .line 23
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    const v3, 0x7f040034

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 29
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0b00bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 31
    .local v0, "btnReport":Landroid/widget/Button;
    new-instance v3, Lcom/itim/explorer/ui/AddPOIErrorDialog$1;

    invoke-direct {v3, p0}, Lcom/itim/explorer/ui/AddPOIErrorDialog$1;-><init>(Lcom/itim/explorer/ui/AddPOIErrorDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget v3, p0, Lcom/itim/explorer/ui/AddPOIErrorDialog;->errorMsg_string_id:I

    if-eqz v3, :cond_0

    .line 38
    const v3, 0x7f0b00bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, "tvErrorMsg":Landroid/widget/TextView;
    iget v3, p0, Lcom/itim/explorer/ui/AddPOIErrorDialog;->errorMsg_string_id:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 41
    .end local v1    # "tvErrorMsg":Landroid/widget/TextView;
    :cond_0
    return-object v2
.end method
