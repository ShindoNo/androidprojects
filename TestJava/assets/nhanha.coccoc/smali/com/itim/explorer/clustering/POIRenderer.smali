.class public Lcom/itim/explorer/clustering/POIRenderer;
.super Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;
.source "POIRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/maps/android/clustering/view/DefaultClusterRenderer",
        "<",
        "Lcom/itim/explorer/clustering/ClusterItemPOI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/google/maps/android/clustering/ClusterManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/maps/GoogleMap;",
            "Lcom/google/maps/android/clustering/ClusterManager",
            "<",
            "Lcom/itim/explorer/clustering/ClusterItemPOI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p3, "clusterManager":Lcom/google/maps/android/clustering/ClusterManager;, "Lcom/google/maps/android/clustering/ClusterManager<Lcom/itim/explorer/clustering/ClusterItemPOI;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/google/maps/android/clustering/ClusterManager;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected bridge synthetic onBeforeClusterItemRendered(Lcom/google/maps/android/clustering/ClusterItem;Lcom/google/android/gms/maps/model/MarkerOptions;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/maps/android/clustering/ClusterItem;
    .param p2, "x1"    # Lcom/google/android/gms/maps/model/MarkerOptions;

    .prologue
    .line 13
    check-cast p1, Lcom/itim/explorer/clustering/ClusterItemPOI;

    .end local p1    # "x0":Lcom/google/maps/android/clustering/ClusterItem;
    invoke-virtual {p0, p1, p2}, Lcom/itim/explorer/clustering/POIRenderer;->onBeforeClusterItemRendered(Lcom/itim/explorer/clustering/ClusterItemPOI;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    return-void
.end method

.method protected onBeforeClusterItemRendered(Lcom/itim/explorer/clustering/ClusterItemPOI;Lcom/google/android/gms/maps/model/MarkerOptions;)V
    .locals 2
    .param p1, "item"    # Lcom/itim/explorer/clustering/ClusterItemPOI;
    .param p2, "markerOptions"    # Lcom/google/android/gms/maps/model/MarkerOptions;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/itim/explorer/clustering/ClusterItemPOI;->getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 37
    invoke-virtual {p1}, Lcom/itim/explorer/clustering/ClusterItemPOI;->getAnchX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itim/explorer/clustering/ClusterItemPOI;->getAnchY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 38
    return-void
.end method

.method protected onBeforeClusterRendered(Lcom/google/maps/android/clustering/Cluster;Lcom/google/android/gms/maps/model/MarkerOptions;)V
    .locals 0
    .param p2, "markerOptions"    # Lcom/google/android/gms/maps/model/MarkerOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/Cluster",
            "<",
            "Lcom/itim/explorer/clustering/ClusterItemPOI;",
            ">;",
            "Lcom/google/android/gms/maps/model/MarkerOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "cluster":Lcom/google/maps/android/clustering/Cluster;, "Lcom/google/maps/android/clustering/Cluster<Lcom/itim/explorer/clustering/ClusterItemPOI;>;"
    invoke-super {p0, p1, p2}, Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;->onBeforeClusterRendered(Lcom/google/maps/android/clustering/Cluster;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    .line 25
    return-void
.end method

.method protected bridge synthetic onClusterItemRendered(Lcom/google/maps/android/clustering/ClusterItem;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/maps/android/clustering/ClusterItem;
    .param p2, "x1"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 13
    check-cast p1, Lcom/itim/explorer/clustering/ClusterItemPOI;

    .end local p1    # "x0":Lcom/google/maps/android/clustering/ClusterItem;
    invoke-virtual {p0, p1, p2}, Lcom/itim/explorer/clustering/POIRenderer;->onClusterItemRendered(Lcom/itim/explorer/clustering/ClusterItemPOI;Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method

.method protected onClusterItemRendered(Lcom/itim/explorer/clustering/ClusterItemPOI;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p1, "clusterItem"    # Lcom/itim/explorer/clustering/ClusterItemPOI;
    .param p2, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;->onClusterItemRendered(Lcom/google/maps/android/clustering/ClusterItem;Lcom/google/android/gms/maps/model/Marker;)V

    .line 48
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 49
    return-void
.end method

.method protected onClusterRendered(Lcom/google/maps/android/clustering/Cluster;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p2, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/Cluster",
            "<",
            "Lcom/itim/explorer/clustering/ClusterItemPOI;",
            ">;",
            "Lcom/google/android/gms/maps/model/Marker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "cluster":Lcom/google/maps/android/clustering/Cluster;, "Lcom/google/maps/android/clustering/Cluster<Lcom/itim/explorer/clustering/ClusterItemPOI;>;"
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    .line 32
    return-void
.end method

.method protected shouldRenderAsCluster(Lcom/google/maps/android/clustering/Cluster;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/Cluster",
            "<",
            "Lcom/itim/explorer/clustering/ClusterItemPOI;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "cluster":Lcom/google/maps/android/clustering/Cluster;, "Lcom/google/maps/android/clustering/Cluster<Lcom/itim/explorer/clustering/ClusterItemPOI;>;"
    invoke-interface {p1}, Lcom/google/maps/android/clustering/Cluster;->getSize()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
