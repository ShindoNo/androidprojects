.class public Lcom/itim/explorer/io/LoadFacebookRating;
.super Landroid/os/AsyncTask;
.source "LoadFacebookRating.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/itim/explorer/io/model/FacebookPost;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mError:Lcom/itim/explorer/interfaces/ILoad$Error;

.field private mILoad:Lcom/itim/explorer/interfaces/ILoadFacebookPost;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/interfaces/ILoadFacebookPost;)V
    .locals 0
    .param p1, "iLoad"    # Lcom/itim/explorer/interfaces/ILoadFacebookPost;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadFacebookPost;

    .line 22
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadFacebookRating;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/FacebookPost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/FacebookPost;>;"
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/itim/explorer/io/DataHandler;->getFacebookPosts(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 39
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParseException;->printStackTrace()V

    goto :goto_0

    .line 40
    .end local v1    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_1
    move-exception v1

    .line 41
    .local v1, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 42
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v1    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_2
    move-exception v1

    .line 44
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->NETWORK:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 45
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadFacebookRating;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/FacebookPost;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/FacebookPost;>;"
    iget-object v0, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadFacebookPost;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadFacebookPost;

    iget-object v1, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    invoke-interface {v0, v1}, Lcom/itim/explorer/interfaces/ILoadFacebookPost;->onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadFacebookPost;

    invoke-interface {v0, p1}, Lcom/itim/explorer/interfaces/ILoadFacebookPost;->onSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 27
    iget-object v0, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadFacebookPost;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/itim/explorer/io/LoadFacebookRating;->mILoad:Lcom/itim/explorer/interfaces/ILoadFacebookPost;

    invoke-interface {v0}, Lcom/itim/explorer/interfaces/ILoadFacebookPost;->onStart()V

    .line 30
    :cond_0
    return-void
.end method
