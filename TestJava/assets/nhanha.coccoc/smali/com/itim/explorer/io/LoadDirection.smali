.class public Lcom/itim/explorer/io/LoadDirection;
.super Landroid/os/AsyncTask;
.source "LoadDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/itim/explorer/io/model/Direction;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final DEPARTURE_TIME:Ljava/lang/String; = "departure_time"

.field public static final DESTINATION_POI:Ljava/lang/String; = "load_des_des"

.field public static final MODE:Ljava/lang/String; = "load_des_mode"

.field public static final MODE_BICYCLE:Ljava/lang/String; = "bicycling"

.field public static final MODE_DRIVING:Ljava/lang/String; = "driving"

.field public static final MODE_TRANSIT:Ljava/lang/String; = "transit"

.field public static final MODE_WALKING:Ljava/lang/String; = "walking"

.field public static final ORIGINAL_POI:Ljava/lang/String; = "load_des_ori"


# instance fields
.field private mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field private mILoad:Lcom/itim/explorer/interfaces/ILoadDirection;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/interfaces/ILoadDirection;)V
    .locals 0
    .param p1, "iLoad"    # Lcom/itim/explorer/interfaces/ILoadDirection;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/itim/explorer/io/LoadDirection;->mILoad:Lcom/itim/explorer/interfaces/ILoadDirection;

    .line 30
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, [Landroid/os/Bundle;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadDirection;->doInBackground([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/os/Bundle;)Ljava/util/List;
    .locals 9
    .param p1, "params"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Direction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, "directions":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Direction;>;"
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, p1, v7

    const-string v8, "load_des_ori"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 45
    .local v4, "ori":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v7, 0x0

    aget-object v7, p1, v7

    const-string v8, "load_des_des"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 46
    .local v0, "des":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v7, 0x0

    aget-object v7, p1, v7

    const-string v8, "load_des_mode"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "mode":Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, p1, v7

    const-string v8, "departure_time"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v0, v3, v7}, Lcom/itim/explorer/io/DataHandler;->getDirection(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)Lcom/itim/explorer/io/model/DirectionResult;

    move-result-object v5

    .line 49
    .local v5, "result":Lcom/itim/explorer/io/model/DirectionResult;
    invoke-virtual {v5}, Lcom/itim/explorer/io/model/DirectionResult;->getStatus()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "status":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/itim/explorer/io/model/DirectionResult;->getStatus()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->OK:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    invoke-virtual {v8}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 51
    invoke-virtual {v5}, Lcom/itim/explorer/io/model/DirectionResult;->getDirection()Ljava/util/List;

    move-result-object v1

    .line 80
    .end local v0    # "des":Lcom/google/android/gms/maps/model/LatLng;
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "ori":Lcom/google/android/gms/maps/model/LatLng;
    .end local v5    # "result":Lcom/itim/explorer/io/model/DirectionResult;
    .end local v6    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 52
    .restart local v0    # "des":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v3    # "mode":Ljava/lang/String;
    .restart local v4    # "ori":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v5    # "result":Lcom/itim/explorer/io/model/DirectionResult;
    .restart local v6    # "status":Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->NOT_FOUND:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    invoke-virtual {v7}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 53
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->NOT_FOUND:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    iput-object v7, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 67
    .end local v0    # "des":Lcom/google/android/gms/maps/model/LatLng;
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "ori":Lcom/google/android/gms/maps/model/LatLng;
    .end local v5    # "result":Lcom/itim/explorer/io/model/DirectionResult;
    .end local v6    # "status":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    iput-object v7, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 69
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParseException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v2    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    .restart local v0    # "des":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v3    # "mode":Ljava/lang/String;
    .restart local v4    # "ori":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v5    # "result":Lcom/itim/explorer/io/model/DirectionResult;
    .restart local v6    # "status":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->ZERO_RESULTS:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    invoke-virtual {v7}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 55
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->ZERO_RESULTS:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    iput-object v7, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 70
    .end local v0    # "des":Lcom/google/android/gms/maps/model/LatLng;
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "ori":Lcom/google/android/gms/maps/model/LatLng;
    .end local v5    # "result":Lcom/itim/explorer/io/model/DirectionResult;
    .end local v6    # "status":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 71
    .local v2, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    iput-object v7, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 72
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v2    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    .restart local v0    # "des":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v3    # "mode":Ljava/lang/String;
    .restart local v4    # "ori":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v5    # "result":Lcom/itim/explorer/io/model/DirectionResult;
    .restart local v6    # "status":Ljava/lang/String;
    :cond_3
    :try_start_2
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->MAX_WAYPOINTS_EXCEEDED:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    invoke-virtual {v7}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 57
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->MAX_WAYPOINTS_EXCEEDED:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    iput-object v7, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;
    :try_end_2
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 73
    .end local v0    # "des":Lcom/google/android/gms/maps/model/LatLng;
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "ori":Lcom/google/android/gms/maps/model/LatLng;
    .end local v5    # "result":Lcom/itim/explorer/io/model/DirectionResult;
    .end local v6    # "status":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 74
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->NETWORK:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    iput-object v7, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 75
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "des":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v3    # "mode":Ljava/lang/String;
    .restart local v4    # "ori":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v5    # "result":Lcom/itim/explorer/io/model/DirectionResult;
    .restart local v6    # "status":Ljava/lang/String;
    :cond_4
    :try_start_3
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->INVALID_REQUEST:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    invoke-virtual {v7}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 59
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->INVALID_REQUEST:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    iput-object v7, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;
    :try_end_3
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 76
    .end local v0    # "des":Lcom/google/android/gms/maps/model/LatLng;
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "ori":Lcom/google/android/gms/maps/model/LatLng;
    .end local v5    # "result":Lcom/itim/explorer/io/model/DirectionResult;
    .end local v6    # "status":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    iput-object v7, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "des":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v3    # "mode":Ljava/lang/String;
    .restart local v4    # "ori":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v5    # "result":Lcom/itim/explorer/io/model/DirectionResult;
    .restart local v6    # "status":Ljava/lang/String;
    :cond_5
    :try_start_4
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->OVER_QUERY_LIMIT:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    invoke-virtual {v7}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 61
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->OVER_QUERY_LIMIT:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    iput-object v7, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    goto :goto_0

    .line 62
    :cond_6
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->REQUEST_DENIED:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    invoke-virtual {v7}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 63
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->REQUEST_DENIED:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    iput-object v7, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    goto/16 :goto_0

    .line 64
    :cond_7
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->UNKNOWN_ERROR:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    invoke-virtual {v7}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 65
    sget-object v7, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->UNKNOWN_ERROR:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    iput-object v7, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;
    :try_end_4
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadDirection;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Direction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Direction;>;"
    iget-object v0, p0, Lcom/itim/explorer/io/LoadDirection;->mILoad:Lcom/itim/explorer/interfaces/ILoadDirection;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/itim/explorer/io/LoadDirection;->mILoad:Lcom/itim/explorer/interfaces/ILoadDirection;

    iget-object v1, p0, Lcom/itim/explorer/io/LoadDirection;->mError:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    invoke-interface {v0, v1}, Lcom/itim/explorer/interfaces/ILoadDirection;->onFailed(Lcom/itim/explorer/interfaces/ILoadDirection$Status;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/io/LoadDirection;->mILoad:Lcom/itim/explorer/interfaces/ILoadDirection;

    invoke-interface {v0, p1}, Lcom/itim/explorer/interfaces/ILoadDirection;->onSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 35
    iget-object v0, p0, Lcom/itim/explorer/io/LoadDirection;->mILoad:Lcom/itim/explorer/interfaces/ILoadDirection;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/itim/explorer/io/LoadDirection;->mILoad:Lcom/itim/explorer/interfaces/ILoadDirection;

    invoke-interface {v0}, Lcom/itim/explorer/interfaces/ILoadDirection;->onStart()V

    .line 38
    :cond_0
    return-void
.end method
