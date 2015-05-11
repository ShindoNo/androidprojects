.class public Lcom/itim/explorer/io/LoadReview;
.super Landroid/os/AsyncTask;
.source "LoadReview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/itim/explorer/io/model/Review;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mError:Lcom/itim/explorer/interfaces/ILoad$Error;

.field private mILoad:Lcom/itim/explorer/interfaces/ILoadReview;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/interfaces/ILoadReview;)V
    .locals 0
    .param p1, "iLoad"    # Lcom/itim/explorer/interfaces/ILoadReview;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/itim/explorer/io/LoadReview;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    .line 21
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadReview;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Review;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, "reviews":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Review;>;"
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-static {v2, v3, v4}, Lcom/itim/explorer/io/DataHandler;->getReviews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadReview;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 38
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParseException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_1
    move-exception v0

    .line 40
    .local v0, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadReview;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 41
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v0    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_2
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->NETWORK:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadReview;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadReview;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;II)V
    .locals 4
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "offset"    # I

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/itim/explorer/io/LoadReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadReview;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Review;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Review;>;"
    iget-object v0, p0, Lcom/itim/explorer/io/LoadReview;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/itim/explorer/io/LoadReview;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/itim/explorer/io/LoadReview;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    iget-object v1, p0, Lcom/itim/explorer/io/LoadReview;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    invoke-interface {v0, v1}, Lcom/itim/explorer/interfaces/ILoadReview;->onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/io/LoadReview;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    invoke-interface {v0, p1}, Lcom/itim/explorer/interfaces/ILoadReview;->onSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 26
    iget-object v0, p0, Lcom/itim/explorer/io/LoadReview;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/itim/explorer/io/LoadReview;->mILoad:Lcom/itim/explorer/interfaces/ILoadReview;

    invoke-interface {v0}, Lcom/itim/explorer/interfaces/ILoadReview;->onStart()V

    .line 29
    :cond_0
    return-void
.end method
