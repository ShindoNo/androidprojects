.class Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;
.super Landroid/os/AsyncTask;
.source "AutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/itim/explorer/io/model/POI;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

.field final synthetic val$constraint:Ljava/lang/CharSequence;

.field final synthetic val$filterResults:Landroid/widget/Filter$FilterResults;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    iput-object p2, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->val$constraint:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->val$filterResults:Landroid/widget/Filter$FilterResults;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v13, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->val$constraint:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "keyword":Ljava/lang/String;
    const-string v10, "Query"

    invoke-interface {v13, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v10, "Is final"

    const-string v14, "false"

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/4 v8, 0x0

    .line 92
    .local v8, "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v9, 0x0

    .line 100
    .local v9, "farRight":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    iget-object v10, v10, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$100(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/itim/explorer/util/Util;->getCurrentCity(Landroid/content/Context;)Lcom/itim/explorer/io/model/CityBorder;

    move-result-object v11

    .line 102
    .local v11, "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    invoke-virtual {v11}, Lcom/itim/explorer/io/model/CityBorder;->getId()I

    move-result v10

    const/4 v14, -0x1

    if-eq v10, v14, :cond_0

    .line 103
    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    .end local v8    # "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v11}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lat()D

    move-result-wide v14

    invoke-virtual {v11}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lng()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v8, v14, v15, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 104
    .restart local v8    # "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    .end local v9    # "farRight":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v11}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lat()D

    move-result-wide v14

    invoke-virtual {v11}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lng()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v9, v14, v15, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 105
    .restart local v9    # "farRight":Lcom/google/android/gms/maps/model/LatLng;
    const-string v10, "City"

    invoke-virtual {v11}, Lcom/itim/explorer/io/model/CityBorder;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v10, "Borders"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v15, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v9, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v9, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    const/4 v2, -0x1

    .line 110
    .local v2, "categoryID":I
    const-string v10, "Category"

    const-string v14, "-1"

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/16 v4, 0xa

    .line 113
    .local v4, "pageSize":I
    const/4 v5, 0x0

    .line 114
    .local v5, "offset":I
    const/high16 v7, 0x41f00000

    .line 116
    .local v7, "radius":F
    const/4 v6, 0x0

    .line 117
    .local v6, "location":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    iget-object v10, v10, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mMainActivity:Lcom/itim/explorer/interfaces/GetLocationListener;
    invoke-static {v10}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$200(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Lcom/itim/explorer/interfaces/GetLocationListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/itim/explorer/interfaces/GetLocationListener;->getLocation()Landroid/location/Location;

    move-result-object v6

    .line 118
    if-eqz v6, :cond_1

    .line 119
    const-string v10, "Location"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    :try_start_0
    const-string v10, "searching"

    invoke-static {v10, v13}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/itim/explorer/io/DataHandler;->searchPois(ILjava/lang/String;IILandroid/location/Location;FLcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 129
    :goto_0
    return-object v10

    .line 125
    :catch_0
    move-exception v12

    .line 126
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const/4 v10, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->onPostExecute(Ljava/util/List;)V

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
    .line 134
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    iget-object v0, v0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$300(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    iget-object v0, v0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$300(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 137
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->val$filterResults:Landroid/widget/Filter$FilterResults;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    iget-object v1, v1, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$300(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->val$filterResults:Landroid/widget/Filter$FilterResults;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    iget-object v1, v1, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$300(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 139
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    iget-object v0, v0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$300(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    iget-object v0, v0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->access$300(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    iget-object v0, v0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->notifyDataSetChanged()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1$1;->this$1:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    iget-object v0, v0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
