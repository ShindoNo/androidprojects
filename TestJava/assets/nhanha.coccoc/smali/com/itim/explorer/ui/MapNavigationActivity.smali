.class public Lcom/itim/explorer/ui/MapNavigationActivity;
.super Lcom/itim/explorer/ui/BaseFragmentActivity;
.source "MapNavigationActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;
.implements Lcom/itim/explorer/interfaces/MapActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/MapNavigationActivity$3;
    }
.end annotation


# static fields
.field public static final ARG_DIRETION_FROM:Ljava/lang/String; = "extra_direction_from"

.field public static final ARG_DIRETION_TO:Ljava/lang/String; = "extra_direction_to"

.field public static final ARG_MAP_POI:Ljava/lang/String; = "extra_map_poi"

.field public static final ARG_MAP_TYPE:Ljava/lang/String; = "extra_map_type"

.field public static final ARG_SCREEN_TITLE:Ljava/lang/String; = "extra_screen_title"

.field public static final MAP_TYPE_CATEGORY:I = 0x1

.field public static final MAP_TYPE_DIRECTION:I = 0x4

.field public static final MAP_TYPE_POI:I = 0x2

.field public static final MAP_TYPE_SEARCH:I = 0x3


# instance fields
.field private compas:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private dot:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private isAnimateMarker:Z

.field private isFromCurrent:Z

.field lastAngle:F

.field private locationManager:Landroid/location/LocationManager;

.field private mBundle:Landroid/os/Bundle;

.field private mCurrentLocation:Landroid/location/Location;

.field private mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

.field private mGetCurrentLocation:Z

.field private mImgbMapType:Landroid/widget/ImageButton;

.field private mIsgetDirection:Z

.field private mListPoi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadDirection:Lcom/itim/explorer/interfaces/ILoadDirection;

.field private mPgbLoading:Landroid/view/View;

.field private mPoiMarker:Lcom/google/android/gms/maps/model/Marker;

