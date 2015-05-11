.class Lcom/itim/explorer/ui/AddPOIActivity$6$1;
.super Ljava/lang/Object;
.source "AddPOIActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/AddPOIActivity$6;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/AddPOIActivity$6;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIActivity$6$1;->this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6$1;->this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;

    iget-object v0, v0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mVLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1400(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6$1;->this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;

    iget-object v0, v0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # invokes: Lcom/itim/explorer/ui/AddPOIActivity;->showAddSusscessDialog()V
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1500(Lcom/itim/explorer/ui/AddPOIActivity;)V

    .line 730
    return-void
.end method
