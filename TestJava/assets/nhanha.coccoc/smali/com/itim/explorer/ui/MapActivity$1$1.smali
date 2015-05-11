.class Lcom/itim/explorer/ui/MapActivity$1$1;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MapActivity$1;->sortListPOI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itim/explorer/ui/MapActivity$1;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MapActivity$1;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sortByDistance()V
    .locals 7

    .prologue
    .line 357
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v2, v2, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 358
    .local v0, "curLocation":Landroid/location/Location;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v2, v2, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v2, v2, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 362
    .local v1, "poilist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    new-instance v2, Lcom/itim/explorer/util/POIsDistanceComparator;

    invoke-direct {v2}, Lcom/itim/explorer/util/POIsDistanceComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 363
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v2, v2, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->bottomSlider:Lcom/itim/explorer/ui/POIListSliderFragment;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$1700(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/POIListSliderFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v3, v3, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_map_offset"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v4, v4, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_map_size"

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/itim/explorer/ui/POIListSliderFragment;->setPOIs(Ljava/util/List;I)V

    .line 368
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v2, v2, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    # invokes: Lcom/itim/explorer/ui/MapActivity;->setBottomSliderHeight(I)V
    invoke-static {v2, v3}, Lcom/itim/explorer/ui/MapActivity;->access$1800(Lcom/itim/explorer/ui/MapActivity;I)V

    .line 369
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v2, v2, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const/4 v3, 0x1

    # setter for: Lcom/itim/explorer/ui/MapActivity;->poiListIsReady:Z
    invoke-static {v2, v3}, Lcom/itim/explorer/ui/MapActivity;->access$1002(Lcom/itim/explorer/ui/MapActivity;Z)Z

    goto :goto_0
.end method

.method private sortByScore()V
    .locals 11

    .prologue
    .line 373
    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v6, v6, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v6, v6, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    if-nez v6, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v6, v6, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 375
    .local v3, "poilist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    new-instance v6, Lcom/itim/explorer/util/POIsScoreComparator;

    invoke-direct {v6}, Lcom/itim/explorer/util/POIsScoreComparator;-><init>()V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 376
    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v6, v6, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mMapType:I
    invoke-static {v6}, Lcom/itim/explorer/ui/MapActivity;->access$100(Lcom/itim/explorer/ui/MapActivity;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 377
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v5, "poilistvisible":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v4, "poilistother":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v6, v6, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v6}, Lcom/itim/explorer/ui/MapActivity;->access$000(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v6

    iget-object v0, v6, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 380
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/io/model/POI;

    .line 381
    .local v2, "poi":Lcom/itim/explorer/io/model/POI;
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 384
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 388
    .end local v2    # "poi":Lcom/itim/explorer/io/model/POI;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 389
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 393
    .end local v0    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "poilistother":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    .end local v5    # "poilistvisible":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    :cond_4
    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v6, v6, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->bottomSlider:Lcom/itim/explorer/ui/POIListSliderFragment;
    invoke-static {v6}, Lcom/itim/explorer/ui/MapActivity;->access$1700(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/POIListSliderFragment;

    move-result-object v6

    iget-object v7, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v7, v7, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v7}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "extra_map_offset"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v8, v8, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v8}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "extra_map_size"

    const/16 v10, 0xa

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v3, v7}, Lcom/itim/explorer/ui/POIListSliderFragment;->setPOIs(Ljava/util/List;I)V

    .line 398
    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v6, v6, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    # invokes: Lcom/itim/explorer/ui/MapActivity;->setBottomSliderHeight(I)V
    invoke-static {v6, v7}, Lcom/itim/explorer/ui/MapActivity;->access$1800(Lcom/itim/explorer/ui/MapActivity;I)V

    .line 400
    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v6, v6, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const/4 v7, 0x1

    # setter for: Lcom/itim/explorer/ui/MapActivity;->poiListIsReady:Z
    invoke-static {v6, v7}, Lcom/itim/explorer/ui/MapActivity;->access$1002(Lcom/itim/explorer/ui/MapActivity;Z)Z

    .line 401
    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity$1$1;->this$1:Lcom/itim/explorer/ui/MapActivity$1;

    iget-object v6, v6, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->setPanelVisibility()V
    invoke-static {v6}, Lcom/itim/explorer/ui/MapActivity;->access$1300(Lcom/itim/explorer/ui/MapActivity;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity$1$1;->sortByScore()V

    .line 354
    return-void
.end method
