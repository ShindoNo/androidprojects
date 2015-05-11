.class Lcom/itim/explorer/ui/POIListFragment$1;
.super Ljava/lang/Object;
.source "POIListFragment.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/POIListFragment;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIListFragment;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Landroid/widget/ListView;[I)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "reverseSortedPositions"    # [I

    .prologue
    .line 110
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget v4, v0, v2

    .line 111
    .local v4, "position":I
    iget-object v5, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/POIListFragment;->access$000(Lcom/itim/explorer/ui/POIListFragment;)Lcom/itim/explorer/ui/adapter/POIAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/POIListFragment;->access$000(Lcom/itim/explorer/ui/POIListFragment;)Lcom/itim/explorer/ui/adapter/POIAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mPOIs:Ljava/util/List;
    invoke-static {v5}, Lcom/itim/explorer/ui/POIListFragment;->access$100(Lcom/itim/explorer/ui/POIListFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "Screen"

    iget-object v5, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mIsBookmark:Z
    invoke-static {v5}, Lcom/itim/explorer/ui/POIListFragment;->access$200(Lcom/itim/explorer/ui/POIListFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Bookmark screen"

    :goto_1
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
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

    .line 115
    const-string v6, "POI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/POIListFragment;->access$000(Lcom/itim/explorer/ui/POIListFragment;)Lcom/itim/explorer/ui/adapter/POIAdapter;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/POIListFragment;->access$000(Lcom/itim/explorer/ui/POIListFragment;)Lcom/itim/explorer/ui/adapter/POIAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/POIListFragment;->access$000(Lcom/itim/explorer/ui/POIListFragment;)Lcom/itim/explorer/ui/adapter/POIAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v5, "Remove POI"

    invoke-static {v5, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    iget-object v5, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    invoke-virtual {v5}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;
    invoke-static {v6}, Lcom/itim/explorer/ui/POIListFragment;->access$000(Lcom/itim/explorer/ui/POIListFragment;)Lcom/itim/explorer/ui/adapter/POIAdapter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mIsBookmark:Z
    invoke-static {v7}, Lcom/itim/explorer/ui/POIListFragment;->access$200(Lcom/itim/explorer/ui/POIListFragment;)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/itim/explorer/util/Util;->deletePOI(Landroid/content/Context;IZ)Z

    .line 122
    iget-object v5, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mPOIs:Ljava/util/List;
    invoke-static {v5}, Lcom/itim/explorer/ui/POIListFragment;->access$100(Lcom/itim/explorer/ui/POIListFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 123
    iget-object v5, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;
    invoke-static {v5}, Lcom/itim/explorer/ui/POIListFragment;->access$000(Lcom/itim/explorer/ui/POIListFragment;)Lcom/itim/explorer/ui/adapter/POIAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/ui/adapter/POIAdapter;->notifyDataSetChanged()V

    .line 124
    iget-object v5, p0, Lcom/itim/explorer/ui/POIListFragment$1;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # setter for: Lcom/itim/explorer/ui/POIListFragment;->mLastDeleteItem:I
    invoke-static {v5, v4}, Lcom/itim/explorer/ui/POIListFragment;->access$302(Lcom/itim/explorer/ui/POIListFragment;I)I

    .line 110
    .end local v1    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 113
    .restart local v1    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v5, "History screen"

    goto/16 :goto_1

    .line 115
    :cond_2
    const-string v5, "null"

    goto :goto_2

    .line 127
    .end local v1    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "position":I
    :cond_3
    return-void
.end method
