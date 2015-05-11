.class Lcom/itim/explorer/ui/MapActivity$1;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/MapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MapActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MapActivity;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeHashPOIMarker(Ljava/util/List;Lcom/itim/explorer/io/model/POI;)V
    .locals 12
    .param p2, "selectedPOI"    # Lcom/itim/explorer/io/model/POI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;",
            "Lcom/itim/explorer/io/model/POI;",
            ")V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "poiToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$1400(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/io/LoadPOI;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$1400(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/io/LoadPOI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/io/LoadPOI;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v5, v6, :cond_0

    .line 294
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$1400(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/io/LoadPOI;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/itim/explorer/io/LoadPOI;->cancel(Z)Z

    .line 295
    :cond_0
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 296
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 297
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const/4 v6, 0x0

    # setter for: Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v5, v6}, Lcom/itim/explorer/ui/MapActivity;->access$902(Lcom/itim/explorer/ui/MapActivity;Lcom/google/android/gms/maps/model/Marker;)Lcom/google/android/gms/maps/model/Marker;

    .line 298
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->prepareMapForUpdate()V
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$400(Lcom/itim/explorer/ui/MapActivity;)V

    .line 300
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itim/explorer/io/model/POI;

    .line 302
    .local v4, "poi":Lcom/itim/explorer/io/model/POI;
    invoke-static {v4}, Lcom/itim/explorer/util/AdvUtil;->getMarkerID(Lcom/itim/explorer/io/model/POI;)I

    move-result v0

    .line 304
    .local v0, "advMarker":I
    if-ltz v0, :cond_4

    move v3, v0

    .line 306
    .local v3, "markerResource":I
    :goto_1
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$000(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v6}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    .line 318
    .local v2, "marker":Lcom/google/android/gms/maps/model/Marker;
    if-eqz p2, :cond_3

    invoke-virtual {v4, p2}, Lcom/itim/explorer/io/model/POI;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # setter for: Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v5, v2}, Lcom/itim/explorer/ui/MapActivity;->access$902(Lcom/itim/explorer/ui/MapActivity;Lcom/google/android/gms/maps/model/Marker;)Lcom/google/android/gms/maps/model/Marker;

    .line 319
    :cond_3
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$900(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v5

    if-nez v5, :cond_2

    .line 322
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v5, v2}, Lcom/itim/explorer/ui/MapActivity;->selectMarker(Lcom/google/android/gms/maps/model/Marker;)V

    .line 326
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->updateDiretionText()V
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$1500(Lcom/itim/explorer/ui/MapActivity;)V

    goto :goto_0

    .line 304
    .end local v2    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v3    # "markerResource":I
    :cond_4
    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v5

    invoke-static {v5}, Lcom/itim/explorer/io/model/Category;->getMarkerResID(I)I

    move-result v3

    goto :goto_1

    .line 341
    .end local v0    # "advMarker":I
    .end local v4    # "poi":Lcom/itim/explorer/io/model/POI;
    :cond_5
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity$1;->sortListPOI()V

    .line 343
    :cond_6
    return-void
.end method

.method private sortListPOI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHdlrShortListPOI:Landroid/os/Handler;
    invoke-static {v0}, Lcom/itim/explorer/ui/MapActivity;->access$1600(Lcom/itim/explorer/ui/MapActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHdlrShortListPOI:Landroid/os/Handler;
    invoke-static {v0}, Lcom/itim/explorer/ui/MapActivity;->access$1600(Lcom/itim/explorer/ui/MapActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/itim/explorer/ui/MapActivity$1$1;

    invoke-direct {v1, p0}, Lcom/itim/explorer/ui/MapActivity$1$1;-><init>(Lcom/itim/explorer/ui/MapActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHdlrShortListPOI:Landroid/os/Handler;
    invoke-static {v0}, Lcom/itim/explorer/ui/MapActivity;->access$1600(Lcom/itim/explorer/ui/MapActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 405
    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V
    .locals 4
    .param p1, "error"    # Lcom/itim/explorer/interfaces/ILoad$Error;

    .prologue
    const/4 v3, 0x1

    .line 437
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->hidePanel()V
    invoke-static {v0}, Lcom/itim/explorer/ui/MapActivity;->access$2300(Lcom/itim/explorer/ui/MapActivity;)V

    .line 438
    sget-object v0, Lcom/itim/explorer/ui/MapActivity$18;->$SwitchMap$com$itim$explorer$interfaces$ILoad$Error:[I

    invoke-virtual {p1}, Lcom/itim/explorer/interfaces/ILoad$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mPgbLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/MapActivity;->access$1200(Lcom/itim/explorer/ui/MapActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 466
    return-void

    .line 442
    :pswitch_0
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const v2, 0x7f0e00ae

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/MapActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 450
    :pswitch_1
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const v2, 0x7f0e0119

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/MapActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 411
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # setter for: Lcom/itim/explorer/ui/MapActivity;->poiListIsReady:Z
    invoke-static {v3, v5}, Lcom/itim/explorer/ui/MapActivity;->access$1002(Lcom/itim/explorer/ui/MapActivity;Z)Z

    .line 412
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mPgbLoading:Landroid/view/View;
    invoke-static {v3}, Lcom/itim/explorer/ui/MapActivity;->access$1200(Lcom/itim/explorer/ui/MapActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 413
    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->collapsePanel()V

    .line 414
    # getter for: Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->access$1900()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setEnabled(Z)V

    .line 415
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->bottomSlider:Lcom/itim/explorer/ui/POIListSliderFragment;
    invoke-static {v3}, Lcom/itim/explorer/ui/MapActivity;->access$1700(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/POIListSliderFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/ui/POIListSliderFragment;->setTitle()V

    .line 416
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->showBookmarks()V
    invoke-static {v3}, Lcom/itim/explorer/ui/MapActivity;->access$2000(Lcom/itim/explorer/ui/MapActivity;)V

    .line 417
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const v4, 0x7f0b0141

    invoke-virtual {v3, v4}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 418
    .local v2, "v":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 419
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    # setter for: Lcom/itim/explorer/ui/MapActivity;->sliderTitleHeight:I
    invoke-static {v3, v4}, Lcom/itim/explorer/ui/MapActivity;->access$2102(Lcom/itim/explorer/ui/MapActivity;I)I

    .line 421
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_map_type"

    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mMapType:I
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$100(Lcom/itim/explorer/ui/MapActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 422
    .local v1, "newMapType":I
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mMapType:I
    invoke-static {v3}, Lcom/itim/explorer/ui/MapActivity;->access$100(Lcom/itim/explorer/ui/MapActivity;)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 423
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 424
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Cause"

    const-string v4, "Load"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v3, "Map type"

    invoke-static {v1}, Lcom/itim/explorer/util/Util;->getMapTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v3, "Old Map type"

    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mMapType:I
    invoke-static {v4}, Lcom/itim/explorer/ui/MapActivity;->access$100(Lcom/itim/explorer/ui/MapActivity;)I

    move-result v4

    invoke-static {v4}, Lcom/itim/explorer/util/Util;->getMapTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v3, "Map type was changed"

    invoke-static {v3, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 428
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # setter for: Lcom/itim/explorer/ui/MapActivity;->mMapType:I
    invoke-static {v3, v1}, Lcom/itim/explorer/ui/MapActivity;->access$102(Lcom/itim/explorer/ui/MapActivity;I)I

    .line 430
    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->updateActionBar()V
    invoke-static {v3}, Lcom/itim/explorer/ui/MapActivity;->access$2200(Lcom/itim/explorer/ui/MapActivity;)V

    .line 432
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$000(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v1

    iget-object v7, v1, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 215
    .local v7, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v11, "poiToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mMapType:I
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$100(Lcom/itim/explorer/ui/MapActivity;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itim/explorer/io/model/POI;

    .line 229
    .local v9, "item":Lcom/itim/explorer/io/model/POI;
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v13

    invoke-direct {v1, v4, v5, v13, v14}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v7, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Lcom/itim/explorer/io/model/POI;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itim/explorer/io/model/POI;

    .line 222
    .restart local v9    # "item":Lcom/itim/explorer/io/model/POI;
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Lcom/itim/explorer/io/model/POI;
    :cond_2
    :sswitch_1
    if-eqz p1, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 240
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->getSelectedPOI()Lcom/itim/explorer/io/model/POI;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$300(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/io/model/POI;

    move-result-object v12

    .line 242
    .local v12, "selectedPoI":Lcom/itim/explorer/io/model/POI;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->prepareMapForUpdate()V
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$400(Lcom/itim/explorer/ui/MapActivity;)V

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/itim/explorer/ui/MapActivity$1;->makeHashPOIMarker(Ljava/util/List;Lcom/itim/explorer/io/model/POI;)V

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 246
    .local v3, "poilist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    new-instance v1, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mapWrapperLayout:Lcom/itim/explorer/ui/widget/MapWrapperLayout;
    invoke-static {v4}, Lcom/itim/explorer/ui/MapActivity;->access$600(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/widget/MapWrapperLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mIsShowDirection:Z
    invoke-static {v5}, Lcom/itim/explorer/ui/MapActivity;->access$700(Lcom/itim/explorer/ui/MapActivity;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-direct/range {v1 .. v6}, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/itim/explorer/ui/widget/MapWrapperLayout;ZLcom/itim/explorer/interfaces/MapActivityListener;)V

    # setter for: Lcom/itim/explorer/ui/MapActivity;->mPoiInfoWindowAdapter:Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;
    invoke-static {v13, v1}, Lcom/itim/explorer/ui/MapActivity;->access$502(Lcom/itim/explorer/ui/MapActivity;Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;)Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$000(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mPoiInfoWindowAdapter:Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$500(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const/4 v2, 0x0

    # setter for: Lcom/itim/explorer/ui/MapActivity;->countToShowErrorNotFound:I
    invoke-static {v1, v2}, Lcom/itim/explorer/ui/MapActivity;->access$802(Lcom/itim/explorer/ui/MapActivity;I)I

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$900(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 278
    .end local v3    # "poilist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    .end local v12    # "selectedPoI":Lcom/itim/explorer/io/model/POI;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$900(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$900(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const/4 v2, 0x0

    # setter for: Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v1, v2}, Lcom/itim/explorer/ui/MapActivity;->access$902(Lcom/itim/explorer/ui/MapActivity;Lcom/google/android/gms/maps/model/Marker;)Lcom/google/android/gms/maps/model/Marker;

    .line 282
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const/4 v2, 0x0

    # setter for: Lcom/itim/explorer/ui/MapActivity;->countToShowErrorUnknow:I
    invoke-static {v1, v2}, Lcom/itim/explorer/ui/MapActivity;->access$1102(Lcom/itim/explorer/ui/MapActivity;I)I

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mPgbLoading:Landroid/view/View;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$1200(Lcom/itim/explorer/ui/MapActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->setPanelVisibility()V
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$1300(Lcom/itim/explorer/ui/MapActivity;)V

    .line 287
    return-void

    .line 256
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->prepareMapForUpdate()V
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$400(Lcom/itim/explorer/ui/MapActivity;)V

    .line 258
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/itim/explorer/ui/MapActivity$1;->makeHashPOIMarker(Ljava/util/List;Lcom/itim/explorer/io/model/POI;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const/4 v2, 0x1

    # setter for: Lcom/itim/explorer/ui/MapActivity;->poiListIsReady:Z
    invoke-static {v1, v2}, Lcom/itim/explorer/ui/MapActivity;->access$1002(Lcom/itim/explorer/ui/MapActivity;Z)Z

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mMapType:I
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$100(Lcom/itim/explorer/ui/MapActivity;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_map_radius"

    const/high16 v4, 0x3fc00000

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v10

    .line 264
    .local v10, "nearbyradius":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e011a

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v13, 0x0

    float-to-double v14, v10

    const-wide/high16 v16, 0x3ff0000000000000L

    cmpg-double v1, v14, v16

    if-gez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/itim/explorer/util/Util;->metersDecFormat(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, " m"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    aput-object v1, v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/itim/explorer/util/Util;->kmDecFormat(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, " km"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 273
    .end local v10    # "nearbyradius":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itim/explorer/ui/MapActivity$1;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const v4, 0x7f0e0119

    invoke-virtual {v2, v4}, Lcom/itim/explorer/ui/MapActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
