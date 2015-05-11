.class public Lcom/itim/explorer/ui/HandleMapIntent;
.super Lcom/itim/explorer/ui/BaseFragmentActivity;
.source "HandleMapIntent.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final defaultIconId:I = -0x1


# instance fields
.field locationManager:Landroid/location/LocationManager;

.field private mCurrentLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private startPeriodicUpdates()V
    .locals 9

    .prologue
    .line 180
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/HandleMapIntent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/itim/explorer/ui/HandleMapIntent;->locationManager:Landroid/location/LocationManager;

    .line 181
    iget-object v0, p0, Lcom/itim/explorer/ui/HandleMapIntent;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 182
    .local v8, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    .local v1, "provider":Ljava/lang/String;
    iget-object v0, p0, Lcom/itim/explorer/ui/HandleMapIntent;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x5dc

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 184
    iget-object v0, p0, Lcom/itim/explorer/ui/HandleMapIntent;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 186
    .local v7, "lastKnownLocation":Landroid/location/Location;
    invoke-static {v7}, Lcom/itim/explorer/util/LocationUtils;->isLocationValid(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/HandleMapIntent;->mCurrentLocation:Landroid/location/Location;

    invoke-static {v0}, Lcom/itim/explorer/util/LocationUtils;->isLocationValid(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v2, p0, Lcom/itim/explorer/ui/HandleMapIntent;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 191
    :cond_1
    iput-object v7, p0, Lcom/itim/explorer/ui/HandleMapIntent;->mCurrentLocation:Landroid/location/Location;

    goto :goto_0

    .line 194
    .end local v1    # "provider":Ljava/lang/String;
    .end local v7    # "lastKnownLocation":Landroid/location/Location;
    :cond_2
    return-void
.end method

.method private stopPeriodicUpdates()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/itim/explorer/ui/HandleMapIntent;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 198
    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/itim/explorer/ui/HandleMapIntent;->mCurrentLocation:Landroid/location/Location;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super/range {p0 .. p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/itim/explorer/ui/HandleMapIntent;->getActionBar()Landroid/app/ActionBar;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/itim/explorer/ui/HandleMapIntent;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f0e0020

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/HandleMapIntent;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, -0x1

    invoke-static/range {v15 .. v18}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/itim/explorer/ui/HandleMapIntent;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 35
    .local v3, "data":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-class v15, Lcom/itim/explorer/ui/MapActivity;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v5, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v15, "extra_screen_title"

    const v16, 0x7f0e0020

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/HandleMapIntent;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v15, "extra_map_type"

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v13

    .line 42
    .local v13, "strQuery":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .local v6, "lat":D
    const-wide/16 v8, 0x0

    .line 43
    .local v8, "lng":D
    if-eqz v13, :cond_3

    .line 44
    const-string v15, "z"

    invoke-virtual {v3, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 45
    .local v14, "zoom":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 46
    const-string v15, "extra_map_zoom_level"

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 48
    :cond_0
    const-string v15, "q"

    invoke-virtual {v3, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    .local v10, "q":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 50
    const-string v15, "("

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 51
    const-string v15, "extra_map_marker_title"

    const/16 v16, 0x28

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    const/16 v17, 0x29

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v15, "\\("

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v11, v15, v16

    .line 54
    .local v11, "strLatLng":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v11, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 55
    .local v12, "strLatLngs":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 56
    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 58
    const-string v15, "extra_map_lat"

    invoke-virtual {v2, v15, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 59
    const-string v15, "extra_map_long"

    invoke-virtual {v2, v15, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 75
    .end local v10    # "q":Ljava/lang/String;
    .end local v11    # "strLatLng":Ljava/lang/String;
    .end local v12    # "strLatLngs":[Ljava/lang/String;
    .end local v14    # "zoom":Ljava/lang/String;
    :cond_1
    :goto_0
    const-wide/16 v15, 0x0

    cmpl-double v15, v6, v15

    if-nez v15, :cond_4

    const-wide/16 v15, 0x0

    cmpl-double v15, v8, v15

    if-nez v15, :cond_4

    .line 76
    new-instance v15, Landroid/content/Intent;

    const-class v16, Lcom/itim/explorer/ui/MainActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/itim/explorer/ui/HandleMapIntent;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/itim/explorer/ui/HandleMapIntent;->finish()V

    .line 87
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "data":Landroid/net/Uri;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "lat":D
    .end local v8    # "lng":D
    .end local v13    # "strQuery":Ljava/lang/String;
    :goto_2
    return-void

    .line 61
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "data":Landroid/net/Uri;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "lat":D
    .restart local v8    # "lng":D
    .restart local v10    # "q":Ljava/lang/String;
    .restart local v13    # "strQuery":Ljava/lang/String;
    .restart local v14    # "zoom":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/itim/explorer/ui/HandleMapIntent;->onSearch(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-static/range {p0 .. p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/itim/explorer/ui/HandleMapIntent;->finish()V

    goto :goto_2

    .line 66
    .end local v10    # "q":Ljava/lang/String;
    .end local v14    # "zoom":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v11, v15, v16

    .line 67
    .restart local v11    # "strLatLng":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v11, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 68
    .restart local v12    # "strLatLngs":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 69
    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 71
    const-string v15, "extra_map_lat"

    invoke-virtual {v2, v15, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 72
    const-string v15, "extra_map_long"

    invoke-virtual {v2, v15, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 81
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "data":Landroid/net/Uri;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "lat":D
    .end local v8    # "lng":D
    .end local v11    # "strLatLng":Ljava/lang/String;
    .end local v12    # "strLatLngs":[Ljava/lang/String;
    .end local v13    # "strQuery":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 82
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v15, Landroid/content/Intent;

    const-class v16, Lcom/itim/explorer/ui/MainActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/itim/explorer/ui/HandleMapIntent;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    invoke-static/range {p0 .. p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/itim/explorer/ui/HandleMapIntent;->finish()V

    goto :goto_2

    .line 78
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "data":Landroid/net/Uri;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "lat":D
    .restart local v8    # "lng":D
    .restart local v13    # "strQuery":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {v5, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 79
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/itim/explorer/ui/HandleMapIntent;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 84
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "data":Landroid/net/Uri;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "lat":D
    .end local v8    # "lng":D
    .end local v13    # "strQuery":Ljava/lang/String;
    :catchall_0
    move-exception v15

    invoke-static/range {p0 .. p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/itim/explorer/ui/HandleMapIntent;->finish()V

    throw v15
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    iput-object p1, p0, Lcom/itim/explorer/ui/HandleMapIntent;->mCurrentLocation:Landroid/location/Location;

    .line 161
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onPause()V

    .line 98
    invoke-direct {p0}, Lcom/itim/explorer/ui/HandleMapIntent;->stopPeriodicUpdates()V

    .line 99
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 176
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onResume()V

    .line 92
    invoke-direct {p0}, Lcom/itim/explorer/ui/HandleMapIntent;->startPeriodicUpdates()V

    .line 93
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 10
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 146
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {p0, p1}, Lcom/itim/explorer/util/Util;->saveQuery(Landroid/content/Context;Ljava/lang/String;)Z

    .line 117
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "extra_method"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v4, "extra_map_search_query"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v4, "extra_map_type"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v4, "extra_map_offset"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v4, "extra_map_size"

    const/16 v5, 0x32

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {p0}, Lcom/itim/explorer/ui/HandleMapIntent;->getLocation()Landroid/location/Location;

    move-result-object v2

    .line 126
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_1

    .line 127
    const-string v4, "extra_map_location"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    :cond_1
    const-string v4, "extra_screen_title"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p0}, Lcom/itim/explorer/util/Util;->getCurrentCity(Landroid/content/Context;)Lcom/itim/explorer/io/model/CityBorder;

    move-result-object v0

    .line 131
    .local v0, "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 132
    const-string v4, "extra_map_near_left"

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lat()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lng()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    const-string v4, "extra_map_far_right"

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lat()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lng()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 142
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v3, "mapIntent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/HandleMapIntent;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStart()V

    .line 104
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 166
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStop()V

    .line 110
    return-void
.end method
