.class public Lcom/itim/explorer/io/LoadPOILoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "LoadPOILoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/itim/explorer/io/model/POI;",
        ">;>;"
    }
.end annotation


# instance fields
.field final mLastConfig:Lcom/itim/explorer/util/InterestingConfigChanges;

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

.field private mPoiUpdateObserver:Lcom/itim/explorer/receiver/POIUpdateReceiver;

.field private mWhich:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/itim/explorer/util/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/itim/explorer/util/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/LoadPOILoader;->mLastConfig:Lcom/itim/explorer/util/InterestingConfigChanges;

    .line 23
    iput p2, p0, Lcom/itim/explorer/io/LoadPOILoader;->mWhich:I

    .line 24
    return-void
.end method

.method private getPOIs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 32
    iget v0, p0, Lcom/itim/explorer/io/LoadPOILoader;->mWhich:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-object v2

    .line 34
    :pswitch_0
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_HISTORY:Landroid/net/Uri;

    const-string v5, "HISTORY._id DESC LIMIT 4"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 37
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v0, "poi_id"

    invoke-static {v6, v0}, Lcom/itim/explorer/io/POISQLiteHelper;->cursorToPOIs(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 39
    .end local v6    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_BOOKMARK:Landroid/net/Uri;

    const-string v5, "BOOKMARK._id DESC LIMIT 4"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 42
    .restart local v6    # "cursor":Landroid/database/Cursor;
    const-string v0, "poi_id"

    invoke-static {v6, v0}, Lcom/itim/explorer/io/POISQLiteHelper;->cursorToPOIs(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 44
    .end local v6    # "cursor":Landroid/database/Cursor;
    :pswitch_2
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_HISTORY:Landroid/net/Uri;

    const-string v5, "HISTORY._id DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 47
    .restart local v6    # "cursor":Landroid/database/Cursor;
    const-string v0, "poi_id"

    invoke-static {v6, v0}, Lcom/itim/explorer/io/POISQLiteHelper;->cursorToPOIs(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 49
    .end local v6    # "cursor":Landroid/database/Cursor;
    :pswitch_3
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_BOOKMARK:Landroid/net/Uri;

    const-string v5, "BOOKMARK._id DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    .restart local v6    # "cursor":Landroid/database/Cursor;
    const-string v0, "poi_id"

    invoke-static {v6, v0}, Lcom/itim/explorer/io/POISQLiteHelper;->cursorToPOIs(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadPOILoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
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
    .line 62
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadPOILoader;->onReleaseResources(Ljava/util/List;)V

    .line 67
    :cond_0
    move-object v0, p1

    .line 68
    .local v0, "oldCursor":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    iput-object p1, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPOIs:Ljava/util/List;

    .line 70
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 74
    :cond_1
    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p0, v0}, Lcom/itim/explorer/io/LoadPOILoader;->onReleaseResources(Ljava/util/List;)V

    .line 77
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->loadInBackground()Ljava/util/List;

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
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/itim/explorer/io/LoadPOILoader;->getPOIs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadPOILoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
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
    .line 103
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadPOILoader;->onReleaseResources(Ljava/util/List;)V

    .line 106
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
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
    .line 129
    .local p1, "cursor":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 112
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->onStopLoading()V

    .line 114
    iget-object v0, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPOIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPOIs:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itim/explorer/io/LoadPOILoader;->onReleaseResources(Ljava/util/List;)V

    .line 116
    iput-object v2, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPOIs:Ljava/util/List;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPoiUpdateObserver:Lcom/itim/explorer/receiver/POIUpdateReceiver;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPoiUpdateObserver:Lcom/itim/explorer/receiver/POIUpdateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    iput-object v2, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPoiUpdateObserver:Lcom/itim/explorer/receiver/POIUpdateReceiver;

    .line 123
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPOIs:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPOIs:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/itim/explorer/io/LoadPOILoader;->deliverResult(Ljava/util/List;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPoiUpdateObserver:Lcom/itim/explorer/receiver/POIUpdateReceiver;

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Lcom/itim/explorer/receiver/POIUpdateReceiver;

    invoke-direct {v1, p0}, Lcom/itim/explorer/receiver/POIUpdateReceiver;-><init>(Lcom/itim/explorer/io/LoadPOILoader;)V

    iput-object v1, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPoiUpdateObserver:Lcom/itim/explorer/receiver/POIUpdateReceiver;

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/itim/explorer/io/LoadPOILoader;->mLastConfig:Lcom/itim/explorer/util/InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itim/explorer/util/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 92
    .local v0, "configChange":Z
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itim/explorer/io/LoadPOILoader;->mPOIs:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->forceLoad()V

    .line 95
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/itim/explorer/io/LoadPOILoader;->cancelLoad()Z

    .line 100
    return-void
.end method
