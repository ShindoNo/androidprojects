.class public Lcom/itim/explorer/clustering/POIClusterManager;
.super Lcom/google/maps/android/clustering/ClusterManager;
.source "POIClusterManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Lcom/google/maps/android/clustering/ClusterManager",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 14
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterManager;, "Lcom/itim/explorer/clustering/POIClusterManager<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/clustering/ClusterManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 0
    .param p1, "cameraPosition"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    .line 21
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterManager;, "Lcom/itim/explorer/clustering/POIClusterManager<TT;>;"
    invoke-virtual {p0}, Lcom/itim/explorer/clustering/POIClusterManager;->cluster()V

    .line 22
    return-void
.end method
