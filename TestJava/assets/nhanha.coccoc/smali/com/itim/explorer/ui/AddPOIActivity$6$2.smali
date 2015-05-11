.class Lcom/itim/explorer/ui/AddPOIActivity$6$2;
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
    .line 733
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIActivity$6$2;->this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 737
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6$2;->this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;

    iget-object v0, v0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->failingCourse:I
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1600(Lcom/itim/explorer/ui/AddPOIActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 747
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6$2;->this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;

    iget-object v0, v0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    const v1, 0x7f0e0019

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 754
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6$2;->this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;

    iget-object v0, v0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mVLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1400(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6$2;->this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;

    iget-object v0, v0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # invokes: Lcom/itim/explorer/ui/AddPOIActivity;->updateUI(Z)V
    invoke-static {v0, v2}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1900(Lcom/itim/explorer/ui/AddPOIActivity;Z)V

    .line 756
    return-void

    .line 739
    :pswitch_0
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6$2;->this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;

    iget-object v0, v0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity$6$2;->this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;

    iget-object v1, v1, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mLPhoto:Landroid/view/View;
    invoke-static {v1}, Lcom/itim/explorer/ui/AddPOIActivity;->access$100(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1700(Lcom/itim/explorer/ui/AddPOIActivity;Landroid/view/View;Z)V

    .line 740
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity$6$2;->this$1:Lcom/itim/explorer/ui/AddPOIActivity$6;

    iget-object v0, v0, Lcom/itim/explorer/ui/AddPOIActivity$6;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # invokes: Lcom/itim/explorer/ui/AddPOIActivity;->showErrorDialog()V
    invoke-static {v0}, Lcom/itim/explorer/ui/AddPOIActivity;->access$1800(Lcom/itim/explorer/ui/AddPOIActivity;)V

    goto :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method
