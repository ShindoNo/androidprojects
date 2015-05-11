.class public Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;
.super Ljava/lang/Object;
.source "POIClusterDistanceAlgorithm.java"

# interfaces
.implements Lcom/google/maps/android/clustering/algo/Algorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$1;,
        Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/clustering/algo/Algorithm",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final MAX_DISTANCE_AT_ZOOM:I = 0x32

.field private static final PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;


# instance fields
.field private final mItems:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/quadtree/PointQuadTree",
            "<",
            "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/google/maps/android/projection/SphericalMercatorProjection;

    const-wide/high16 v1, 0x3ff0000000000000L

    invoke-direct {v0, v1, v2}, Lcom/google/maps/android/projection/SphericalMercatorProjection;-><init>(D)V

    sput-object v0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm<TT;>;"
    const-wide/high16 v3, 0x3ff0000000000000L

    const-wide/16 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mItems:Ljava/util/Collection;

    .line 50
    new-instance v0, Lcom/google/maps/android/quadtree/PointQuadTree;

    move-wide v5, v1

    move-wide v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(DDDD)V

    iput-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    .line 167
    return-void
.end method

.method static synthetic access$200()Lcom/google/maps/android/projection/SphericalMercatorProjection;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;

    return-object v0
.end method

.method private createBoundsFromSpan(Lcom/google/maps/android/geometry/Point;D)Lcom/google/maps/android/geometry/Bounds;
    .locals 11
    .param p1, "p"    # Lcom/google/maps/android/geometry/Point;
    .param p2, "span"    # D

    .prologue
    .line 161
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm<TT;>;"
    const-wide/high16 v0, 0x4000000000000000L

    div-double v9, p2, v0

    .line 162
    .local v9, "halfSpan":D
    new-instance v0, Lcom/google/maps/android/geometry/Bounds;

    iget-wide v1, p1, Lcom/google/maps/android/geometry/Point;->x:D

    sub-double/2addr v1, v9

    iget-wide v3, p1, Lcom/google/maps/android/geometry/Point;->x:D

    add-double/2addr v3, v9

    iget-wide v5, p1, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double/2addr v5, v9

    iget-wide v7, p1, Lcom/google/maps/android/geometry/Point;->y:D

    add-double/2addr v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    return-object v0
.end method

