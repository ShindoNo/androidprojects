.class Lcom/itim/explorer/ui/ReportProblemDialog$2;
.super Ljava/lang/Object;
.source "ReportProblemDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/ReportProblemDialog;->onRadioGroupChange()Landroid/widget/RadioGroup$OnCheckedChangeListener;
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
    .line 109
    iput-object p1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$2;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$2;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 115
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    packed-switch p2, :pswitch_data_0

    .line 124
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$2;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->etReportMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$000(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$2;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->etReportMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$000(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 128
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$2;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$400(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 132
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$2;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->etReportMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$000(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$2;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 120
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$2;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->etReportMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$000(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 121
    iget-object v1, p0, Lcom/itim/explorer/ui/ReportProblemDialog$2;->this$0:Lcom/itim/explorer/ui/ReportProblemDialog;

    # getter for: Lcom/itim/explorer/ui/ReportProblemDialog;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/itim/explorer/ui/ReportProblemDialog;->access$400(Lcom/itim/explorer/ui/ReportProblemDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x7f0b00d1
        :pswitch_0
    .end packed-switch
.end method
