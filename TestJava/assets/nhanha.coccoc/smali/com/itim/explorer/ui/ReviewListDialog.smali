.class public Lcom/itim/explorer/ui/ReviewListDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ReviewListDialog.java"

# interfaces
.implements Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/ReviewListDialog$2;
    }
.end annotation


# static fields
.field public static final ARG_POI_HASH:Ljava/lang/String; = "arg_is_load_more"


# instance fields
.field private mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

.field private mCurrentItemIndex:I

.field private mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

.field private mIsLoadMore:Z

.field private mItemCountToLoad:I

.field private mLoadReviews:Lcom/itim/explorer/io/LoadReview;

.field private mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

.field private mPoiHash:Ljava/lang/String;

.field private mReviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/Review;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 31
    const/16 v0, 0xa

    iput v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mItemCountToLoad:I

    .line 35
    new-instance v0, Lcom/itim/explorer/ui/ReviewListDialog$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/ReviewListDialog$1;-><init>(Lcom/itim/explorer/ui/ReviewListDialog;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/ReviewListDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewListDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/ReviewListDialog;)Lcom/itim/explorer/ui/adapter/ReviewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewListDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/ReviewListDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewListDialog;

    .prologue
    .line 24
    iget v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mItemCountToLoad:I

    return v0
.end method

.method static synthetic access$302(Lcom/itim/explorer/ui/ReviewListDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewListDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mIsLoadMore:Z

    return p1
.end method

.method static synthetic access$400(Lcom/itim/explorer/ui/ReviewListDialog;)Lcom/itim/explorer/ui/widget/LoadMoreListView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewListDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/itim/explorer/ui/ReviewListDialog;->setStyle(II)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ReviewListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_is_load_more"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mPoiHash:Ljava/lang/String;

    .line 89
    iput-boolean v2, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mIsLoadMore:Z

    .line 90
    new-instance v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/ReviewListDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/ui/adapter/ReviewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const v2, 0x7f040051

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ReviewListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    const v2, 0x7f0b0142

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    .local v0, "tvTitle":Landroid/widget/TextView;
    const v2, 0x7f0e012b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 101
    const v2, 0x7f0b0146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iput-object v2, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    .line 103
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iget-object v3, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    invoke-virtual {v2, v3}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-boolean v2, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mIsLoadMore:Z

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v2, p0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOnLoadMoreListener(Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;)V

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 107
    new-instance v2, Lcom/itim/explorer/io/LoadReview;

    iget-object v3, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    invoke-direct {v2, v3}, Lcom/itim/explorer/io/LoadReview;-><init>(Lcom/itim/explorer/interfaces/ILoadReview;)V

    iput-object v2, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    .line 108
    iget-object v2, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mPoiHash:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mItemCountToLoad:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mCurrentItemIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/itim/explorer/io/LoadReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 116
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/LoadReview;->cancel(Z)Z

    .line 117
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;

    .line 121
    :cond_0
    return-void
.end method

.method public onLoadMore()V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    invoke-virtual {v0}, Lcom/itim/explorer/io/LoadReview;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    invoke-virtual {v0}, Lcom/itim/explorer/io/LoadReview;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mIsLoadMore:Z

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Lcom/itim/explorer/io/LoadReview;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    invoke-direct {v0, v1}, Lcom/itim/explorer/io/LoadReview;-><init>(Lcom/itim/explorer/interfaces/ILoadReview;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    .line 144
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mPoiHash:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mItemCountToLoad:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mCurrentItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/LoadReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    iget v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mCurrentItemIndex:I

    iget v1, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mItemCountToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mCurrentItemIndex:I

    .line 148
    :cond_1
    return-void
.end method

.method public setPOIs(Ljava/util/List;I)V
    .locals 3
    .param p2, "currentItemIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Review;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "reviews":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Review;>;"
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->setPOIs(Ljava/util/List;)V

    .line 133
    :cond_0
    iput p2, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mCurrentItemIndex:I

    .line 134
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v0, v2, v2}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->scrollBy(II)V

    .line 137
    :cond_1
    return-void

    .line 127
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewListDialog;->mReviews:Ljava/util/ArrayList;

    goto :goto_0
.end method
