.class public Lcom/itim/explorer/io/LoadPOI;
.super Landroid/os/AsyncTask;
.source "LoadPOI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/itim/explorer/io/model/POI;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final ACTION_GET_POI:I = 0x3

.field public static final ACTION_GET_POIS:I = 0x2

.field public static final ACTION_LOAD:Ljava/lang/String; = "extra_method"

.field public static final ACTION_NEAR_BY:I = 0x4

.field public static final ACTION_SEARCH:I = 0x1


# instance fields
.field private mError:Lcom/itim/explorer/interfaces/ILoad$Error;

.field public mErrorMessage:Ljava/lang/String;

.field private mILoad:Lcom/itim/explorer/interfaces/ILoad;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/interfaces/ILoad;)V
    .locals 0
    .param p1, "iLoad"    # Lcom/itim/explorer/interfaces/ILoad;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/itim/explorer/io/LoadPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoad;

    .line 35
    return-void
.end method

.method private getPOI(Landroid/os/Bundle;)Ljava/util/List;
    .locals 3
    .param p1, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    const/4 v0, 0x0

    .line 149
    .local v0, "location":Landroid/location/Location;
    const-string v2, "extra_map_location"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "extra_map_location"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "location":Landroid/location/Location;
    check-cast v0, Landroid/location/Location;

    .line 152
    .restart local v0    # "location":Landroid/location/Location;
    :cond_0
    const-string v2, "extra_map_poi_hash"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/itim/explorer/io/DataHandler;->getPoi(Ljava/lang/String;Landroid/location/Location;)Lcom/itim/explorer/io/model/POI;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-object v1
.end method

