.class public Lcom/itim/explorer/ui/POIListFragment;
.super Lcom/itim/explorer/ui/BaseFragment;
.source "POIListFragment.java"

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
        "Lcom/itim/explorer/io/model/POI;",
        ">;>;",
        "Lcom/itim/explorer/interfaces/IFragmentHistory;"
    }
.end annotation


# static fields
.field private static final ARG_WHICH:Ljava/lang/String; = "arg_which"

.field private static final MENU_ITEM_ID_DELETE_ALL:I = 0x10


# instance fields
.field private mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

.field private mFirstHint:Landroid/view/View;

.field private mIsBookmark:Z

.field private mIsLoadedData:Z

.field private mLastDeleteItem:I

.field private mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

.field private mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

.field private mPBar:Landroid/widget/ProgressBar;

.field private mPOIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mWhich:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mIsLoadedData:Z

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/POIListFragment;)Lcom/itim/explorer/ui/adapter/POIAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIListFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/POIListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIListFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mPOIs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/POIListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIListFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mIsBookmark:Z

    return v0
.end method

.method static synthetic access$302(Lcom/itim/explorer/ui/POIListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/itim/explorer/ui/POIListFragment;->mLastDeleteItem:I

    return p1
.end method

.method static synthetic access$400(Lcom/itim/explorer/ui/POIListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIListFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mFirstHint:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/itim/explorer/ui/POIListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIListFragment;

    .prologue
    .line 38
    iget v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mWhich:I

    return v0
.end method

.method private initData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itim/explorer/util/UIUtil;->firstShowHintListPOI(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mFirstHint:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mFirstHint:Landroid/view/View;

    new-instance v1, Lcom/itim/explorer/ui/POIListFragment$2;

    invoke-direct {v1, p0}, Lcom/itim/explorer/ui/POIListFragment$2;-><init>(Lcom/itim/explorer/ui/POIListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {v0, p1}, Lcom/itim/explorer/ui/adapter/POIAdapter;->setPOIs(Ljava/util/List;)V

    .line 235
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iget-object v1, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v0, p0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mPBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iget v1, p0, Lcom/itim/explorer/ui/POIListFragment;->mLastDeleteItem:I

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setSelection(I)V

    .line 239
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 241
    :cond_1
    return-void
.end method

.method public static newInstance(I)Lcom/itim/explorer/ui/POIListFragment;
    .locals 3
    .param p0, "loadWhich"    # I

    .prologue
    .line 58
    new-instance v1, Lcom/itim/explorer/ui/POIListFragment;

    invoke-direct {v1}, Lcom/itim/explorer/ui/POIListFragment;-><init>()V

    .line 59
    .local v1, "newFragment":Lcom/itim/explorer/ui/POIListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "arg_which"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {v1, v0}, Lcom/itim/explorer/ui/POIListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v1
.end method


# virtual methods
.method public deleteAllItems()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mWhich:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "History"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0110

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0152

    new-instance v2, Lcom/itim/explorer/ui/POIListFragment$4;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/POIListFragment$4;-><init>(Lcom/itim/explorer/ui/POIListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e00fe

    new-instance v2, Lcom/itim/explorer/ui/POIListFragment$3;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/POIListFragment$3;-><init>(Lcom/itim/explorer/ui/POIListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 289
    return-void

    .line 254
    :cond_0
    const-string v0, "Bookmark"

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    .line 67
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/interfaces/MainActivityListener;

    iput-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

    .line 69
    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/POIListFragment;->setHasOptionsMenu(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "arg_which"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mWhich:I

    .line 72
    iget v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mWhich:I

    if-eq v0, v6, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mIsBookmark:Z

    .line 73
    const/4 v3, 0x1

    .line 74
    .local v3, "showItemCategory":Z
    const/4 v4, 0x0

    .line 75
    .local v4, "showDistance":Z
    const/4 v5, 0x0

    .line 76
    .local v5, "showAdv":Z
    new-instance v0, Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/itim/explorer/ui/adapter/POIAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZZZ)V

    iput-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    .line 77
    return-void

    .line 72
    .end local v3    # "showItemCategory":Z
    .end local v4    # "showDistance":Z
    .end local v5    # "showAdv":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
            "Lcom/itim/explorer/io/model/POI;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mPBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    iput-boolean v1, p0, Lcom/itim/explorer/ui/POIListFragment;->mIsLoadedData:Z

    .line 213
    new-instance v0, Lcom/itim/explorer/io/LoadPOILoader;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/itim/explorer/io/LoadPOILoader;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 172
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mWhich:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 174
    const v0, 0x7f0e0098

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 178
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 94
    const v2, 0x7f04003e

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b00f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iput-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    .line 97
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    const v3, 0x7f0b00f3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setEmptyView(Landroid/view/View;)V

    .line 98
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 99
    new-instance v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    new-instance v3, Lcom/itim/explorer/ui/POIListFragment$1;

    invoke-direct {v3, p0}, Lcom/itim/explorer/ui/POIListFragment$1;-><init>(Lcom/itim/explorer/ui/POIListFragment;)V

    invoke-direct {v0, v2, v3}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;-><init>(Landroid/widget/ListView;Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;)V

    .line 129
    .local v0, "touchListener":Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v2, v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v0}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 134
    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mPBar:Landroid/widget/ProgressBar;

    .line 135
    const v2, 0x7f0b00f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mFirstHint:Landroid/view/View;

    .line 136
    iget-boolean v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mIsLoadedData:Z

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mPOIs:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/itim/explorer/ui/POIListFragment;->initData(Ljava/util/List;)V

    .line 142
    :goto_0
    return-object v1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget v3, p0, Lcom/itim/explorer/ui/POIListFragment;->mWhich:I

    invoke-virtual {v2, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragment;->onDestroy()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mIsLoadedData:Z

    .line 149
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mPOIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mPOIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iput-object v1, p0, Lcom/itim/explorer/ui/POIListFragment;->mPOIs:Ljava/util/List;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/adapter/POIAdapter;->setPOIs(Ljava/util/List;)V

    .line 154
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 196
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getCount()I

    move-result v2

    if-gt v2, p3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Screen"

    iget-boolean v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mIsBookmark:Z

    if-eqz v2, :cond_2

    const-string v2, "Bookmark screen"

    :goto_1
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v2, "Position"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v3, "POI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {v2, p3}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {v2, p3}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v2, "Go to POI details"

    invoke-static {v2, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {v2, p3}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v1, "poiIntent":Landroid/content/Intent;
    const-string v2, "extra_map_poi"

    iget-object v3, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {v3, p3}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 198
    .end local v1    # "poiIntent":Landroid/content/Intent;
    :cond_2
    const-string v2, "History screen"

    goto/16 :goto_1

    .line 200
    :cond_3
    const-string v2, "null"

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/itim/explorer/ui/POIListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lcom/itim/explorer/io/model/POI;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;>;"
    .local p2, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    iput-object p2, p0, Lcom/itim/explorer/ui/POIListFragment;->mPOIs:Ljava/util/List;

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itim/explorer/ui/POIListFragment;->mIsLoadedData:Z

    .line 220
    invoke-direct {p0, p2}, Lcom/itim/explorer/ui/POIListFragment;->initData(Ljava/util/List;)V

    .line 221
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
            "Lcom/itim/explorer/io/model/POI;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 184
    :pswitch_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListFragment;->deleteAllItems()V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 158
    iget v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mWhich:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 159
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

    invoke-interface {v2}, Lcom/itim/explorer/interfaces/MainActivityListener;->isDrawerShowing()Z

    move-result v0

    .line 160
    .local v0, "drawerOpen":Z
    if-eqz v0, :cond_1

    .line 161
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 167
    .end local v0    # "drawerOpen":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 168
    return-void

    .line 163
    .restart local v0    # "drawerOpen":Z
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/POIListFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 81
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragment;->onResume()V

    .line 82
    iget-object v1, p0, Lcom/itim/explorer/ui/POIListFragment;->mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

    iget v2, p0, Lcom/itim/explorer/ui/POIListFragment;->mWhich:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Lcom/itim/explorer/interfaces/MainActivityListener;->setDrawerSelected(I)V

    .line 89
    return-void
.end method
