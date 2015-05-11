.class Lcom/itim/explorer/ui/CategoryChooseDialog$1;
.super Ljava/lang/Object;
.source "CategoryChooseDialog.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoadCategory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/CategoryChooseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/CategoryChooseDialog;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/CategoryChooseDialog;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/itim/explorer/ui/CategoryChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CategoryChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V
    .locals 0
    .param p1, "error"    # Lcom/itim/explorer/interfaces/ILoad$Error;

    .prologue
    .line 76
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/Category;>;"
    iget-object v0, p0, Lcom/itim/explorer/ui/CategoryChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CategoryChooseDialog;

    new-instance v1, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    iget-object v2, p0, Lcom/itim/explorer/ui/CategoryChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CategoryChooseDialog;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/CategoryChooseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f040052

    const v4, 0x7f0b0148

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    # setter for: Lcom/itim/explorer/ui/CategoryChooseDialog;->mCityAdapter:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/CategoryChooseDialog;->access$002(Lcom/itim/explorer/ui/CategoryChooseDialog;Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;)Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    .line 67
    iget-object v0, p0, Lcom/itim/explorer/ui/CategoryChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CategoryChooseDialog;

    # getter for: Lcom/itim/explorer/ui/CategoryChooseDialog;->mLvPOIs:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/CategoryChooseDialog;->access$100(Lcom/itim/explorer/ui/CategoryChooseDialog;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/CategoryChooseDialog$1;->this$0:Lcom/itim/explorer/ui/CategoryChooseDialog;

    # getter for: Lcom/itim/explorer/ui/CategoryChooseDialog;->mCityAdapter:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;
    invoke-static {v1}, Lcom/itim/explorer/ui/CategoryChooseDialog;->access$000(Lcom/itim/explorer/ui/CategoryChooseDialog;)Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-void
.end method
