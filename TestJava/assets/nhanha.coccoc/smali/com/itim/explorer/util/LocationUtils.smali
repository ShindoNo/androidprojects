.class public final Lcom/itim/explorer/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field public static final APPTAG:Ljava/lang/String; = "LocationConfig"

.field public static final ARG_LAST_LOCATION:Ljava/lang/String; = "Last Location"

.field public static ARG_LAST_UPDATE_TIME:Ljava/lang/String; = null

.field public static final CONNECTION_FAILURE_RESOLUTION_REQUEST:I = 0x2328

.field public static final FAST_INTERVAL_CEILING_IN_MILLISECONDS:J = 0x5dcL

.field public static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field public static final UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x1388L

.field public static final UPDATE_INTERVAL_IN_SECONDS:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "Last update time"

    sput-object v0, Lcom/itim/explorer/util/LocationUtils;->ARG_LAST_UPDATE_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 47
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocationValid(Landroid/location/Location;)Z
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 92
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showNoLocationDialog(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNeedCity"    # Z

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Type"

    const-string v2, "City choose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "Dialog"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v1, 0x7f0e00e0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e00e2

    new-instance v3, Lcom/itim/explorer/util/LocationUtils$2;

    invoke-direct {v3, p0}, Lcom/itim/explorer/util/LocationUtils$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0025

    new-instance v3, Lcom/itim/explorer/util/LocationUtils$1;

    invoke-direct {v3, p1, p0}, Lcom/itim/explorer/util/LocationUtils$1;-><init>(ZLandroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 89
    return-void

    .line 58
    :cond_0
    const v1, 0x7f0e00df

    goto :goto_0
.end method
