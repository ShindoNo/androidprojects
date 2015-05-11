.class public Lcom/itim/explorer/provider/CurrentLocationProvider;
.super Ljava/lang/Object;
.source "CurrentLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/gms/maps/LocationSource;


# instance fields
.field private listener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

.field private locationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/itim/explorer/provider/CurrentLocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 20
    return-void
.end method


# virtual methods
.method public activate(Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 24
    iput-object p1, p0, Lcom/itim/explorer/provider/CurrentLocationProvider;->listener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    .line 25
    iget-object v0, p0, Lcom/itim/explorer/provider/CurrentLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v6

    .line 27
    .local v6, "gpsProvider":Landroid/location/LocationProvider;
    if-eqz v6, :cond_0

    .line 28
    iget-object v0, p0, Lcom/itim/explorer/provider/CurrentLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v6}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 30
    iget-object v0, p0, Lcom/itim/explorer/provider/CurrentLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 32
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_0

    .line 33
    invoke-virtual {p0, v7}, Lcom/itim/explorer/provider/CurrentLocationProvider;->onLocationChanged(Landroid/location/Location;)V

    .line 36
    .end local v7    # "location":Landroid/location/Location;
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/provider/CurrentLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v8

    .line 39
    .local v8, "networkProvider":Landroid/location/LocationProvider;
    if-eqz v8, :cond_1

    .line 42
    iget-object v0, p0, Lcom/itim/explorer/provider/CurrentLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 44
    iget-object v0, p0, Lcom/itim/explorer/provider/CurrentLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 46
    .restart local v7    # "location":Landroid/location/Location;
    if-eqz v7, :cond_1

    .line 47
    invoke-virtual {p0, v7}, Lcom/itim/explorer/provider/CurrentLocationProvider;->onLocationChanged(Landroid/location/Location;)V

    .line 50
    .end local v7    # "location":Landroid/location/Location;
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/itim/explorer/provider/CurrentLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 55
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/itim/explorer/provider/CurrentLocationProvider;->listener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/itim/explorer/provider/CurrentLocationProvider;->listener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 66
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 74
    return-void
.end method
