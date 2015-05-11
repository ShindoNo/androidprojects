.class public Lcom/itim/explorer/io/model/DirectionLegs;
.super Ljava/lang/Object;
.source "DirectionLegs.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
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

.field private distance:Lcom/itim/explorer/io/model/DirectionStepValue;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "distance"
    .end annotation
.end field

.field private duration:Lcom/itim/explorer/io/model/DirectionStepValue;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation
.end field

.field private end_address:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end_address"
    .end annotation
.end field

.field private end_location:Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end_location"
    .end annotation
.end field

.field private start_address:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_address"
    .end annotation
.end field

.field private start_location:Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_location"
    .end annotation
.end field

.field private steps:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "steps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/DirectionStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/DirectionLegs;->additionalProperties:Ljava/util/Map;

    return-void
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
    .line 108
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionLegs;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getDistance()Lcom/itim/explorer/io/model/DirectionStepValue;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "distance"
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionLegs;->distance:Lcom/itim/explorer/io/model/DirectionStepValue;

    return-object v0
.end method

.method public getDuration()Lcom/itim/explorer/io/model/DirectionStepValue;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionLegs;->duration:Lcom/itim/explorer/io/model/DirectionStepValue;

    return-object v0
.end method

.method public getEnd_address()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end_address"
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionLegs;->end_address:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_location()Lcom/itim/explorer/io/model/GPS;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end_location"
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionLegs;->end_location:Lcom/itim/explorer/io/model/GPS;

    return-object v0
.end method

.method public getStart_address()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_address"
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionLegs;->start_address:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_location()Lcom/itim/explorer/io/model/GPS;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_location"
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionLegs;->start_location:Lcom/itim/explorer/io/model/GPS;

    return-object v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "steps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/DirectionStep;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionLegs;->steps:Ljava/util/List;

    return-object v0
.end method

.method public setAdditionalProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionLegs;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public setAdditionalProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "additionalProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionLegs;->additionalProperties:Ljava/util/Map;

    .line 104
    return-void
.end method

.method public setDistance(Lcom/itim/explorer/io/model/DirectionStepValue;)V
    .locals 0
    .param p1, "distance"    # Lcom/itim/explorer/io/model/DirectionStepValue;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "distance"
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionLegs;->distance:Lcom/itim/explorer/io/model/DirectionStepValue;

    .line 40
    return-void
.end method

.method public setDuration(Lcom/itim/explorer/io/model/DirectionStepValue;)V
    .locals 0
    .param p1, "duration"    # Lcom/itim/explorer/io/model/DirectionStepValue;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionLegs;->duration:Lcom/itim/explorer/io/model/DirectionStepValue;

    .line 50
    return-void
.end method

.method public setEnd_address(Ljava/lang/String;)V
    .locals 0
    .param p1, "end_address"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end_address"
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionLegs;->end_address:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setEnd_location(Lcom/itim/explorer/io/model/GPS;)V
    .locals 0
    .param p1, "end_location"    # Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end_location"
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionLegs;->end_location:Lcom/itim/explorer/io/model/GPS;

    .line 60
    return-void
.end method

.method public setStart_address(Ljava/lang/String;)V
    .locals 0
    .param p1, "start_address"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_address"
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionLegs;->start_address:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setStart_location(Lcom/itim/explorer/io/model/GPS;)V
    .locals 0
    .param p1, "start_location"    # Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_location"
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionLegs;->start_location:Lcom/itim/explorer/io/model/GPS;

    .line 70
    return-void
.end method

.method public setSteps(Ljava/util/List;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "steps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/DirectionStep;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/DirectionStep;>;"
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionLegs;->steps:Ljava/util/List;

    .line 100
    return-void
.end method
