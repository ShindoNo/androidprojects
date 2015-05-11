.class Lcom/itim/explorer/ui/UserPOIsActivity$1;
.super Ljava/lang/Object;
.source "UserPOIsActivity.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoadUsersPOI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/UserPOIsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/UserPOIsActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/UserPOIsActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;)V
    .locals 2
    .param p1, "error"    # Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    # getter for: Lcom/itim/explorer/ui/UserPOIsActivity;->mVLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/UserPOIsActivity;->access$300(Lcom/itim/explorer/ui/UserPOIsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    # getter for: Lcom/itim/explorer/ui/UserPOIsActivity;->mVLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/UserPOIsActivity;->access$300(Lcom/itim/explorer/ui/UserPOIsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
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
            "Lcom/itim/explorer/io/model/UsersPOI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/UsersPOI;>;"
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    # setter for: Lcom/itim/explorer/ui/UserPOIsActivity;->mPOIs:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/itim/explorer/ui/UserPOIsActivity;->access$002(Lcom/itim/explorer/ui/UserPOIsActivity;Ljava/util/List;)Ljava/util/List;

    .line 48
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    # getter for: Lcom/itim/explorer/ui/UserPOIsActivity;->mPOIs:Ljava/util/List;
    invoke-static {v0}, Lcom/itim/explorer/ui/UserPOIsActivity;->access$000(Lcom/itim/explorer/ui/UserPOIsActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/itim/explorer/util/UserPOIsComparator;

    invoke-direct {v1}, Lcom/itim/explorer/util/UserPOIsComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 49
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    new-instance v1, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;

    iget-object v2, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    iget-object v3, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    # getter for: Lcom/itim/explorer/ui/UserPOIsActivity;->mPOIs:Ljava/util/List;
    invoke-static {v3}, Lcom/itim/explorer/ui/UserPOIsActivity;->access$000(Lcom/itim/explorer/ui/UserPOIsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    # setter for: Lcom/itim/explorer/ui/UserPOIsActivity;->mAdapter:Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/UserPOIsActivity;->access$102(Lcom/itim/explorer/ui/UserPOIsActivity;Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;)Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;

    .line 50
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    # getter for: Lcom/itim/explorer/ui/UserPOIsActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/UserPOIsActivity;->access$200(Lcom/itim/explorer/ui/UserPOIsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    # getter for: Lcom/itim/explorer/ui/UserPOIsActivity;->mAdapter:Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;
    invoke-static {v1}, Lcom/itim/explorer/ui/UserPOIsActivity;->access$100(Lcom/itim/explorer/ui/UserPOIsActivity;)Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    # getter for: Lcom/itim/explorer/ui/UserPOIsActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/UserPOIsActivity;->access$200(Lcom/itim/explorer/ui/UserPOIsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity$1;->this$0:Lcom/itim/explorer/ui/UserPOIsActivity;

    # getter for: Lcom/itim/explorer/ui/UserPOIsActivity;->mVLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/UserPOIsActivity;->access$300(Lcom/itim/explorer/ui/UserPOIsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    return-void
.end method
