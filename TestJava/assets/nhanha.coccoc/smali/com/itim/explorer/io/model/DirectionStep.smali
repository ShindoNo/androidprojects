.class public Lcom/itim/explorer/io/model/DirectionStep;
.super Ljava/lang/Object;
.source "DirectionStep.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/io/model/DirectionStep$Polyline;
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

.field private end_location:Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end_location"
    .end annotation
.end field

.field private html_instructions:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "html_instructions"
    .end annotation
.end field

.field private maneuver:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "maneuver"
    .end annotation
.end field

.field private polyline:Lcom/itim/explorer/io/model/DirectionStep$Polyline;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "polyline"
    .end annotation
.end field

.field private start_location:Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_location"
    .end annotation
.end field

.field private travel_mode:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "travel_mode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep;->additionalProperties:Ljava/util/Map;

    .line 122
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
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getDistance()Lcom/itim/explorer/io/model/DirectionStepValue;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "distance"
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep;->distance:Lcom/itim/explorer/io/model/DirectionStepValue;

    return-object v0
.end method

.method public getDuration()Lcom/itim/explorer/io/model/DirectionStepValue;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep;->duration:Lcom/itim/explorer/io/model/DirectionStepValue;

    return-object v0
.end method

.method public getEnd_location()Lcom/itim/explorer/io/model/GPS;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end_location"
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep;->end_location:Lcom/itim/explorer/io/model/GPS;

    return-object v0
.end method

.method public getHtml_instructions()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "html_instructions"
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep;->html_instructions:Ljava/lang/String;

    return-object v0
.end method

.method public getManeuver()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "maneuver"
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep;->maneuver:Ljava/lang/String;

    return-object v0
.end method

.method public getPolyline()Lcom/itim/explorer/io/model/DirectionStep$Polyline;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "polyline"
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep;->polyline:Lcom/itim/explorer/io/model/DirectionStep$Polyline;

    return-object v0
.end method

.method public getStart_location()Lcom/itim/explorer/io/model/GPS;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_location"
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep;->start_location:Lcom/itim/explorer/io/model/GPS;

    return-object v0
.end method

.method public getTravel_mode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "travel_mode"
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep;->travel_mode:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
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
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionStep;->distance:Lcom/itim/explorer/io/model/DirectionStepValue;

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
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionStep;->duration:Lcom/itim/explorer/io/model/DirectionStepValue;

    .line 50
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
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionStep;->end_location:Lcom/itim/explorer/io/model/GPS;

    .line 60
    return-void
.end method

.method public setHtml_instructions(Ljava/lang/String;)V
    .locals 0
    .param p1, "html_instructions"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "html_instructions"
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionStep;->html_instructions:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setManeuver(Ljava/lang/String;)V
    .locals 0
    .param p1, "maneuver"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "maneuver"
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionStep;->maneuver:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPolyline(Lcom/itim/explorer/io/model/DirectionStep$Polyline;)V
    .locals 0
    .param p1, "polyline"    # Lcom/itim/explorer/io/model/DirectionStep$Polyline;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "polyline"
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionStep;->polyline:Lcom/itim/explorer/io/model/DirectionStep$Polyline;

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
    .line 99
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionStep;->start_location:Lcom/itim/explorer/io/model/GPS;

    .line 100
    return-void
.end method

.method public setTravel_mode(Ljava/lang/String;)V
    .locals 0
    .param p1, "travel_mode"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "travel_mode"
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionStep;->travel_mode:Ljava/lang/String;

    .line 110
    return-void
.end method
