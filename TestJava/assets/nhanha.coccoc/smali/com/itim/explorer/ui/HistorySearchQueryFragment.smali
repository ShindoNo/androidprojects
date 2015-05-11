.class public Lcom/itim/explorer/ui/HistorySearchQueryFragment;
.super Lcom/itim/explorer/ui/BaseFragment;
.source "HistorySearchQueryFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/itim/explorer/interfaces/IFragmentHistory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itim/explorer/ui/BaseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/itim/explorer/io/SearchQueryHistory;",
        ">;>;",
        "Lcom/itim/explorer/interfaces/IFragmentHistory;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

.field private mFirstHint:Landroid/view/View;

.field private mIsLoadedData:Z

.field private mLastDeleteItem:I

.field private mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

.field private mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

.field private mPBar:Landroid/widget/ProgressBar;

.field private mSearchQueries:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mIsLoadedData:Z

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mSearchQueries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/itim/explorer/ui/HistorySearchQueryFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/HistorySearchQueryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLastDeleteItem:I

    return p1
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mFirstHint:Landroid/view/View;

    return-object v0
.end method

.method private initData(Ljava/util/List;)V
    .locals 2
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
    .line 254
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/SearchQueryHistory;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "6"

    invoke-static {v0, v1}, Lcom/itim/explorer/util/UIUtil;->firstShowHintListPOI(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mFirstHint:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mFirstHint:Landroid/view/View;

    new-instance v1, Lcom/itim/explorer/ui/HistorySearchQueryFragment$2;

    invoke-direct {v1, p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment$2;-><init>(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    invoke-virtual {v0, p1}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->setData(Ljava/util/List;)V

    .line 266
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iget-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v0, p0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mPBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iget v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLastDeleteItem:I

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setSelection(I)V

    .line 270
    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 272
    :cond_1
    return-void
.end method

.method private initTabPOI(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    new-instance v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    iget-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    new-instance v2, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment$1;-><init>(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;-><init>(Landroid/widget/ListView;Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;)V

    .line 117
    .local v0, "touchListener":Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;
    iget-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v1, v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v0}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 122
    const v1, 0x7f0b00f4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mPBar:Landroid/widget/ProgressBar;

    .line 123
    const v1, 0x7f0b00f5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mFirstHint:Landroid/view/View;

    .line 124
    iget-boolean v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mIsLoadedData:Z

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mSearchQueries:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->initData(Ljava/util/List;)V

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_0
.end method

.method public static newInstance(I)Lcom/itim/explorer/ui/HistorySearchQueryFragment;
    .locals 1
    .param p0, "keyTab"    # I

    .prologue
    .line 62
    new-instance v0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    invoke-direct {v0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;-><init>()V

    .line 63
    .local v0, "fragment":Lcom/itim/explorer/ui/HistorySearchQueryFragment;
    return-object v0
.end method


# virtual methods
.method public deleteAllItems()V
    .locals 3

    .prologue
    .line 285
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0112

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0110

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0152

    new-instance v2, Lcom/itim/explorer/ui/HistorySearchQueryFragment$4;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment$4;-><init>(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e00fe

    new-instance v2, Lcom/itim/explorer/ui/HistorySearchQueryFragment$3;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment$3;-><init>(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 313
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/interfaces/MainActivityListener;

    iput-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->setHasOptionsMenu(Z)V

    .line 71
    new-instance v0, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    .line 72
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/SearchQueryHistory;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mPBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 239
    iput-boolean v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mIsLoadedData:Z

    .line 240
    new-instance v0, Lcom/itim/explorer/io/LoadSearchQueryLoader;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itim/explorer/io/LoadSearchQueryLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 169
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f04003e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    const v1, 0x7f0b00f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iput-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    .line 81
    iget-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    const v2, 0x7f0b00f3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setEmptyView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 83
    invoke-direct {p0, v0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->initTabPOI(Landroid/view/View;)V

    .line 84
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragment;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mSearchQueries:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mSearchQueries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iput-object v1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mSearchQueries:Ljava/util/List;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->setData(Ljava/util/List;)V

    .line 148
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    invoke-virtual {v6, p3}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->getItem(I)Lcom/itim/explorer/io/SearchQueryHistory;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;

    invoke-virtual {v6, p3}, Lcom/itim/explorer/ui/adapter/SearchQueryAdapter;->getItem(I)Lcom/itim/explorer/io/SearchQueryHistory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itim/explorer/io/SearchQueryHistory;->getQuery()Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "search":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_1

    .line 234
    :goto_1
    return-void

    .line 201
    .end local v5    # "search":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 204
    .restart local v5    # "search":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v2, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "Screen"

    const-string v7, "History Query screen"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v6, "Position"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v6, "Query"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v6, "GO to map search"

    invoke-static {v6, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 210
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v1, "extras":Landroid/os/Bundle;
    const-string v6, "extra_method"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string v6, "extra_map_search_query"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v6, "extra_map_type"

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string v6, "extra_map_offset"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v6, "extra_map_size"

    const/16 v7, 0x32

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    iget-object v6, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

    invoke-interface {v6}, Lcom/itim/explorer/interfaces/MainActivityListener;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 219
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_2

    .line 220
    const-string v6, "extra_map_location"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 222
    :cond_2
    const-string v6, "extra_screen_title"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/itim/explorer/util/Util;->getCurrentCity(Landroid/content/Context;)Lcom/itim/explorer/io/model/CityBorder;

    move-result-object v0

    .line 224
    .local v0, "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 225
    const-string v6, "extra_map_near_left"

    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lat()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lng()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 227
    const-string v6, "extra_map_far_right"

    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lat()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lng()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 230
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v4, "mapIntent":Landroid/content/Intent;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v4}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->startActivity(Landroid/content/Intent;)V

    .line 233
    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/SearchQueryHistory;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/SearchQueryHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/itim/explorer/io/SearchQueryHistory;>;>;"
    .local p2, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/SearchQueryHistory;>;"
    iput-object p2, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mSearchQueries:Ljava/util/List;

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mIsLoadedData:Z

    .line 248
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mSearchQueries:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->initData(Ljava/util/List;)V

    .line 251
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/SearchQueryHistory;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/itim/explorer/io/SearchQueryHistory;>;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 195
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragment;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/itim/explorer/interfaces/MainActivityListener;->setDrawerSelected(I)V

    .line 138
    return-void
.end method
