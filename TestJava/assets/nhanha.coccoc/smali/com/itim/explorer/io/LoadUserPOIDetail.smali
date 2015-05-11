.class public Lcom/itim/explorer/io/LoadUserPOIDetail;
.super Landroid/os/AsyncTask;
.source "LoadUserPOIDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Lcom/itim/explorer/io/model/UsersPOI;",
        ">;"
    }
.end annotation


# instance fields
.field private mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

.field public mErrorMessage:Ljava/lang/String;

.field private mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

.field private mPID:Ljava/lang/String;

.field private mUId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/interfaces/ILoadUsersPOI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "iLoad"    # Lcom/itim/explorer/interfaces/ILoadUsersPOI;
    .param p2, "pID"    # Ljava/lang/String;
    .param p3, "uId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    .line 22
    iput-object p2, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mPID:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mUId:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Lcom/itim/explorer/io/model/UsersPOI;
    .locals 6
    .param p1, "params"    # [Landroid/os/Bundle;

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "categories":Lcom/itim/explorer/io/model/UsersPOI;
    const/4 v3, 0x0

    .line 39
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_0
    iget-object v4, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mPID:Ljava/lang/String;

    iget-object v5, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mUId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/itim/explorer/io/DataHandler;->getUsersPoi(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/itim/explorer/io/model/UsersPOI;

    move-object v1, v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mErrorMessage:Ljava/lang/String;

    .line 61
    :cond_0
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :try_start_1
    sget-object v4, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    iput-object v4, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    .line 42
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    move-object v3, v2

    .line 58
    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 44
    .end local v2    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_1
    move-exception v2

    .line 45
    .local v2, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :try_start_2
    sget-object v4, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    iput-object v4, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    .line 46
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    move-object v3, v2

    .line 58
    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 48
    .end local v2    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_2
    move-exception v2

    .line 49
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v4, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->NETWORK:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    iput-object v4, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    .line 50
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    move-object v3, v2

    .line 58
    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 53
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v4, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    iput-object v4, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    move-object v3, v2

    .line 58
    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    .line 59
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mErrorMessage:Ljava/lang/String;

    :cond_1
    throw v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, [Landroid/os/Bundle;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadUserPOIDetail;->doInBackground([Landroid/os/Bundle;)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/itim/explorer/io/model/UsersPOI;)V
    .locals 3
    .param p1, "result"    # Lcom/itim/explorer/io/model/UsersPOI;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    iget-object v2, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    invoke-interface {v1, v2}, Lcom/itim/explorer/interfaces/ILoadUsersPOI;->onFailed(Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "usersPOIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/UsersPOI;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    invoke-interface {v1, v0}, Lcom/itim/explorer/interfaces/ILoadUsersPOI;->onSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lcom/itim/explorer/io/model/UsersPOI;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadUserPOIDetail;->onPostExecute(Lcom/itim/explorer/io/model/UsersPOI;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 29
    iget-object v0, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/itim/explorer/io/LoadUserPOIDetail;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    invoke-interface {v0}, Lcom/itim/explorer/interfaces/ILoadUsersPOI;->onStart()V

    .line 32
    :cond_0
    return-void
.end method