.method private getPOIs(Landroid/os/Bundle;)Ljava/util/List;
    .locals 9
    .param p1, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "location":Landroid/location/Location;
    const/4 v4, 0x0

    .line 128
    .local v4, "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v5, 0x0

    .line 130
    .local v5, "farRight":Lcom/google/android/gms/maps/model/LatLng;
    const-string v6, "extra_map_location"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    const-string v6, "extra_map_location"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3    # "location":Landroid/location/Location;
    check-cast v3, Landroid/location/Location;

    .line 133
    .restart local v3    # "location":Landroid/location/Location;
    :cond_0
    const-string v6, "extra_map_near_left"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 134
    const-string v6, "extra_map_near_left"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 136
    .restart local v4    # "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    const-string v6, "extra_map_far_right"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 137
    const-string v6, "extra_map_far_right"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .end local v5    # "farRight":Lcom/google/android/gms/maps/model/LatLng;
    check-cast v5, Lcom/google/android/gms/maps/model/LatLng;

    .line 140
    .restart local v5    # "farRight":Lcom/google/android/gms/maps/model/LatLng;
    :cond_2
    const-string v6, "extra_map_offset"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 141
    .local v2, "offset":I
    const-string v6, "extra_map_size"

    const/16 v7, 0xa

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 142
    .local v1, "pageSize":I
    const-string v6, "extra_map_category_id"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "categoryID":I
    invoke-static/range {v0 .. v5}, Lcom/itim/explorer/io/DataHandler;->getPois(IIILandroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method private nearBy(Landroid/os/Bundle;)Ljava/util/List;
    .locals 7
    .param p1, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v4, 0x0

    .line 160
    .local v4, "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v5, 0x0

    .line 161
    .local v5, "farRight":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v2, 0x0

    .line 165
    .local v2, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    const-string v3, "extra_map_latlon"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    const-string v3, "extra_map_latlon"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 168
    .restart local v2    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    const-string v3, "extra_map_near_left"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    const-string v3, "extra_map_near_left"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 171
    .restart local v4    # "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    const-string v3, "extra_map_far_right"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    const-string v3, "extra_map_far_right"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .end local v5    # "farRight":Lcom/google/android/gms/maps/model/LatLng;
    check-cast v5, Lcom/google/android/gms/maps/model/LatLng;

    .line 174
    .restart local v5    # "farRight":Lcom/google/android/gms/maps/model/LatLng;
    :cond_2
    const-string v3, "extra_map_offset"

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, "offset":I
    const-string v3, "extra_map_size"

    const/16 v6, 0xa

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, "pageSize":I
    const/high16 v3, 0x3f800000

    invoke-static/range {v0 .. v5}, Lcom/itim/explorer/io/DataHandler;->getPoisNearBy(IILcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private search(Landroid/os/Bundle;)Ljava/util/List;
    .locals 10
    .param p1, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, "location":Landroid/location/Location;
    const/4 v6, 0x0

    .line 105
    .local v6, "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v7, 0x0

    .line 107
    .local v7, "farRight":Lcom/google/android/gms/maps/model/LatLng;
    const-string v8, "extra_map_location"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 108
    const-string v8, "extra_map_location"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "location":Landroid/location/Location;
    check-cast v4, Landroid/location/Location;

    .line 110
    .restart local v4    # "location":Landroid/location/Location;
    :cond_0
    const-string v8, "extra_map_near_left"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 111
    const-string v8, "extra_map_near_left"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6    # "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    check-cast v6, Lcom/google/android/gms/maps/model/LatLng;

    .line 113
    .restart local v6    # "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    const-string v8, "extra_map_far_right"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 114
    const-string v8, "extra_map_far_right"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .end local v7    # "farRight":Lcom/google/android/gms/maps/model/LatLng;
    check-cast v7, Lcom/google/android/gms/maps/model/LatLng;

    .line 116
    .restart local v7    # "farRight":Lcom/google/android/gms/maps/model/LatLng;
    :cond_2
    const-string v8, "extra_map_search_query"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "query":Ljava/lang/String;
    const-string v8, "extra_map_offset"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 118
    .local v3, "offset":I
    const-string v8, "extra_map_size"

    const/16 v9, 0xa

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 119
    .local v2, "pageSize":I
    const-string v8, "extra_map_category_id"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "categoryID":I
    const-string v8, "extra_map_radius"

    const/high16 v9, -0x40800000

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 122
    .local v5, "radius":F
    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/itim/explorer/io/DataHandler;->searchPois(ILjava/lang/String;IILandroid/location/Location;FLcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Z)Ljava/util/List;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, [Landroid/os/Bundle;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadPOI;->doInBackground([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .param p1, "params"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    const/4 v1, 0x0

    .line 50
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    const-string v4, "extra_method"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 85
    :goto_0
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadPOI;->mErrorMessage:Ljava/lang/String;

    .line 88
    :cond_0
    :goto_1
    return-object v2

    .line 52
    :pswitch_0
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, p1, v3

    invoke-direct {p0, v3}, Lcom/itim/explorer/io/LoadPOI;->search(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 53
    goto :goto_0

    .line 55
    :pswitch_1
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {p0, v3}, Lcom/itim/explorer/io/LoadPOI;->getPOIs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 56
    goto :goto_0

    .line 58
    :pswitch_2
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {p0, v3}, Lcom/itim/explorer/io/LoadPOI;->getPOI(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 59
    goto :goto_0

    .line 61
    :pswitch_3
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {p0, v3}, Lcom/itim/explorer/io/LoadPOI;->nearBy(Landroid/os/Bundle;)Ljava/util/List;
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 62
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :try_start_2
    sget-object v3, Lcom/itim/explorer/interfaces/ILoad$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadPOI;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 68
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParseException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    move-object v1, v0

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadPOI;->mErrorMessage:Ljava/lang/String;

    goto :goto_1

    .line 70
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :try_start_3
    sget-object v3, Lcom/itim/explorer/interfaces/ILoad$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadPOI;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 72
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    move-object v1, v0

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadPOI;->mErrorMessage:Ljava/lang/String;

    goto :goto_1

    .line 74
    .end local v0    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_2
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v3, Lcom/itim/explorer/interfaces/ILoad$Error;->NETWORK:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadPOI;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    move-object v1, v0

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadPOI;->mErrorMessage:Ljava/lang/String;

    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v3, Lcom/itim/explorer/interfaces/ILoad$Error;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoad$Error;

    iput-object v3, p0, Lcom/itim/explorer/io/LoadPOI;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const-string v3, "LoadPOI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "============="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    move-object v1, v0

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/io/LoadPOI;->mErrorMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/io/LoadPOI;->mErrorMessage:Ljava/lang/String;

    :cond_1
    throw v3

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/io/LoadPOI;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
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
    .line 93
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    iget-object v0, p0, Lcom/itim/explorer/io/LoadPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoad;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/itim/explorer/io/LoadPOI;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/itim/explorer/io/LoadPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoad;

    iget-object v1, p0, Lcom/itim/explorer/io/LoadPOI;->mError:Lcom/itim/explorer/interfaces/ILoad$Error;

    invoke-interface {v0, v1}, Lcom/itim/explorer/interfaces/ILoad;->onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/io/LoadPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoad;

    invoke-interface {v0, p1}, Lcom/itim/explorer/interfaces/ILoad;->onSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 40
    iget-object v0, p0, Lcom/itim/explorer/io/LoadPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoad;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/itim/explorer/io/LoadPOI;->mILoad:Lcom/itim/explorer/interfaces/ILoad;

    invoke-interface {v0}, Lcom/itim/explorer/interfaces/ILoad;->onStart()V

    .line 43
    :cond_0
    return-void
.end method
