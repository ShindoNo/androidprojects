.class Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;
.super Ljava/lang/Object;
.source "POIClusterDistanceAlgorithm.java"

# interfaces
.implements Lcom/google/maps/android/clustering/Cluster;
.implements Lcom/google/maps/android/quadtree/PointQuadTree$Item;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuadItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/quadtree/PointQuadTree$Item;",
        "Lcom/google/maps/android/clustering/Cluster",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPoint:Lcom/google/maps/android/geometry/Point;

.field private final mPosition:Lcom/google/android/gms/maps/model/LatLng;

.field private singletonSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/maps/android/clustering/ClusterItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;

    .line 175
    invoke-interface {p1}, Lcom/google/maps/android/clustering/ClusterItem;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    .line 176
    # getter for: Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;
    invoke-static {}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->access$200()Lcom/google/maps/android/projection/SphericalMercatorProjection;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/maps/android/projection/SphericalMercatorProjection;->toPoint(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/android/projection/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mPoint:Lcom/google/maps/android/geometry/Point;

    .line 177
    iget-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->singletonSet:Ljava/util/Set;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/android/clustering/ClusterItem;Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/maps/android/clustering/ClusterItem;
    .param p2, "x1"    # Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$1;

    .prologue
    .line 167
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    invoke-direct {p0, p1}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;-><init>(Lcom/google/maps/android/clustering/ClusterItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getItems()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    invoke-virtual {p0}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->getItems()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    iget-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->singletonSet:Ljava/util/Set;

    return-object v0
.end method

.method public getPoint()Lcom/google/maps/android/geometry/Point;
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    iget-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mPoint:Lcom/google/maps/android/geometry/Point;

    return-object v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    iget-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 197
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
