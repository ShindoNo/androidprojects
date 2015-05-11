.class public Lcom/itim/explorer/io/model/CityBorder;
.super Ljava/lang/Object;
.source "CityBorder.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;
    value = {
        "id",
        "name",
        "min_lat",
        "min_lng",
        "max_lat",
        "max_lng"
    }
.end annotation


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

.field private id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private max_lat:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_lat"
    .end annotation
.end field

.field private max_lng:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_lng"
    .end annotation
.end field

.field private min_lat:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "min_lat"
    .end annotation
.end field

.field private min_lng:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "min_lng"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation
.end field

.field private nameNoSign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/CityBorder;->additionalProperties:Ljava/util/Map;

    return-void
.end method

.method public static createCurrentCity(Landroid/content/Context;)Lcom/itim/explorer/io/model/CityBorder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 111
    if-nez p0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 113
    :cond_0
    new-instance v0, Lcom/itim/explorer/io/model/CityBorder;

    invoke-direct {v0}, Lcom/itim/explorer/io/model/CityBorder;-><init>()V

    .line 114
    .local v0, "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/model/CityBorder;->setId(I)V

    .line 115
    const v1, 0x7f0e00a6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/model/CityBorder;->setName(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, v2, v3}, Lcom/itim/explorer/io/model/CityBorder;->setMax_lat(D)V

    .line 118
    invoke-virtual {v0, v2, v3}, Lcom/itim/explorer/io/model/CityBorder;->setMax_lng(D)V

    .line 119
    invoke-virtual {v0, v2, v3}, Lcom/itim/explorer/io/model/CityBorder;->setMin_lat(D)V

    .line 120
    invoke-virtual {v0, v2, v3}, Lcom/itim/explorer/io/model/CityBorder;->setMin_lng(D)V

    goto :goto_0
.end method


# virtual methods
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
    .line 97
    iget-object v0, p0, Lcom/itim/explorer/io/model/CityBorder;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 37
    iget v0, p0, Lcom/itim/explorer/io/model/CityBorder;->id:I

    return v0
.end method

.method public getMax_lat()D
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_lat"
    .end annotation

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/itim/explorer/io/model/CityBorder;->max_lat:D

    return-wide v0
.end method

.method public getMax_lng()D
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_lng"
    .end annotation

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/itim/explorer/io/model/CityBorder;->max_lng:D

    return-wide v0
.end method

.method public getMin_lat()D
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "min_lat"
    .end annotation

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/itim/explorer/io/model/CityBorder;->min_lat:D

    return-wide v0
.end method

.method public getMin_lng()D
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "min_lng"
    .end annotation

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/itim/explorer/io/model/CityBorder;->min_lng:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/itim/explorer/io/model/CityBorder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameNoSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/itim/explorer/io/model/CityBorder;->nameNoSign:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/itim/explorer/io/model/CityBorder;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 42
    iput p1, p0, Lcom/itim/explorer/io/model/CityBorder;->id:I

    .line 43
    return-void
.end method

.method public setMax_lat(D)V
    .locals 0
    .param p1, "max_lat"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_lat"
    .end annotation

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/itim/explorer/io/model/CityBorder;->max_lat:D

    .line 83
    return-void
.end method

.method public setMax_lng(D)V
    .locals 0
    .param p1, "max_lng"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_lng"
    .end annotation

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/itim/explorer/io/model/CityBorder;->max_lng:D

    .line 93
    return-void
.end method

.method public setMin_lat(D)V
    .locals 0
    .param p1, "min_lat"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "min_lat"
    .end annotation

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/itim/explorer/io/model/CityBorder;->min_lat:D

    .line 63
    return-void
.end method

.method public setMin_lng(D)V
    .locals 0
    .param p1, "min_lng"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "min_lng"
    .end annotation

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/itim/explorer/io/model/CityBorder;->min_lng:D

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/itim/explorer/io/model/CityBorder;->name:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setNameNoSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameNoSign"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/itim/explorer/io/model/CityBorder;->nameNoSign:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/CityBorder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
