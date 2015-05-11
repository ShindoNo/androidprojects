.class public Lcom/itim/explorer/io/LoadCityBorder;
.super Landroid/os/AsyncTask;
.source "LoadCityBorder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/itim/explorer/io/model/CityBorder;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mError:Lcom/itim/explorer/interfaces/ILoad$Error;

.field private mILoad:Lcom/itim/explorer/interfaces/ILoadCityBorder;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/interfaces/ILoadCityBorder;Landroid/content/Context;)V
    .locals 0
    .param p1, "iLoad"    # Lcom/itim/explorer/interfaces/ILoadCityBorder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/itim/explorer/io/LoadCityBorder;->mILoad:Lcom/itim/explorer/interfaces/ILoadCityBorder;

    .line 22
    iput-object p2, p0, Lcom/itim/explorer/io/LoadCityBorder;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadCityBorder;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/CityBorder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/CityBorder;>;"
    :try_start_0
    iget-object v2, p0, Lcom/itim/explorer/io/LoadCityBorder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/itim/explorer/io/DataHandler;->getCityBorders(Landroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadCityBorder;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 40
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParseException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v1    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_1
    move-exception v1

    .line 42
    .local v1, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadCityBorder;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 43
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->printStackTrace()V

    goto :goto_0

    .line 44
    .end local v1    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_2
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->NETWORK:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadCityBorder;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 46
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/itim/explorer/interfaces/ILoad$Error;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v2, p0, Lcom/itim/explorer/io/LoadCityBorder;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadCityBorder;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/CityBorder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/CityBorder;>;"
    iget-object v0, p0, Lcom/itim/explorer/io/LoadCityBorder;->mILoad:Lcom/itim/explorer/interfaces/ILoadCityBorder;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/itim/explorer/io/LoadCityBorder;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/itim/explorer/io/LoadCityBorder;->mILoad:Lcom/itim/explorer/interfaces/ILoadCityBorder;

    iget-object v1, p0, Lcom/itim/explorer/io/LoadCityBorder;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    invoke-interface {v0, v1}, Lcom/itim/explorer/interfaces/ILoadCityBorder;->onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/io/LoadCityBorder;->mILoad:Lcom/itim/explorer/interfaces/ILoadCityBorder;

    invoke-interface {v0, p1}, Lcom/itim/explorer/interfaces/ILoadCityBorder;->onSuccess(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 28
    iget-object v0, p0, Lcom/itim/explorer/io/LoadCityBorder;->mILoad:Lcom/itim/explorer/interfaces/ILoadCityBorder;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/itim/explorer/io/LoadCityBorder;->mILoad:Lcom/itim/explorer/interfaces/ILoadCityBorder;

    invoke-interface {v0}, Lcom/itim/explorer/interfaces/ILoadCityBorder;->onStart()V

    .line 31
    :cond_0
    return-void
.end method
