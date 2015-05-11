.class public Lcom/itim/explorer/io/model/POI;
.super Ljava/lang/Object;
.source "POI.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
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

.field private address:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "address"
    .end annotation
.end field

.field private ads_category:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ads_category"
    .end annotation
.end field

.field private ads_category_name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ads_category_name"
    .end annotation
.end field

.field private building:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "building"
    .end annotation
.end field

.field private city_borders:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "city_borders"
    .end annotation
.end field

.field private click_url:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "click_url"
    .end annotation
.end field

.field private client_ids:[I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "client_ids"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private distance:F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "distance"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "email"
    .end annotation
.end field

.field private fe_category:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fe_category"
    .end annotation
.end field

.field private fe_category_name_en:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fe_category_name_en"
    .end annotation
.end field

.field private fe_category_name_vn:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fe_category_name_vn"
    .end annotation
.end field

.field private featured_status:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "featured_status"
    .end annotation
.end field

.field private floor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "floor"
    .end annotation
.end field

.field private frame_start:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "frame_start"
    .end annotation
.end field

.field private gps:Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gps"
    .end annotation
.end field

.field private group_id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group_id"
    .end annotation
.end field

.field private hash:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hash"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private img:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "img"
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone"
    .end annotation
.end field

.field private promote_text:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "promote_text"
    .end annotation
.end field

.field private rank:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rank"
    .end annotation
.end field

.field private rating:F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rating"
    .end annotation
.end field

.field private region_id:F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "region_id"
    .end annotation
.end field

.field private region_names:[Lcom/itim/explorer/io/model/RegionName;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "region_names"
    .end annotation
.end field

.field private room:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "room"
    .end annotation
.end field

.field private scene_id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "scene_id"
    .end annotation
.end field

.field private score:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "score"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 499
    new-instance v0, Lcom/itim/explorer/io/model/POI$1;

    invoke-direct {v0}, Lcom/itim/explorer/io/model/POI$1;-><init>()V

    sput-object v0, Lcom/itim/explorer/io/model/POI;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/POI;->additionalProperties:Ljava/util/Map;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->additionalProperties:Ljava/util/Map;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->client_ids:[I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->address:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/itim/explorer/io/model/POI;->ads_category:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->ads_category_name:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->building:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->city_borders:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->click_url:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->description:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/itim/explorer/io/model/POI;->distance:F

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->email:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/itim/explorer/io/model/POI;->fe_category:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->fe_category_name_en:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->fe_category_name_vn:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/itim/explorer/io/model/POI;->featured_status:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->floor:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/itim/explorer/io/model/POI;->frame_start:I

    .line 113
    const-class v7, Lcom/itim/explorer/io/model/GPS;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/itim/explorer/io/model/GPS;

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->gps:Lcom/itim/explorer/io/model/GPS;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/itim/explorer/io/model/POI;->group_id:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->hash:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/itim/explorer/io/model/POI;->id:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->img:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->phone:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->promote_text:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/itim/explorer/io/model/POI;->rank:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/itim/explorer/io/model/POI;->rating:F

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/itim/explorer/io/model/POI;->region_id:F

    .line 123
    const-class v7, Lcom/itim/explorer/io/model/RegionName;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 125
    .local v6, "params":[Landroid/os/Parcelable;
    array-length v7, v6

    new-array v7, v7, [Lcom/itim/explorer/io/model/RegionName;

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->region_names:[Lcom/itim/explorer/io/model/RegionName;

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "i":I
    move-object v0, v6

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 128
    .local v5, "p":Landroid/os/Parcelable;
    iget-object v7, p0, Lcom/itim/explorer/io/model/POI;->region_names:[Lcom/itim/explorer/io/model/RegionName;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    check-cast v5, Lcom/itim/explorer/io/model/RegionName;

    .end local v5    # "p":Landroid/os/Parcelable;
    aput-object v5, v7, v2

    .line 127
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->room:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/itim/explorer/io/model/POI;->scene_id:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/itim/explorer/io/model/POI;->score:D

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->title:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/io/model/POI;->url:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    if-ne p0, p1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v1

    .line 527
    :cond_1
    instance-of v3, p1, Lcom/itim/explorer/io/model/POI;

    if-nez v3, :cond_2

    move v1, v2

    .line 528
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 533
    check-cast v0, Lcom/itim/explorer/io/model/POI;

    .line 537
    .local v0, "lhs":Lcom/itim/explorer/io/model/POI;
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v3

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
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
    .line 450
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "address"
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAds_category()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ads_category"
    .end annotation

    .prologue
    .line 151
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->ads_category:I

    return v0
.end method

.method public getAds_category_name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ads_category_name"
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->ads_category_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAdv()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->client_ids:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->client_ids:[I

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBuilding()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "building"
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->building:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "locale":Ljava/lang/String;
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getFe_category_name_vn()Ljava/lang/String;

    move-result-object v1

    .line 514
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getFe_category_name_en()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCity_borders()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "city_borders"
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->city_borders:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_url()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "click_url"
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->click_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()F
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "distance"
    .end annotation

    .prologue
    .line 211
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->distance:F

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "email"
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFe_category()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fe_category"
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->fe_category:I

    return v0
.end method

.method public getFe_category_name_en()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fe_category_name_en"
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->fe_category_name_en:Ljava/lang/String;

    return-object v0
.end method

.method public getFe_category_name_vn()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fe_category_name_vn"
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->fe_category_name_vn:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatured_status()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "featured_status"
    .end annotation

    .prologue
    .line 260
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->featured_status:I

    return v0
.end method

.method public getFloor()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "floor"
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->floor:Ljava/lang/String;

    return-object v0
.end method

.method public getFrame_start()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "frame_start"
    .end annotation

    .prologue
    .line 280
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->frame_start:I

    return v0
.end method

.method public getGps()Lcom/itim/explorer/io/model/GPS;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gps"
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->gps:Lcom/itim/explorer/io/model/GPS;

    return-object v0
.end method

.method public getGroup_id()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group_id"
    .end annotation

    .prologue
    .line 300
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->group_id:I

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hash"
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 320
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->id:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "img"
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone"
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPromote_text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "promote_text"
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->promote_text:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rank"
    .end annotation

    .prologue
    .line 360
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->rank:I

    return v0
.end method

.method public getRating()F
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rating"
    .end annotation

    .prologue
    .line 370
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->rating:F

    return v0
.end method

.method public getRegion_id()F
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "region_id"
    .end annotation

    .prologue
    .line 380
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->region_id:F

    return v0
.end method

.method public getRegion_names()[Lcom/itim/explorer/io/model/RegionName;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "region_names"
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->region_names:[Lcom/itim/explorer/io/model/RegionName;

    return-object v0
.end method

.method public getRoom()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "room"
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->room:Ljava/lang/String;

    return-object v0
.end method

.method public getScene_id()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "scene_id"
    .end annotation

    .prologue
    .line 410
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->scene_id:I

    return v0
.end method

.method public getScore()D
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "score"
    .end annotation

    .prologue
    .line 420
    iget-wide v0, p0, Lcom/itim/explorer/io/model/POI;->score:D

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public setAdditionalProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "address"
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->address:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setAds_category(I)V
    .locals 0
    .param p1, "ads_category"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ads_category"
    .end annotation

    .prologue
    .line 156
    iput p1, p0, Lcom/itim/explorer/io/model/POI;->ads_category:I

    .line 157
    return-void
.end method

.method public setAds_category_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "ads_category_name"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ads_category_name"
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->ads_category_name:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setBuilding(Ljava/lang/String;)V
    .locals 0
    .param p1, "building"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "building"
    .end annotation

    .prologue
    .line 176
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->building:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setCity_borders(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_borders"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "city_borders"
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->city_borders:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setClick_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "click_url"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "click_url"
    .end annotation

    .prologue
    .line 196
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->click_url:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->description:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .param p1, "distance"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "distance"
    .end annotation

    .prologue
    .line 215
    iput p1, p0, Lcom/itim/explorer/io/model/POI;->distance:F

    .line 216
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "email"
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->email:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setFe_category(I)V
    .locals 0
    .param p1, "fe_category"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fe_category"
    .end annotation

    .prologue
    .line 235
    iput p1, p0, Lcom/itim/explorer/io/model/POI;->fe_category:I

    .line 236
    return-void
.end method

.method public setFe_category_name_en(Ljava/lang/String;)V
    .locals 0
    .param p1, "fe_category_name_en"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fe_category_name_en"
    .end annotation

    .prologue
    .line 245
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->fe_category_name_en:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setFe_category_name_vn(Ljava/lang/String;)V
    .locals 0
    .param p1, "fe_category_name_vn"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fe_category_name_vn"
    .end annotation

    .prologue
    .line 255
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->fe_category_name_vn:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setFeatured_status(I)V
    .locals 0
    .param p1, "featured_status"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "featured_status"
    .end annotation

    .prologue
    .line 265
    iput p1, p0, Lcom/itim/explorer/io/model/POI;->featured_status:I

    .line 266
    return-void
.end method

.method public setFloor(Ljava/lang/String;)V
    .locals 0
    .param p1, "floor"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "floor"
    .end annotation

    .prologue
    .line 275
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->floor:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setFrame_start(I)V
    .locals 0
    .param p1, "frame_start"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "frame_start"
    .end annotation

    .prologue
    .line 285
    iput p1, p0, Lcom/itim/explorer/io/model/POI;->frame_start:I

    .line 286
    return-void
.end method

.method public setGps(Lcom/itim/explorer/io/model/GPS;)V
    .locals 0
    .param p1, "gps"    # Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gps"
    .end annotation

    .prologue
    .line 295
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->gps:Lcom/itim/explorer/io/model/GPS;

    .line 296
    return-void
.end method

.method public setGroup_id(I)V
    .locals 0
    .param p1, "group_id"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group_id"
    .end annotation

    .prologue
    .line 305
    iput p1, p0, Lcom/itim/explorer/io/model/POI;->group_id:I

    .line 306
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hash"
    .end annotation

    .prologue
    .line 315
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->hash:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 325
    iput p1, p0, Lcom/itim/explorer/io/model/POI;->id:I

    .line 326
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "img"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "img"
    .end annotation

    .prologue
    .line 335
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->img:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone"
    .end annotation

    .prologue
    .line 345
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->phone:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setPromote_text(Ljava/lang/String;)V
    .locals 0
    .param p1, "promote_text"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "promote_text"
    .end annotation

    .prologue
    .line 355
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->promote_text:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setRank(I)V
    .locals 0
    .param p1, "rank"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rank"
    .end annotation

    .prologue
    .line 365
    iput p1, p0, Lcom/itim/explorer/io/model/POI;->rank:I

    .line 366
    return-void
.end method

.method public setRating(F)V
    .locals 0
    .param p1, "rating"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rating"
    .end annotation

    .prologue
    .line 375
    iput p1, p0, Lcom/itim/explorer/io/model/POI;->rating:F

    .line 376
    return-void
.end method

.method public setRegion_id(F)V
    .locals 0
    .param p1, "region_id"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "region_id"
    .end annotation

    .prologue
    .line 385
    iput p1, p0, Lcom/itim/explorer/io/model/POI;->region_id:F

    .line 386
    return-void
.end method

.method public setRegion_names([Lcom/itim/explorer/io/model/RegionName;)V
    .locals 0
    .param p1, "region_names"    # [Lcom/itim/explorer/io/model/RegionName;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "region_names"
    .end annotation

    .prologue
    .line 395
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->region_names:[Lcom/itim/explorer/io/model/RegionName;

    .line 396
    return-void
.end method

.method public setRoom(Ljava/lang/String;)V
    .locals 0
    .param p1, "room"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "room"
    .end annotation

    .prologue
    .line 405
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->room:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setScene_id(I)V
    .locals 0
    .param p1, "scene_id"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "scene_id"
    .end annotation

    .prologue
    .line 415
    iput p1, p0, Lcom/itim/explorer/io/model/POI;->scene_id:I

    .line 416
    return-void
.end method

.method public setScore(D)V
    .locals 0
    .param p1, "score"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "score"
    .end annotation

    .prologue
    .line 425
    iput-wide p1, p0, Lcom/itim/explorer/io/model/POI;->score:D

    .line 426
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation

    .prologue
    .line 435
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->title:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation

    .prologue
    .line 445
    iput-object p1, p0, Lcom/itim/explorer/io/model/POI;->url:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 465
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->client_ids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 466
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->ads_category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->ads_category_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->building:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->city_borders:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->click_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->distance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 474
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 475
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->fe_category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->fe_category_name_en:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->fe_category_name_vn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->featured_status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->floor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->frame_start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->gps:Lcom/itim/explorer/io/model/GPS;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 482
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->group_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->img:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->promote_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 488
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->rank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->rating:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 490
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->region_id:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 491
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->region_names:[Lcom/itim/explorer/io/model/RegionName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 492
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->room:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget v0, p0, Lcom/itim/explorer/io/model/POI;->scene_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget-wide v0, p0, Lcom/itim/explorer/io/model/POI;->score:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 495
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/itim/explorer/io/model/POI;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    return-void
.end method
