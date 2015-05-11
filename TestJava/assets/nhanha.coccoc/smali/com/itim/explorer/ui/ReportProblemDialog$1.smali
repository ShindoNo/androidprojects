.class Lcom/itim/explorer/ui/ReportProblemDialog$1;
.super Ljava/lang/Object;
.source "ReportProblemDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/ReportProblemDialog;->onSendReport()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/ReportProblemDialog;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/ReportProblemDialog;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 69
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->etReportMessage:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$000(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->etReportMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$000(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/itim/explorer/ui/ReportProblemDialog;->message:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$102(Lcom/itim/explorer/ui/ReportProblemDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->rgReport:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$200(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    const/4 v1, 0x0

    # setter for: Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$302(Lcom/itim/explorer/ui/ReportProblemDialog;I)I

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I
    invoke-static {v0}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$300(Lcom/itim/explorer/ui/ReportProblemDialog;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I
    invoke-static {v0}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$300(Lcom/itim/explorer/ui/ReportProblemDialog;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->message:Ljava/lang/String;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$100(Lcom/itim/explorer/ui/ReportProblemDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 104
    :cond_0
    :goto_2
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    const-string v1, ""

    # setter for: Lcom/itim/explorer/ui/ReportProblemDialog;->message:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$102(Lcom/itim/explorer/ui/ReportProblemDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # setter for: Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I
    invoke-static {v0, v3}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$302(Lcom/itim/explorer/ui/ReportProblemDialog;I)I

    goto :goto_1

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    const/4 v1, 0x2

    # setter for: Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$302(Lcom/itim/explorer/ui/ReportProblemDialog;I)I

    goto :goto_1

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    const/4 v1, 0x3

    # setter for: Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$302(Lcom/itim/explorer/ui/ReportProblemDialog;I)I

    goto :goto_1

    .line 83
    :pswitch_3
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    const/4 v1, 0x4

    # setter for: Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$302(Lcom/itim/explorer/ui/ReportProblemDialog;I)I

    goto :goto_1

    .line 86
    :pswitch_4
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    const/4 v1, 0x6

    # setter for: Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$302(Lcom/itim/explorer/ui/ReportProblemDialog;I)I

    goto :goto_1

    .line 89
    :pswitch_5
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # setter for: Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I
    invoke-static {v0, v2}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$302(Lcom/itim/explorer/ui/ReportProblemDialog;I)I

    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    iget-object v0, v0, Lcom/itim/explorer/ui/ReportProblemDialog;->mListener:Lcom/itim/explorer/interfaces/POIDetailActivityListener;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    iget-object v0, v0, Lcom/itim/explorer/ui/ReportProblemDialog;->mListener:Lcom/itim/explorer/interfaces/POIDetailActivityListener;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->selectedProblem:I
    invoke-static {v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$300(Lcom/itim/explorer/ui/ReportProblemDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->message:Ljava/lang/String;
    invoke-static {v2}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$100(Lcom/itim/explorer/ui/ReportProblemDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/itim/explorer/interfaces/POIDetailActivityListener;->onReportProblem(ILjava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/ReportProblemDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    const v2, 0x7f0e0126

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/ReportProblemDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->etReportMessage:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$000(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/itim/explorer/ui/ReportProblemDialog$1;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/ReportProblemDialog;->dismiss()V

    goto :goto_2

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00cc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