.method private distanceSquared(Lcom/google/maps/android/geometry/Point;Lcom/google/maps/android/geometry/Point;)D
    .locals 8
    .param p1, "a"    # Lcom/google/maps/android/geometry/Point;
    .param p2, "b"    # Lcom/google/maps/android/geometry/Point;

    .prologue
    .line 155
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm<TT;>;"
    iget-wide v0, p1, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v2, p2, Lcom/google/maps/android/geometry/Point;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v4, p2, Lcom/google/maps/android/geometry/Point;->x:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lcom/google/maps/android/geometry/Point;->y:D

    iget-wide v4, p2, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p1, Lcom/google/maps/android/geometry/Point;->y:D

    iget-wide v6, p2, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addItem(Lcom/google/maps/android/clustering/ClusterItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    new-instance v0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;-><init>(Lcom/google/maps/android/clustering/ClusterItem;Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$1;)V

    .line 57
    .local v0, "quadItem":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    iget-object v2, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    monitor-enter v2

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v1, v0}, Lcom/google/maps/android/quadtree/PointQuadTree;->add(Lcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    .line 60
    monitor-exit v2

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addItems(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/clustering/ClusterItem;

    .line 66
    .local v1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    invoke-virtual {p0, v1}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->addItem(Lcom/google/maps/android/clustering/ClusterItem;)V

    goto :goto_0

    .line 68
    .end local v1    # "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    :cond_0
    return-void
.end method

.method public clearItems()V
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm<TT;>;"
    iget-object v1, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 74
    iget-object v0, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v0}, Lcom/google/maps/android/quadtree/PointQuadTree;->clear()V

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClusters(D)Ljava/util/Set;
    .locals 27
    .param p1, "zoom"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/Set",
            "<+",
            "Lcom/google/maps/android/clustering/Cluster",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm<TT;>;"
    move-wide/from16 v0, p1

    double-to-int v8, v0

    .line 95
    .local v8, "discreteZoom":I
    const-wide/high16 v21, 0x4049000000000000L

    const-wide/high16 v23, 0x4000000000000000L

    int-to-double v0, v8

    move-wide/from16 v25, v0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    div-double v21, v21, v23

    const-wide/high16 v23, 0x4070000000000000L

    div-double v19, v21, v23

    .line 97
    .local v19, "zoomSpecificSpan":D
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v18, "visitedCandidates":Ljava/util/Set;, "Ljava/util/Set<Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v16, "results":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/maps/android/clustering/Cluster<TT;>;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v11, "distanceToCluster":Ljava/util/Map;, "Ljava/util/Map<Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;Ljava/lang/Double;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v15, "itemToCluster":Ljava/util/Map;, "Ljava/util/Map<Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mItems:Ljava/util/Collection;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;

    .line 104
    .local v4, "candidate":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 109
    invoke-virtual {v4}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->createBoundsFromSpan(Lcom/google/maps/android/geometry/Point;D)Lcom/google/maps/android/geometry/Bounds;

    move-result-object v17

    .line 111
    .local v17, "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/maps/android/quadtree/PointQuadTree;->search(Lcom/google/maps/android/geometry/Bounds;)Ljava/util/Collection;

    move-result-object v7

    .line 112
    .local v7, "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;>;"
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 114
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v11, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    .end local v4    # "candidate":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    .end local v7    # "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;>;"
    .end local v17    # "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 119
    .restart local v4    # "candidate":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    .restart local v7    # "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;>;"
    .restart local v17    # "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    :cond_1
    :try_start_1
    new-instance v5, Lcom/google/maps/android/clustering/algo/StaticCluster;

    # getter for: Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;
    invoke-static {v4}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->access$100(Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/google/maps/android/clustering/ClusterItem;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lcom/google/maps/android/clustering/algo/StaticCluster;-><init>(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 120
    .local v5, "cluster":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;

    .line 123
    .local v6, "clusterItem":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    .line 124
    .local v12, "existingDistance":Ljava/lang/Double;
    invoke-virtual {v6}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v21

    invoke-virtual {v4}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->distanceSquared(Lcom/google/maps/android/geometry/Point;Lcom/google/maps/android/geometry/Point;)D

    move-result-wide v9

    .line 125
    .local v9, "distance":D
    if-eqz v12, :cond_3

    .line 127
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    cmpg-double v21, v23, v9

    if-ltz v21, :cond_2

    .line 131
    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/maps/android/clustering/algo/StaticCluster;

    # getter for: Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;
    invoke-static {v6}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->access$100(Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/maps/android/clustering/algo/StaticCluster;->remove(Lcom/google/maps/android/clustering/ClusterItem;)Z

    .line 133
    :cond_3
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v11, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    # getter for: Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;
    invoke-static {v6}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->access$100(Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/google/maps/android/clustering/algo/StaticCluster;->add(Lcom/google/maps/android/clustering/ClusterItem;)Z

    .line 135
    invoke-interface {v15, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 137
    .end local v6    # "clusterItem":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    .end local v9    # "distance":D
    .end local v12    # "existingDistance":Ljava/lang/Double;
    :cond_4
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 139
    .end local v4    # "candidate":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    .end local v5    # "cluster":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    .end local v7    # "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    :cond_5
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    return-object v16
.end method

.method public getItems()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    monitor-enter v4

    .line 147
    :try_start_0
    iget-object v3, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;

    .line 148
    .local v2, "quadItem":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    # getter for: Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;
    invoke-static {v2}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->access$100(Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "quadItem":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    return-object v1
.end method

.method public removeItem(Lcom/google/maps/android/clustering/ClusterItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    const/4 v1, 0x0

    .line 81
    .local v1, "qI":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    iget-object v3, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;

    .line 82
    .local v2, "quadItem":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    # getter for: Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;
    invoke-static {v2}, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;->access$100(Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    move-object v1, v2

    .line 87
    .end local v2    # "quadItem":Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem;, "Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm$QuadItem<TT;>;"
    :cond_1
    iget-object v3, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v3, p0, Lcom/itim/explorer/clustering/POIClusterDistanceAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v3, v1}, Lcom/google/maps/android/quadtree/PointQuadTree;->remove(Lcom/google/maps/android/quadtree/PointQuadTree$Item;)Z

    .line 89
    return-void
.end method
