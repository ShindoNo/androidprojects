.class public Lcom/itim/explorer/ui/ReviewActivity;
.super Lcom/itim/explorer/ui/BaseActivity;
.source "ReviewActivity.java"

# interfaces
.implements Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/ReviewActivity$2;
    }
.end annotation


# static fields
.field public static final ARG_POI_HASH:Ljava/lang/String; = "arg_is_load_more"

.field private static final mItemCountToLoad:I = 0xa


# instance fields
.field private mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

.field private mCurrentItemIndex:I

.field private mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

.field private mIsLoadMore:Z

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
    .line 25
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseActivity;-><init>()V

    .line 37
    new-instance v0, Lcom/itim/explorer/ui/ReviewActivity$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/ReviewActivity$1;-><init>(Lcom/itim/explorer/ui/ReviewActivity;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/ReviewActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/ReviewActivity;)Lcom/itim/explorer/ui/adapter/ReviewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/itim/explorer/ui/ReviewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/itim/explorer/ui/ReviewActivity;->mIsLoadMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/ReviewActivity;)Lcom/itim/explorer/ui/widget/LoadMoreListView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ReviewActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onBackPressed()V

    .line 163
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/ReviewActivity;->setContentView(I)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_is_load_more"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mPoiHash:Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mIsLoadMore:Z

    .line 98
    new-instance v0, Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/itim/explorer/ui/adapter/ReviewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    .line 100
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ReviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/ReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e013a

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 102
    const v0, 0x7f0b00f2

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/ReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    .line 103
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    const v1, 0x7f0b00f3

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/ReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setEmptyView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewActivity;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-boolean v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mIsLoadMore:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v0, p0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOnLoadMoreListener(Lcom/itim/explorer/ui/widget/LoadMoreListView$OnLoadMoreListener;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 108
    new-instance v0, Lcom/itim/explorer/io/LoadReview;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    invoke-direct {v0, v1}, Lcom/itim/explorer/io/LoadReview;-><init>(Lcom/itim/explorer/interfaces/ILoadReview;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    .line 109
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewActivity;->mPoiHash:Ljava/lang/String;

    const/16 v2, 0xa

    iget v3, p0, Lcom/itim/explorer/ui/ReviewActivity;->mCurrentItemIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/itim/explorer/io/LoadReview;->execute(Ljava/lang/String;II)V

    .line 121
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/LoadReview;->cancel(Z)Z

    .line 170
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;

    .line 174
    :cond_0
    return-void
.end method

.method public onLoadMore()V
    .locals 4

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mIsLoadMore:Z

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    invoke-virtual {v0}, Lcom/itim/explorer/io/LoadReview;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    invoke-virtual {v0}, Lcom/itim/explorer/io/LoadReview;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 200
    :cond_2
    new-instance v0, Lcom/itim/explorer/io/LoadReview;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    invoke-direct {v0, v1}, Lcom/itim/explorer/io/LoadReview;-><init>(Lcom/itim/explorer/interfaces/ILoadReview;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    .line 201
    iget v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mCurrentItemIndex:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mCurrentItemIndex:I

    .line 202
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLoadReviews:Lcom/itim/explorer/io/LoadReview;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewActivity;->mPoiHash:Ljava/lang/String;

    const/16 v2, 0xa

    iget v3, p0, Lcom/itim/explorer/ui/ReviewActivity;->mCurrentItemIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/itim/explorer/io/LoadReview;->execute(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 155
    :pswitch_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ReviewActivity;->onBackPressed()V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onPause()V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onResume()V

    .line 126
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "170500206486453"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onStart()V

    .line 140
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 141
    const-string v0, "8GNN869PHKBHWM4K38NJ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onStop()V

    .line 147
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 148
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 149
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

    .line 177
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mAdapter:Lcom/itim/explorer/ui/adapter/ReviewAdapter;

    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/adapter/ReviewAdapter;->setPOIs(Ljava/util/List;)V

    .line 186
    :cond_0
    iput p2, p0, Lcom/itim/explorer/ui/ReviewActivity;->mCurrentItemIndex:I

    .line 187
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v0, v2, v2}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->scrollBy(II)V

    .line 190
    :cond_1
    return-void

    .line 180
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/ReviewActivity;->mReviews:Ljava/util/ArrayList;

    goto :goto_0
.end method
