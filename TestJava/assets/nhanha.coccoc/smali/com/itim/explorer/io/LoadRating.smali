.class public Lcom/itim/explorer/io/LoadRating;
.super Landroid/os/AsyncTask;
.source "LoadRating.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Lcom/itim/explorer/io/model/PoiRating;",
        ">;"
    }
.end annotation


# instance fields
.field private hash:Ljava/lang/String;

.field private mError:Lcom/itim/explorer/interfaces/ILoadRating$Error;

.field public mErrorMessage:Ljava/lang/String;

.field private mILoad:Lcom/itim/explorer/interfaces/ILoadRating;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/interfaces/ILoadRating;Ljava/lang/String;)V
    .locals 0
    .param p1, "iLoad"    # Lcom/itim/explorer/interfaces/ILoadRating;
    .param p2, "hash"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/itim/explorer/io/LoadRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadRating;

    .line 22
    iput-object p2, p0, Lcom/itim/explorer/io/LoadRating;->hash:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Lcom/itim/explorer/io/model/PoiRating;
    .locals 5
    .param p1, "params"    # [Landroid/os/Bundle;

    .prologue
    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, "rating":Lcom/itim/explorer/io/model/PoiRating;
    const/4 v1, 0x0

    .line 38
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_0
    iget-object v3, p0, Lcom/itim/explorer/io/LoadRating;->hash:Ljava/lang/String;

    invoke-static {v3}, Lcom/itim/explorer/io/DataHandler;->getPoiRating(Ljava/lang/String;)Lcom/itim/explorer/io/model/PoiRating;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadRating;->mErrorMessage:Ljava/lang/String;

    .line 60
    :cond_0
    :goto_0
    return-object v2

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :try_start_1
    sget-object v3, Lcom/itim/explorer/interfaces/ILoadRating$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadRating$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadRating;->mError:Lcom/itim/explorer/interfaces/ILoadRating$Error;

    .line 41
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    move-object v1, v0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadRating;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 43
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :try_start_2
    sget-object v3, Lcom/itim/explorer/interfaces/ILoadRating$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadRating$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadRating;->mError:Lcom/itim/explorer/interfaces/ILoadRating$Error;

    .line 45
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    move-object v1, v0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadRating;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 47
    .end local v0    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_2
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v3, Lcom/itim/explorer/interfaces/ILoadRating$Error;->NETWORK:Lcom/itim/explorer/interfaces/ILoadRating$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadRating;->mError:Lcom/itim/explorer/interfaces/ILoadRating$Error;

    .line 49
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    move-object v1, v0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadRating;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v3, Lcom/itim/explorer/interfaces/ILoadRating$Error;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoadRating$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadRating;->mError:Lcom/itim/explorer/interfaces/ILoadRating$Error;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    move-object v1, v0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadRating;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/io/LoadRating;->mErrorMessage:Ljava/lang/String;

    :cond_1
    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, [Landroid/os/Bundle;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadRating;->doInBackground([Landroid/os/Bundle;)Lcom/itim/explorer/io/model/PoiRating;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/itim/explorer/io/model/PoiRating;)V
    .locals 2
    .param p1, "result"    # Lcom/itim/explorer/io/model/PoiRating;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/itim/explorer/io/LoadRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadRating;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/itim/explorer/io/LoadRating;->mError:Lcom/itim/explorer/interfaces/ILoadRating$Error;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/itim/explorer/io/LoadRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadRating;

    iget-object v1, p0, Lcom/itim/explorer/io/LoadRating;->mError:Lcom/itim/explorer/interfaces/ILoadRating$Error;

    invoke-interface {v0, v1}, Lcom/itim/explorer/interfaces/ILoadRating;->onFailed(Lcom/itim/explorer/interfaces/ILoadRating$Error;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/io/LoadRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadRating;

    invoke-interface {v0, p1}, Lcom/itim/explorer/interfaces/ILoadRating;->onSuccess(Lcom/itim/explorer/io/model/PoiRating;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lcom/itim/explorer/io/model/PoiRating;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadRating;->onPostExecute(Lcom/itim/explorer/io/model/PoiRating;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 28
    iget-object v0, p0, Lcom/itim/explorer/io/LoadRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadRating;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/itim/explorer/io/LoadRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadRating;

    invoke-interface {v0}, Lcom/itim/explorer/interfaces/ILoadRating;->onStart()V

    .line 31
    :cond_0
    return-void
.end method