.field private vRetryGetDirection:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mIsgetDirection:Z

    .line 106
    new-instance v0, Lcom/itim/explorer/ui/MapNavigationActivity$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/MapNavigationActivity$1;-><init>(Lcom/itim/explorer/ui/MapNavigationActivity;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mLoadDirection:Lcom/itim/explorer/interfaces/ILoadDirection;

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/MapNavigationActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapNavigationActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/MapNavigationActivity;Ljava/util/List;Lcom/itim/explorer/io/model/Direction;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapNavigationActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/itim/explorer/io/model/Direction;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/itim/explorer/ui/MapNavigationActivity;->animateBound(Ljava/util/List;Lcom/itim/explorer/io/model/Direction;)V

    return-void
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/MapNavigationActivity;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapNavigationActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mPoiMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$302(Lcom/itim/explorer/ui/MapNavigationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapNavigationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mIsgetDirection:Z

    return p1
.end method

.method static synthetic access$400(Lcom/itim/explorer/ui/MapNavigationActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapNavigationActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mPgbLoading:Landroid/view/View;

    return-object v0
.end method

.method private animateBound(Ljava/util/List;Lcom/itim/explorer/io/model/Direction;)V
    .locals 7
    .param p2, "directions"    # Lcom/itim/explorer/io/model/Direction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Lcom/itim/explorer/io/model/Direction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, "pos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    iget-boolean v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mGetCurrentLocation:Z

    if-nez v2, :cond_0

    .line 609
    new-instance v1, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 619
    .local v1, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/itim/explorer/io/model/Direction;->getBounds()Lcom/itim/explorer/io/model/DirectionBound;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/DirectionBound;->getNortheast()Lcom/itim/explorer/io/model/GPS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/GPS;->getLat()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/itim/explorer/io/model/Direction;->getBounds()Lcom/itim/explorer/io/model/DirectionBound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/DirectionBound;->getNortheast()Lcom/itim/explorer/io/model/GPS;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/GPS;->getLng()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 621
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/itim/explorer/io/model/Direction;->getBounds()Lcom/itim/explorer/io/model/DirectionBound;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/DirectionBound;->getSouthwest()Lcom/itim/explorer/io/model/GPS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/GPS;->getLat()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/itim/explorer/io/model/Direction;->getBounds()Lcom/itim/explorer/io/model/DirectionBound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/DirectionBound;->getSouthwest()Lcom/itim/explorer/io/model/GPS;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/GPS;->getLng()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 623
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 624
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v3, 0x37

    invoke-static {v0, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 631
    .end local v0    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .end local v1    # "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    :cond_0
    return-void
.end method

.method private getGeomagneticField(Landroid/location/Location;)Landroid/hardware/GeomagneticField;
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 499
    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    return-object v0
.end method

.method private hideRetryView()V
    .locals 3

    .prologue
    .line 797
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->vRetryGetDirection:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->vRetryGetDirection:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->vRetryGetDirection:Landroid/view/View;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 802
    :cond_0
    return-void
.end method

.method private servicesConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 478
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 481
    .local v2, "resultCode":I
    if-nez v2, :cond_1

    .line 484
    const/4 v3, 0x1

    .line 494
    :cond_0
    :goto_0
    return v3

    .line 486
    :cond_1
    invoke-static {v2, p0, v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 488
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 489
    new-instance v1, Lcom/itim/explorer/ui/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/itim/explorer/ui/ErrorDialogFragment;-><init>()V

    .line 490
    .local v1, "errorFragment":Lcom/itim/explorer/ui/ErrorDialogFragment;
    invoke-virtual {v1, v0}, Lcom/itim/explorer/ui/ErrorDialogFragment;->setDialog(Landroid/app/Dialog;)V

    .line 491
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "LocationConfig"

    invoke-virtual {v1, v4, v5}, Lcom/itim/explorer/ui/ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 561
    const/16 v2, 0x2328

    invoke-static {p1, p0, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 563
    .local v0, "errorDialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 564
    new-instance v1, Lcom/itim/explorer/ui/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/itim/explorer/ui/ErrorDialogFragment;-><init>()V

    .line 565
    .local v1, "errorFragment":Lcom/itim/explorer/ui/ErrorDialogFragment;
    invoke-virtual {v1, v0}, Lcom/itim/explorer/ui/ErrorDialogFragment;->setDialog(Landroid/app/Dialog;)V

    .line 566
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "LocationConfig"

    invoke-virtual {v1, v2, v3}, Lcom/itim/explorer/ui/ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 569
    .end local v1    # "errorFragment":Lcom/itim/explorer/ui/ErrorDialogFragment;
    :cond_0
    return-void
.end method

.method private startPeriodicUpdates()V
    .locals 9

    .prologue
    .line 430
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 431
    .local v8, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 432
    .local v1, "provider":Ljava/lang/String;
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x5dc

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 433
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 435
    .local v7, "lastKnownLocation":Landroid/location/Location;
    invoke-static {v7}, Lcom/itim/explorer/util/LocationUtils;->isLocationValid(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-static {v0}, Lcom/itim/explorer/util/LocationUtils;->isLocationValid(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 440
    :cond_1
    iput-object v7, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    goto :goto_0

    .line 442
    .end local v1    # "provider":Ljava/lang/String;
    .end local v7    # "lastKnownLocation":Landroid/location/Location;
    :cond_2
    return-void
.end method

.method private stopPeriodicUpdates()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 446
    return-void
.end method

.method private updateCurrentLocation()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f000000

    .line 508
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    if-nez v2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-static {v2}, Lcom/itim/explorer/util/LocationUtils;->getLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 512
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    iput v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->lastAngle:F

    .line 513
    const-string v2, "GetDirection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location currentLocation.getBearing() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentLocation.getSpeed() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_4

    .line 517
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 518
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    iget v3, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->lastAngle:F

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    .line 519
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 520
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    iget-object v3, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->compas:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 521
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    const v3, 0x3f333333

    invoke-virtual {v2, v9, v3}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    .line 540
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mGetCurrentLocation:Z

    if-eqz v2, :cond_0

    .line 546
    iget-boolean v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->isFromCurrent:Z

    if-eqz v2, :cond_5

    .line 547
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    const-string v3, "load_des_ori"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 550
    :goto_2
    iput-boolean v10, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mGetCurrentLocation:Z

    .line 551
    new-instance v1, Lcom/itim/explorer/io/LoadDirection;

    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mLoadDirection:Lcom/itim/explorer/interfaces/ILoadDirection;

    invoke-direct {v1, v2}, Lcom/itim/explorer/io/LoadDirection;-><init>(Lcom/itim/explorer/interfaces/ILoadDirection;)V

    .line 552
    .local v1, "loadDirection":Lcom/itim/explorer/io/LoadDirection;
    new-array v2, v11, [Landroid/os/Bundle;

    iget-object v3, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Lcom/itim/explorer/io/LoadDirection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 524
    .end local v1    # "loadDirection":Lcom/itim/explorer/io/LoadDirection;
    :cond_3
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    iget-object v3, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->dot:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 525
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2, v9, v9}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto :goto_1

    .line 527
    :cond_4
    iget-boolean v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->isAnimateMarker:Z

    if-nez v2, :cond_2

    .line 528
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget-object v4, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->dot:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    const v4, 0x7f0e00f7

    invoke-virtual {p0, v4}, Lcom/itim/explorer/ui/MapNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    iget v4, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->lastAngle:F

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    goto :goto_1

    .line 549
    :cond_5
    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    const-string v3, "load_des_des"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2
.end method


# virtual methods
.method public changeMapMode(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 662
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-ne v0, v2, :cond_0

    .line 663
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 664
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mImgbMapType:Landroid/widget/ImageButton;

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 670
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 667
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mImgbMapType:Landroid/widget/ImageButton;

    const v1, 0x7f020130

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public goToCurrentLocation(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v2, 0x41700000

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 659
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 675
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 452
    packed-switch p1, :pswitch_data_0

    .line 470
    :goto_0
    :pswitch_0
    return-void

    .line 456
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_1
    .end packed-switch

    .line 456
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 396
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onBackPressed()V

    .line 397
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 398
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const v1, 0x7f040020

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->setContentView(I)V

    .line 195
    const v1, 0x7f0200e6

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->compas:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 196
    const v1, 0x7f0200e7

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->dot:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 197
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->locationManager:Landroid/location/LocationManager;

    .line 198
    sget-object v1, Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;->APP_TRACKER:Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;

    invoke-static {v1, p0}, Lcom/itim/explorer/util/analytic/AnalyticConfig;->getTracker(Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 199
    const v1, 0x7f0b0096

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_screen_title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f02012a

    invoke-static {v1, v2, v4, v5}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 208
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0092

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iput-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 210
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/itim/explorer/provider/CurrentLocationProvider;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itim/explorer/provider/CurrentLocationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setLocationSource(Lcom/google/android/gms/maps/LocationSource;)V

    .line 212
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 214
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 215
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 216
    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mImgbMapType:Landroid/widget/ImageButton;

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mGetCurrentLocation:Z

    .line 218
    const v1, 0x7f0b0093

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mPgbLoading:Landroid/view/View;

    .line 219
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_map_poi"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/itim/explorer/io/model/POI;

    .line 222
    .local v7, "poi":Lcom/itim/explorer/io/model/POI;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/itim/explorer/util/Util;->historyPOI(Landroid/content/Context;Lcom/itim/explorer/io/model/POI;)Z

    .line 223
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v11

    invoke-direct {v4, v9, v10, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v4

    invoke-static {v4}, Lcom/itim/explorer/io/model/Category;->getMarkerResID(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mPoiMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 232
    const v1, 0x7f0b0091

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/itim/explorer/ui/widget/MapWrapperLayout;

    .line 233
    .local v3, "mapWrapperLayout":Lcom/itim/explorer/ui/widget/MapWrapperLayout;
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41f00000

    invoke-static {p0, v2}, Lcom/itim/explorer/util/UIUtil;->getPixelsFromDp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/itim/explorer/ui/widget/MapWrapperLayout;->init(Lcom/google/android/gms/maps/GoogleMap;I)V

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mListPoi:Ljava/util/ArrayList;

    .line 235
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mListPoi:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mListPoi:Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/itim/explorer/ui/widget/MapWrapperLayout;ZLcom/itim/explorer/interfaces/MapActivityListener;)V

    .line 238
    .local v0, "mPoiInforWindowAdapter":Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 239
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mPoiMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 252
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_direction_from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 253
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_direction_from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/LatLng;

    .line 255
    .local v6, "ll":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41600000

    invoke-static {v6, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 257
    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/GPS;->getLat()D

    move-result-wide v1

    iget-wide v4, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v1, v1, v4

    if-nez v1, :cond_4

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/GPS;->getLng()D

    move-result-wide v1

    iget-wide v4, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v1, v1, v4

    if-nez v1, :cond_4

    .line 259
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->isFromCurrent:Z

    .line 273
    .end local v6    # "ll":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    .line 274
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "load_des_mode"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 294
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "load_des_mode"

    const-string v4, "driving"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_1
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_direction_from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "load_des_ori"

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_direction_from"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_direction_to"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "load_des_des"

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_direction_to"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 317
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 323
    const v1, 0x7f0b009a

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 324
    .local v8, "tvToAddress":Landroid/widget/TextView;
    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .end local v0    # "mPoiInforWindowAdapter":Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;
    .end local v3    # "mapWrapperLayout":Lcom/itim/explorer/ui/widget/MapWrapperLayout;
    .end local v7    # "poi":Lcom/itim/explorer/io/model/POI;
    .end local v8    # "tvToAddress":Landroid/widget/TextView;
    :cond_3
    const v1, 0x7f0b009c

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->vRetryGetDirection:Landroid/view/View;

    .line 336
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->vRetryGetDirection:Landroid/view/View;

    new-instance v2, Lcom/itim/explorer/ui/MapNavigationActivity$2;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/MapNavigationActivity$2;-><init>(Lcom/itim/explorer/ui/MapNavigationActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    return-void

    .line 261
    .restart local v0    # "mPoiInforWindowAdapter":Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;
    .restart local v3    # "mapWrapperLayout":Lcom/itim/explorer/ui/widget/MapWrapperLayout;
    .restart local v6    # "ll":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v7    # "poi":Lcom/itim/explorer/io/model/POI;
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->isFromCurrent:Z

    goto/16 :goto_0

    .line 262
    .end local v6    # "ll":Lcom/google/android/gms/maps/model/LatLng;
    :cond_5
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_direction_to"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_direction_to"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/LatLng;

    .line 265
    .restart local v6    # "ll":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41600000

    invoke-static {v6, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 267
    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/GPS;->getLat()D

    move-result-wide v1

    iget-wide v4, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v1, v1, v4

    if-nez v1, :cond_0

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/GPS;->getLng()D

    move-result-wide v1

    iget-wide v4, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v1, v1, v4

    if-nez v1, :cond_0

    .line 269
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->isFromCurrent:Z

    goto/16 :goto_0

    .line 276
    .end local v6    # "ll":Lcom/google/android/gms/maps/model/LatLng;
    :pswitch_0
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "load_des_mode"

    const-string v4, "driving"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 280
    :pswitch_1
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "load_des_mode"

    const-string v4, "walking"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 284
    :pswitch_2
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "load_des_mode"

    const-string v4, "bicycling"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 288
    :pswitch_3
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "load_des_mode"

    const-string v4, "transit"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "departure_time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDirection()V
    .locals 4

    .prologue
    .line 735
    iget-boolean v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mIsgetDirection:Z

    if-nez v1, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->hideRetryView()V

    .line 737
    new-instance v0, Lcom/itim/explorer/io/LoadDirection;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mLoadDirection:Lcom/itim/explorer/interfaces/ILoadDirection;

    invoke-direct {v0, v1}, Lcom/itim/explorer/io/LoadDirection;-><init>(Lcom/itim/explorer/interfaces/ILoadDirection;)V

    .line 738
    .local v0, "loadDirection":Lcom/itim/explorer/io/LoadDirection;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mBundle:Landroid/os/Bundle;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/LoadDirection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 740
    .end local v0    # "loadDirection":Lcom/itim/explorer/io/LoadDirection;
    :cond_0
    return-void
.end method

.method public onGetResultList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mListPoi:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onInfoWindowsClick(Lcom/itim/explorer/io/model/POI;)V
    .locals 3
    .param p1, "poi"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 755
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 756
    .local v0, "poiIntent":Landroid/content/Intent;
    const-string v1, "extra_map_poi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 757
    const-string v1, "list_poi"

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->onGetResultList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 759
    const-string v1, "extra_map_location"

    iget-object v2, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 760
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MapNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 761
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 762
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 771
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 772
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 773
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Map navigation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v1, "Button"

    const-string v2, "Menu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v1, "Press hardbutton"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 777
    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 778
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 779
    .restart local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Map navigation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v1, "Button"

    const-string v2, "Back"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string v1, "Press hardbutton"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 783
    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 408
    if-eqz p1, :cond_0

    .line 409
    iput-object p1, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->mCurrentLocation:Landroid/location/Location;

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->updateCurrentLocation()V

    .line 411
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 381
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 390
    :goto_0
    return v3

    .line 383
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 384
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Map navigation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v1, "Button"

    const-string v2, "Home"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v1, "Click actionbar button"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 387
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->onBackPressed()V

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 359
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onPause()V

    .line 361
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->stopPeriodicUpdates()V

    .line 363
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 426
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 421
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onResume()V

    .line 347
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "170500206486453"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->startPeriodicUpdates()V

    .line 355
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 723
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStart()V

    .line 368
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 369
    const-string v0, "8GNN869PHKBHWM4K38NJ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 416
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStop()V

    .line 375
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 376
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 377
    return-void
.end method

.method public setMapControlVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 767
    return-void
.end method

.method protected showRetryView()V
    .locals 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->vRetryGetDirection:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->vRetryGetDirection:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/itim/explorer/ui/MapNavigationActivity;->vRetryGetDirection:Landroid/view/View;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 794
    :cond_0
    return-void
.end method
