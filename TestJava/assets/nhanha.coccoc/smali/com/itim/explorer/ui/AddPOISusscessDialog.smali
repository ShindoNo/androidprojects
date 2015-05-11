.class public Lcom/itim/explorer/ui/AddPOISusscessDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AddPOISusscessDialog.java"


# instance fields
.field private mListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/AddPOISusscessDialog;)Lcom/itim/explorer/interfaces/AddPOIActivityListener;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOISusscessDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOISusscessDialog;->mListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    return-object v0
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

    invoke-virtual {p0, v0, v1}, Lcom/itim/explorer/ui/AddPOISusscessDialog;->setStyle(II)V

    .line 22
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const v2, 0x7f040035

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 28
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b00bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 30
    .local v0, "btnReport":Landroid/widget/Button;
    new-instance v2, Lcom/itim/explorer/ui/AddPOISusscessDialog$1;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/AddPOISusscessDialog$1;-><init>(Lcom/itim/explorer/ui/AddPOISusscessDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-object v1
.end method

.method public setListener(Lcom/itim/explorer/interfaces/AddPOIActivityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOISusscessDialog;->mListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    .line 44
    return-void
.end method
