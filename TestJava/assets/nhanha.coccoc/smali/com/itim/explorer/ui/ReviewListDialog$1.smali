.class Lcom/itim/explorer/ui/ReviewListDialog$1;
.super Ljava/lang/Object;
.source "ReviewListDialog.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoadReview;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/ReviewListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/ReviewListDialog;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/ReviewListDialog;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V
    .locals 3
    .param p1, "error"    # Lcom/itim/explorer/interfaces/ILoad$Error;

    .prologue
    .line 64
    sget-object v0, Lcom/itim/explorer/ui/ReviewListDialog$2;->$SwitchMap$com$itim$explorer$interfaces$ILoad$Error:[I

    invoke-virtual {p1}, Lcom/itim/explorer/interfaces/ILoad$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewListDialog;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewListDialog;->access$400(Lcom/itim/explorer/ui/ReviewListDialog;)Lcom/itim/explorer/ui/widget/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 80
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/ReviewListDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    const v2, 0x7f0e00ad

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/ReviewListDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewListDialog;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewListDialog;->access$400(Lcom/itim/explorer/ui/ReviewListDialog;)Lcom/itim/explorer/ui/widget/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 60
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Review;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "reviews":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Review;>;"
    const/4 v3, 0x0

    .line 39
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewListDialog;->access$000(Lcom/itim/explorer/ui/ReviewListDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewListDialog;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewListDialog;->access$100(Lcom/itim/explorer/ui/ReviewListDialog;)Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->notifyDataSetChanged()V

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewListDialog;->mItemCountToLoad:I
    invoke-static {v1}, Lcom/itim/explorer/ui/ReviewListDialog;->access$200(Lcom/itim/explorer/ui/ReviewListDialog;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    # setter for: Lcom/itim/explorer/ui/ReviewListDialog;->mIsLoadMore:Z
    invoke-static {v0, v3}, Lcom/itim/explorer/ui/ReviewListDialog;->access$302(Lcom/itim/explorer/ui/ReviewListDialog;Z)Z

    .line 51
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewListDialog;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewListDialog;->access$400(Lcom/itim/explorer/ui/ReviewListDialog;)Lcom/itim/explorer/ui/widget/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 53
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/ReviewListDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    const v2, 0x7f0e0119

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/ReviewListDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewListDialog;

    # setter for: Lcom/itim/explorer/ui/ReviewListDialog;->mIsLoadMore:Z
    invoke-static {v0, v3}, Lcom/itim/explorer/ui/ReviewListDialog;->access$302(Lcom/itim/explorer/ui/ReviewListDialog;Z)Z

    goto :goto_0
.end method
