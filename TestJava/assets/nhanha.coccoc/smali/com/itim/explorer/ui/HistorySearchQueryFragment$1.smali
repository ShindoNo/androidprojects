.class Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;
.super Ljava/lang/Object;
.source "HistorySearchQueryFragment.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/HistorySearchQueryFragment;->initTabPOI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Landroid/widget/ListView;[I)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "reverseSortedPositions"    # [I

    .prologue
    .line 99
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 100
    .local v4, "position":I
    iget-object v5, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    # getter for: Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->access$000(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    # getter for: Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->access$000(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->getItem(I)Lcom/itim/explorer/io/SearchQueryHistory;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    # getter for: Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mSearchQueries:Ljava/util/List;
    invoke-static {v5}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->access$100(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Screen"

    const-string v6, "History Query screen"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v5, "Position"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v6, "Query"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    # getter for: Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->access$000(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    # getter for: Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->access$000(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->getItem(I)Lcom/itim/explorer/io/SearchQueryHistory;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    # getter for: Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->access$000(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->getItem(I)Lcom/itim/explorer/io/SearchQueryHistory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/io/SearchQueryHistory;->getQuery()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v5, "Remove history item"

    invoke-static {v5, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    iget-object v5, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    invoke-virtual {v5}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    # getter for: Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;
    invoke-static {v6}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->access$000(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->getItem(I)Lcom/itim/explorer/io/SearchQueryHistory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itim/explorer/io/SearchQueryHistory;->getId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/itim/explorer/util/Util;->deleteSearchQuery(Landroid/content/Context;I)Z

    .line 110
    iget-object v5, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    # getter for: Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mSearchQueries:Ljava/util/List;
    invoke-static {v5}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->access$100(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 111
    iget-object v5, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    # getter for: Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->access$000(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->notifyDataSetChanged()V

    .line 112
    iget-object v5, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    # setter for: Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLastDeleteItem:I
    invoke-static {v5, v4}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->access$202(Lcom/itim/explorer/ui/HistorySearchQueryFragment;I)I

    .line 99
    .end local v1    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 104
    .restart local v1    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v5, "null"

    goto :goto_1

    .line 115
    .end local v1    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "position":I
    :cond_2
    return-void
.end method
