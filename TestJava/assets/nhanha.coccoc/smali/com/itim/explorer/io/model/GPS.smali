.class public Lcom/itim/explorer/io/model/GPS;
.super Ljava/lang/Object;
.source "GPS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/itim/explorer/io/model/GPS;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private additionalProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private latitude:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "latitude"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "longitude"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/itim/explorer/io/model/GPS$1;

    invoke-direct {v0}, Lcom/itim/explorer/io/model/GPS$1;-><init>()V

    sput-object v0, Lcom/itim/explorer/io/model/GPS;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/GPS;->additionalProperties:Ljava/util/Map;

    .line 24
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/GPS;->additionalProperties:Ljava/util/Map;

    .line 27
    iput-wide p1, p0, Lcom/itim/explorer/io/model/GPS;->latitude:D

    .line 28
    iput-wide p3, p0, Lcom/itim/explorer/io/model/GPS;->longitude:D

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/GPS;->additionalProperties:Ljava/util/Map;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itim/explorer/io/model/GPS;->latitude:D

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itim/explorer/io/model/GPS;->longitude:D

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalProperties()Ljava/util/Map;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnyGetter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/itim/explorer/io/model/GPS;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getLat()D
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lat"
    .end annotation

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/itim/explorer/io/model/GPS;->latitude:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "latitude"
    .end annotation

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/itim/explorer/io/model/GPS;->latitude:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lng"
    .end annotation

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/itim/explorer/io/model/GPS;->longitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "longitude"
    .end annotation

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/itim/explorer/io/model/GPS;->longitude:D

    return-wide v0
.end method

.method public setAdditionalProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/itim/explorer/io/model/GPS;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public setLat(D)V
    .locals 0
    .param p1, "latitude"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lat"
    .end annotation

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/itim/explorer/io/model/GPS;->latitude:D

    .line 65
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "latitude"
    .end annotation

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/itim/explorer/io/model/GPS;->latitude:D

    .line 44
    return-void
.end method

.method public setLng(D)V
    .locals 0
    .param p1, "longitude"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lng"
    .end annotation

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/itim/explorer/io/model/GPS;->longitude:D

    .line 75
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "longitude"
    .end annotation

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/itim/explorer/io/model/GPS;->longitude:D

    .line 54
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/itim/explorer/io/model/GPS;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 95
    iget-wide v0, p0, Lcom/itim/explorer/io/model/GPS;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 96
    return-void
.end method
