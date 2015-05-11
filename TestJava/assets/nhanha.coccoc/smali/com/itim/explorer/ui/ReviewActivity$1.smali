.class Lcom/itim/explorer/ui/ReviewActivity$1;
.super Ljava/lang/Object;
.source "ReviewActivity.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoadReview;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/ReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/ReviewActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/ReviewActivity;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V
    .locals 3
    .param p1, "error"    # Lcom/itim/explorer/interfaces/ILoad$Error;

    .prologue
    .line 70
    sget-object v0, Lcom/itim/explorer/ui/ReviewActivity$2;->$SwitchMap$com$itim$explorer$interfaces$ILoad$Error:[I

    invoke-virtual {p1}, Lcom/itim/explorer/interfaces/ILoad$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    # getter for: Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewActivity;->access$300(Lcom/itim/explorer/ui/ReviewActivity;)Lcom/itim/explorer/ui/widget/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 88
    return-void

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    const v2, 0x7f0e00ad

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/ReviewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 70
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
    .line 65
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    # getter for: Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewActivity;->access$300(Lcom/itim/explorer/ui/ReviewActivity;)Lcom/itim/explorer/ui/widget/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 66
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
    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 41
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 44
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    # getter for: Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewActivity;->access$000(Lcom/itim/explorer/ui/ReviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    # getter for: Lcom/itim/explorer/ui/ReviewActivity;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewActivity;->access$100(Lcom/itim/explorer/ui/ReviewActivity;)Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->notifyDataSetChanged()V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    # setter for: Lcom/itim/explorer/ui/ReviewActivity;->mIsLoadMore:Z
    invoke-static {v0, v3}, Lcom/itim/explorer/ui/ReviewActivity;->access$202(Lcom/itim/explorer/ui/ReviewActivity;Z)Z

    .line 57
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    # getter for: Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewActivity;->access$300(Lcom/itim/explorer/ui/ReviewActivity;)Lcom/itim/explorer/ui/widget/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 59
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    # getter for: Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/itim/explorer/ui/ReviewActivity;->access$000(Lcom/itim/explorer/ui/ReviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    const v2, 0x7f0e0119

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/ReviewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity$1;->this$0:Lcom/itim/explorer/ui/ReviewActivity;

    # setter for: Lcom/itim/explorer/ui/ReviewActivity;->mIsLoadMore:Z
    invoke-static {v0, v3}, Lcom/itim/explorer/ui/ReviewActivity;->access$202(Lcom/itim/explorer/ui/ReviewActivity;Z)Z

    goto :goto_1
.end method
