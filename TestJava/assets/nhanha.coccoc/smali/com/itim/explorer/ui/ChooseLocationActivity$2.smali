.class Lcom/itim/explorer/ui/ChooseLocationActivity$2;
.super Ljava/lang/Object;
.source "ChooseLocationActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/ChooseLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/ChooseLocationActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 10
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    const v9, 0x7f0e00f7

    const v6, 0x7f02013e

    const/4 v8, 0x1

    const/high16 v7, 0x41600000

    .line 64
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "arg_latlngbound_location"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "arg_latlngbound_location"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 67
    .local v2, "latLngBounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "arg_choosed_location"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "arg_choosed_location"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 70
    .local v0, "choosedLatLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    iget-object v4, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    # getter for: Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v4}, Lcom/itim/explorer/ui/ChooseLocationActivity;->access$100(Lcom/itim/explorer/ui/ChooseLocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-static {v6}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    iget-object v6, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-virtual {v6, v9}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    # setter for: Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v3, v4}, Lcom/itim/explorer/ui/ChooseLocationActivity;->access$002(Lcom/itim/explorer/ui/ChooseLocationActivity;Lcom/google/android/gms/maps/model/Marker;)Lcom/google/android/gms/maps/model/Marker;

    .line 79
    .end local v0    # "choosedLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    # getter for: Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->access$100(Lcom/itim/explorer/ui/ChooseLocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    invoke-static {v2, v8}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 129
    .end local v2    # "latLngBounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    # getter for: Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->access$100(Lcom/itim/explorer/ui/ChooseLocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 130
    return-void

    .line 77
    .restart local v0    # "choosedLatLng":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v2    # "latLngBounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    :cond_2
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    # getter for: Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->access$000(Lcom/itim/explorer/ui/ChooseLocationActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    # getter for: Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->access$000(Lcom/itim/explorer/ui/ChooseLocationActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 82
    .end local v0    # "choosedLatLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v2    # "latLngBounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    :cond_3
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "arg_choosed_location"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "arg_choosed_location"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 85
    .restart local v0    # "choosedLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    iget-object v4, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    # getter for: Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v4}, Lcom/itim/explorer/ui/ChooseLocationActivity;->access$100(Lcom/itim/explorer/ui/ChooseLocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-static {v6}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    iget-object v6, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-virtual {v6, v9}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    # setter for: Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v3, v4}, Lcom/itim/explorer/ui/ChooseLocationActivity;->access$002(Lcom/itim/explorer/ui/ChooseLocationActivity;Lcom/google/android/gms/maps/model/Marker;)Lcom/google/android/gms/maps/model/Marker;

    .line 90
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    # getter for: Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->access$100(Lcom/itim/explorer/ui/ChooseLocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    invoke-static {v0, v7}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 92
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    # getter for: Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->access$000(Lcom/itim/explorer/ui/ChooseLocationActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    goto :goto_1

    .line 94
    .end local v0    # "choosedLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_4
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "arg_current_location"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 95
    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "arg_current_location"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 97
    .local v1, "currentLatLng":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/itim/explorer/ui/ChooseLocationActivity$2;->this$0:Lcom/itim/explorer/ui/ChooseLocationActivity;

    # getter for: Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v3}, Lcom/itim/explorer/ui/ChooseLocationActivity;->access$100(Lcom/itim/explorer/ui/ChooseLocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    invoke-static {v1, v7}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto/16 :goto_1

    .line 101
    .end local v1    # "currentLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_5
    const-string v3, "Map"

    const-string v4, "no ARG_CURRENT_LOCATION?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
