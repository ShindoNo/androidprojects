.class public Lcom/itim/explorer/io/LoadSearchQueryLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "LoadSearchQueryLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/itim/explorer/io/SearchQueryHistory;",
        ">;>;"
    }
.end annotation


# instance fields
.field final mLastConfig:Lcom/itim/explorer/util/InterestingConfigChanges;

.field private mPoiUpdateObserver:Lcom/itim/explorer/receiver/SearchQuertUpdateReceiver;

.field private mSearchQuery:Ljava/util/List;
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
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/itim/explorer/util/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/itim/explorer/util/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mLastConfig:Lcom/itim/explorer/util/InterestingConfigChanges;

    .line 21
    return-void
.end method

.method private getPOIs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/SearchQueryHistory;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_SEARCH_ALL_QUERY:Landroid/net/Uri;

    const-string v5, "SEARCH_QUERY._id DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 36
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {v6}, Lcom/itim/explorer/io/POISQLiteHelper;->cursorToQuery(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
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
    .line 43
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/SearchQueryHistory;>;"
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->onReleaseResources(Ljava/util/List;)V

    .line 48
    :cond_0
    move-object v0, p1

    .line 49
    .local v0, "oldCursor":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/SearchQueryHistory;>;"
    iput-object p1, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mSearchQuery:Ljava/util/List;

    .line 51
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 55
    :cond_1
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {p0, v0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->onReleaseResources(Ljava/util/List;)V

    .line 58
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/SearchQueryHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->getPOIs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
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
    .line 84
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/SearchQueryHistory;>;"
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->onReleaseResources(Ljava/util/List;)V

    .line 87
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
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
    .line 110
    .local p1, "cursor":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/SearchQueryHistory;>;"
    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 93
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->onStopLoading()V

    .line 95
    iget-object v0, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mSearchQuery:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mSearchQuery:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->onReleaseResources(Ljava/util/List;)V

    .line 97
    iput-object v2, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mSearchQuery:Ljava/util/List;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mPoiUpdateObserver:Lcom/itim/explorer/receiver/SearchQuertUpdateReceiver;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mPoiUpdateObserver:Lcom/itim/explorer/receiver/SearchQuertUpdateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    iput-object v2, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mPoiUpdateObserver:Lcom/itim/explorer/receiver/SearchQuertUpdateReceiver;

    .line 104
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mSearchQuery:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mSearchQuery:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->deliverResult(Ljava/util/List;)V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mPoiUpdateObserver:Lcom/itim/explorer/receiver/SearchQuertUpdateReceiver;

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Lcom/itim/explorer/receiver/SearchQuertUpdateReceiver;

    invoke-direct {v1, p0}, Lcom/itim/explorer/receiver/SearchQuertUpdateReceiver;-><init>(Lcom/itim/explorer/io/LoadSearchQueryLoader;)V

    iput-object v1, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mPoiUpdateObserver:Lcom/itim/explorer/receiver/SearchQuertUpdateReceiver;

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mLastConfig:Lcom/itim/explorer/util/InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itim/explorer/util/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 73
    .local v0, "configChange":Z
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itim/explorer/io/LoadSearchQueryLoader;->mSearchQuery:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->forceLoad()V

    .line 76
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadSearchQueryLoader;->cancelLoad()Z

    .line 81
    return-void
.end method
