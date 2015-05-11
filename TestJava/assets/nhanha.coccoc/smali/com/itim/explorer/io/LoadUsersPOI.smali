.class public Lcom/itim/explorer/io/LoadUsersPOI;
.super Landroid/os/AsyncTask;
.source "LoadUsersPOI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/itim/explorer/io/model/UsersPOI;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

.field public mErrorMessage:Ljava/lang/String;

.field private mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

.field public mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/interfaces/ILoadUsersPOI;Ljava/lang/String;)V
    .locals 0
    .param p1, "iLoad"    # Lcom/itim/explorer/interfaces/ILoadUsersPOI;
    .param p2, "uId"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    .line 21
    iput-object p2, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mUid:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, [Landroid/os/Bundle;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadUsersPOI;->doInBackground([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .param p1, "params"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/UsersPOI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/UsersPOI;>;"
    const/4 v2, 0x0

    .line 37
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_0
    iget-object v3, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mUid:Ljava/lang/String;

    invoke-static {v3}, Lcom/itim/explorer/io/DataHandler;->getUsersPois(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 56
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mErrorMessage:Ljava/lang/String;

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :try_start_1
    sget-object v3, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    .line 40
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    move-object v2, v1

    .line 56
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 42
    .end local v1    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_1
    move-exception v1

    .line 43
    .local v1, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :try_start_2
    sget-object v3, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    .line 44
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    move-object v2, v1

    .line 56
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 46
    .end local v1    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_2
    move-exception v1

    .line 47
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v3, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->NETWORK:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    .line 48
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    move-object v2, v1

    .line 56
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 51
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v3, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    move-object v2, v1

    .line 56
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mErrorMessage:Ljava/lang/String;

    :cond_1
    throw v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadUsersPOI;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/UsersPOI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/UsersPOI;>;"
    iget-object v0, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    iget-object v1, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mError:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    invoke-interface {v0, v1}, Lcom/itim/explorer/interfaces/ILoadUsersPOI;->onFailed(Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    invoke-interface {v0, p1}, Lcom/itim/explorer/interfaces/ILoadUsersPOI;->onSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 27
    iget-object v0, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/itim/explorer/io/LoadUsersPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    invoke-interface {v0}, Lcom/itim/explorer/interfaces/ILoadUsersPOI;->onStart()V

    .line 30
    :cond_0
    return-void
.end method
