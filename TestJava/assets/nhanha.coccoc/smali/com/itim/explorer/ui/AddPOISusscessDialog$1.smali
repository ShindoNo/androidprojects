.class Lcom/itim/explorer/ui/AddPOISusscessDialog$1;
.super Ljava/lang/Object;
.source "AddPOISusscessDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/AddPOISusscessDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/AddPOISusscessDialog;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/AddPOISusscessDialog;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOISusscessDialog$1;->this$0:Lcom/itim/explorer/ui/AddPOISusscessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOISusscessDialog$1;->this$0:Lcom/itim/explorer/ui/AddPOISusscessDialog;

    # getter for: Lcom/itim/explorer/ui/AddPOISusscessDialog;->mListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOISusscessDialog;->access$000(Lcom/itim/explorer/ui/AddPOISusscessDialog;)Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOISusscessDialog$1;->this$0:Lcom/itim/explorer/ui/AddPOISusscessDialog;

    # getter for: Lcom/itim/explorer/ui/AddPOISusscessDialog;->mListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOISusscessDialog;->access$000(Lcom/itim/explorer/ui/AddPOISusscessDialog;)Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/itim/explorer/interfaces/AddPOIActivityListener;->onOKDialog()V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOISusscessDialog$1;->this$0:Lcom/itim/explorer/ui/AddPOISusscessDialog;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/AddPOISusscessDialog;->dismiss()V

    .line 37
    return-void
.end method
