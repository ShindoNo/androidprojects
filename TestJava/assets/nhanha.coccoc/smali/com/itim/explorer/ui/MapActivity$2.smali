.class Lcom/itim/explorer/ui/MapActivity$2;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MapActivity;->setupGoogleMap()V
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
    .line 569
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$2;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const/4 v2, 0x1

    .line 572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 575
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$2;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$2400(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 576
    const-string v1, "Type"

    const-string v3, "User location"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v1, "Click on marker"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 578
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    move v1, v2

    .line 595
    :goto_0
    return v1

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$2;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashBookmarks:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$2500(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    const-string v1, "Type"

    const-string v3, "Bookmark"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v3, "POI"

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$2;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashBookmarks:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$2500(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v1, "Click on marker"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 585
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity$2;->this$0:Lcom/itim/explorer/ui/MapActivity;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$2;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashBookmarks:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$2500(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/POI;

    # invokes: Lcom/itim/explorer/ui/MapActivity;->goToPOIDetails(Lcom/itim/explorer/io/model/POI;)V
    invoke-static {v3, v1}, Lcom/itim/explorer/ui/MapActivity;->access$2600(Lcom/itim/explorer/ui/MapActivity;Lcom/itim/explorer/io/model/POI;)V

    move v1, v2

    .line 586
    goto :goto_0

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$2;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    const-string v1, "Type"

    const-string v2, "POI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v2, "POI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$2;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v1, "Click on marker"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 593
    :cond_2
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$2;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v1, p1}, Lcom/itim/explorer/ui/MapActivity;->selectMarker(Lcom/google/android/gms/maps/model/Marker;)V

    .line 595
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
