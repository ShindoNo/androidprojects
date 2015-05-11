.class public Lcom/itim/explorer/clustering/ClusterItemPOI;
.super Ljava/lang/Object;
.source "ClusterItemPOI.java"

# interfaces
.implements Lcom/google/maps/android/clustering/ClusterItem;


# instance fields
.field private address:Ljava/lang/String;

.field private anchX:F

.field private anchY:F

.field private hash:Ljava/lang/String;

.field private icon:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private position:Lcom/google/android/gms/maps/model/LatLng;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->anchX:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->anchY:F

    .line 51
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "mPosition"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->anchX:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->anchY:F

    .line 22
    iput-object p1, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/itim/explorer/io/model/POI;)V
    .locals 5
    .param p1, "poi"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->anchX:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->anchY:F

    .line 32
    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itim/explorer/clustering/ClusterItemPOI;->setHash(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 34
    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->title:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->address:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v0

    invoke-static {v0}, Lcom/itim/explorer/io/model/Category;->getMarkerResID(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->icon:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 38
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAnchX()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->anchX:F

    return v0
.end method

.method public getAnchY()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->anchY:F

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->icon:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->position:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->address:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setAnchX(F)V
    .locals 0
    .param p1, "anchX"    # F

    .prologue
    .line 108
    iput p1, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->anchX:F

    .line 109
    return-void
.end method

.method public setAnchY(F)V
    .locals 0
    .param p1, "anchY"    # F

    .prologue
    .line 116
    iput p1, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->anchY:F

    .line 117
    return-void
.end method

.method public setAnchor(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/itim/explorer/clustering/ClusterItemPOI;->setAnchX(F)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/itim/explorer/clustering/ClusterItemPOI;->setAnchY(F)V

    .line 101
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->hash:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .locals 0
    .param p1, "icon"    # Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->icon:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 82
    return-void
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "position"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/itim/explorer/clustering/ClusterItemPOI;->title:Ljava/lang/String;

    .line 74
    return-void
.end method
