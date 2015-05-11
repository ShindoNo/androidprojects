.class public Lcom/itim/explorer/ui/widget/LoadMoreListView;
.super Landroid/widget/ListView;
.source "LoadMoreListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;
    }
.end annotation


# instance fields
.field private isOverScrolled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScrollState:I

.field private mFooterView:Landroid/widget/RelativeLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsLoadingMore:Z

.field private mOnLoadMoreListener:Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPgbLoading:Landroid/widget/ProgressBar;

.field private mTvLoading:Landroid/widget/TextView;

.field private overScrollCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mIsLoadingMore:Z

    .line 35
    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->isOverScrolled:Z

    .line 36
    iput v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->overScrollCounter:I

    .line 41
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mIsLoadingMore:Z

    .line 35
    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->isOverScrolled:Z

    .line 36
    iput v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->overScrollCounter:I

    .line 51
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mIsLoadingMore:Z

    .line 35
    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->isOverScrolled:Z

    .line 36
    iput v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->overScrollCounter:I

    .line 56
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isShowAdv"    # Z

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mIsLoadingMore:Z

    .line 35
    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->isOverScrolled:Z

    .line 36
    iput v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->overScrollCounter:I

    .line 46
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    instance-of v0, p1, Lcom/itim/explorer/ui/MapActivity;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setupAdvBanner()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mFooterView:Landroid/widget/RelativeLayout;

    .line 75
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mFooterView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b010c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mTvLoading:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mFooterView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b010d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mPgbLoading:Landroid/widget/ProgressBar;

    .line 80
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->addFooterView(Landroid/view/View;)V

    .line 81
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->isOverScrolled:Z

    return v0
.end method

.method public onLoadMore()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mOnLoadMoreListener:Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mOnLoadMoreListener:Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;

    invoke-interface {v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;->onLoadMore()V

    .line 171
    :cond_0
    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mIsLoadingMore:Z

    .line 175
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mPgbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mTvLoading:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 189
    if-eqz p4, :cond_0

    .line 190
    iget-boolean v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->isOverScrolled:Z

    if-nez v0, :cond_0

    .line 191
    iget v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->overScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->overScrollCounter:I

    .line 192
    iget v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->overScrollCounter:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOverScrolled(Z)V

    .line 195
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onOverScrolled(IIZZ)V

    .line 196
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    iget-object v3, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mOnLoadMoreListener:Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;

    if-eqz v3, :cond_1

    .line 135
    if-ne p3, p4, :cond_2

    .line 137
    iget-object v1, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mTvLoading:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    add-int v3, p2, p3

    if-lt v3, p4, :cond_3

    move v0, v1

    .line 144
    .local v0, "loadMore":Z
    :goto_1
    iget-boolean v3, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mIsLoadingMore:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mCurrentScrollState:I

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mPgbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    iget-object v3, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mTvLoading:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iput-boolean v1, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mIsLoadingMore:Z

    .line 150
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMore()V

    goto :goto_0

    .end local v0    # "loadMore":Z
    :cond_3
    move v0, v2

    .line 142
    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 158
    iput p2, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mCurrentScrollState:I

    .line 160
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 164
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 22
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;)V
    .locals 0
    .param p1, "onLoadMoreListener"    # Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mOnLoadMoreListener:Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;

    .line 123
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 119
    return-void
.end method

.method public setOverScrolled(Z)V
    .locals 1
    .param p1, "isOverScrolled"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->isOverScrolled:Z

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->overScrollCounter:I

    .line 205
    return-void
.end method

.method public setupAdvBanner()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 85
    iget-object v6, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v6}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 86
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "extra_map_category_id"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, "categoryID":I
    invoke-static {v1}, Lcom/itim/explorer/util/AdvUtil;->getBannerID(I)I

    move-result v0

    .line 88
    .local v0, "bannerID":I
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->getHeaderViewsCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 89
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->getHeaderViewsCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 91
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->removeHeaderView(Landroid/view/View;)Z

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "i":I
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    if-ltz v0, :cond_1

    .line 95
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v4, "mHeaderView":Landroid/widget/ImageView;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v8, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 100
    new-instance v6, Lcom/itim/explorer/ui/widget/LoadMoreListView$1;

    invoke-direct {v6, p0}, Lcom/itim/explorer/ui/widget/LoadMoreListView$1;-><init>(Lcom/itim/explorer/ui/widget/LoadMoreListView;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v6, v7}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 109
    .end local v4    # "mHeaderView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method
