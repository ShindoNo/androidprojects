.class Lcom/itim/explorer/ui/AddPOIErrorDialog$1;
.super Ljava/lang/Object;
.source "AddPOIErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/AddPOIErrorDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/AddPOIErrorDialog;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/AddPOIErrorDialog;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIErrorDialog$1;->this$0:Lcom/itim/explorer/ui/AddPOIErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIErrorDialog$1;->this$0:Lcom/itim/explorer/ui/AddPOIErrorDialog;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/AddPOIErrorDialog;->dismiss()V

    .line 35
    return-void
.end method
