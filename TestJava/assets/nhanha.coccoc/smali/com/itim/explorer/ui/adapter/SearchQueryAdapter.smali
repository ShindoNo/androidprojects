.class public Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchQueryAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mListQuery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/SearchQueryHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->mListQuery:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->mListQuery:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/itim/explorer/io/SearchQueryHistory;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->mListQuery:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->mListQuery:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/SearchQueryHistory;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->getItem(I)Lcom/itim/explorer/io/SearchQueryHistory;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040046

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "tvQuery":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->mListQuery:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/io/SearchQueryHistory;

    invoke-virtual {v2}, Lcom/itim/explorer/io/SearchQueryHistory;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-object v1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/SearchQueryHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "listQuery":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/SearchQueryHistory;>;"
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->mListQuery:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method
