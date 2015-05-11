.class Lcom/itim/explorer/ui/ReviewDialog$2;
.super Ljava/lang/Object;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 86
    iput-object p1, p0, Lcom/itim/explorer/ui/ReviewDialog$2;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 88
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog$2;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/ReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 91
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewDialog$2;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewDialog;->mEdtComment:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/itim/explorer/ui/ReviewDialog;->access$300(Lcom/itim/explorer/ui/ReviewDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 93
    const/4 v1, 0x1

    .line 95
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method
