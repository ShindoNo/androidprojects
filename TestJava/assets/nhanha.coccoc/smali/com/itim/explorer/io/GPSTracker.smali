.class public Lcom/itim/explorer/io/GPSTracker;
.super Landroid/app/Service;
.source "GPSTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0xaL

.field private static final MIN_TIME_BW_UPDATES:J = 0xea60L


# instance fields
.field canGetLocation:Z

.field isGPSEnabled:Z

.field isNetworkEnabled:Z

.field latitude:D

.field location:Landroid/location/Location;

.field protected locationManager:Landroid/location/LocationManager;

.field longitude:D

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/itim/explorer/io/GPSTracker;->isGPSEnabled:Z

    .line 26
    iput-boolean v0, p0, Lcom/itim/explorer/io/GPSTracker;->isNetworkEnabled:Z

    .line 29
    iput-boolean v0, p0, Lcom/itim/explorer/io/GPSTracker;->canGetLocation:Z

    .line 45
    iput-object p1, p0, Lcom/itim/explorer/io/GPSTracker;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/itim/explorer/io/GPSTracker;->getLocation()Landroid/location/Location;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/io/GPSTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/io/GPSTracker;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public canGetLocation()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/itim/explorer/io/GPSTracker;->canGetLocation:Z

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itim/explorer/io/GPSTracker;->latitude:D

    .line 127
    :cond_0
    iget-wide v0, p0, Lcom/itim/explorer/io/GPSTracker;->latitude:D

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 7

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 55
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itim/explorer/io/GPSTracker;->isGPSEnabled:Z

    .line 59
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itim/explorer/io/GPSTracker;->isNetworkEnabled:Z

    .line 62
    iget-boolean v0, p0, Lcom/itim/explorer/io/GPSTracker;->isGPSEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itim/explorer/io/GPSTracker;->isNetworkEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    return-object v0

    .line 65
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/itim/explorer/io/GPSTracker;->canGetLocation:Z

    .line 66
    iget-boolean v0, p0, Lcom/itim/explorer/io/GPSTracker;->isNetworkEnabled:Z

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 72
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    .line 75
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itim/explorer/io/GPSTracker;->latitude:D

    .line 77
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itim/explorer/io/GPSTracker;->longitude:D

    .line 82
    :cond_2
    iget-boolean v0, p0, Lcom/itim/explorer/io/GPSTracker;->isGPSEnabled:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 89
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    .line 92
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itim/explorer/io/GPSTracker;->latitude:D

    .line 94
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itim/explorer/io/GPSTracker;->longitude:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v6

    .line 102
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itim/explorer/io/GPSTracker;->longitude:D

    .line 139
    :cond_0
    iget-wide v0, p0, Lcom/itim/explorer/io/GPSTracker;->longitude:D

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/itim/explorer/io/GPSTracker;->location:Landroid/location/Location;

    .line 189
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 192
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 195
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 198
    return-void
.end method

.method public showSettingsAlert()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/itim/explorer/io/GPSTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "GPS is settings"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 162
    const-string v1, "GPS is not enabled. Do you want to go to settings menu?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    const-string v1, "Settings"

    new-instance v2, Lcom/itim/explorer/io/GPSTracker$1;

    invoke-direct {v2, p0}, Lcom/itim/explorer/io/GPSTracker$1;-><init>(Lcom/itim/explorer/io/GPSTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    const-string v1, "Cancel"

    new-instance v2, Lcom/itim/explorer/io/GPSTracker$2;

    invoke-direct {v2, p0}, Lcom/itim/explorer/io/GPSTracker$2;-><init>(Lcom/itim/explorer/io/GPSTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 185
    return-void
.end method

.method public stopUsingGPS()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/itim/explorer/io/GPSTracker;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 116
    :cond_0
    return-void
.end method
