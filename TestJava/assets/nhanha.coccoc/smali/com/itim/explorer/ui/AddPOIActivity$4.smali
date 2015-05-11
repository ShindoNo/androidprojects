.class Lcom/itim/explorer/ui/AddPOIActivity$4;
.super Ljava/lang/Object;
.source "AddPOIActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/AddPOIActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/AddPOIActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/AddPOIActivity;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 6
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    const-class v3, Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "arg_current_location"

    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentLocation:Landroid/location/Location;
    invoke-static {v3}, Lcom/itim/explorer/ui/AddPOIActivity;->access$200(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/location/Location;

    move-result-object v3

    invoke-static {v3}, Lcom/itim/explorer/util/LocationUtils;->getLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v2}, Lcom/itim/explorer/ui/AddPOIActivity;->access$300(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 252
    const-string v2, "arg_choosed_location"

    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v3}, Lcom/itim/explorer/ui/AddPOIActivity;->access$300(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 255
    const-string v2, "Screen"

    const-string v3, "Add POI screen"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v2, "Location"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v4}, Lcom/itim/explorer/ui/AddPOIActivity;->access$300(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v4}, Lcom/itim/explorer/ui/AddPOIActivity;->access$300(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    invoke-static {v2}, Lcom/itim/explorer/ui/AddPOIActivity;->access$400(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 259
    const-string v2, "arg_latlngbound_location"

    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    invoke-static {v3}, Lcom/itim/explorer/ui/AddPOIActivity;->access$400(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 262
    const-string v2, "Screen"

    const-string v3, "Add POI screen"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v2, "Borders"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    invoke-static {v4}, Lcom/itim/explorer/ui/AddPOIActivity;->access$400(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    invoke-static {v4}, Lcom/itim/explorer/ui/AddPOIActivity;->access$400(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    invoke-static {v4}, Lcom/itim/explorer/ui/AddPOIActivity;->access$400(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    # getter for: Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    invoke-static {v4}, Lcom/itim/explorer/ui/AddPOIActivity;->access$400(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_1
    const-string v2, "Click on map"

    invoke-static {v2, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 268
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    const/16 v3, 0x69

    invoke-virtual {v2, v1, v3}, Lcom/itim/explorer/ui/AddPOIActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 269
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity$4;->this$0:Lcom/itim/explorer/ui/AddPOIActivity;

    invoke-static {v2}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    .line 270
    return-void
.end method
