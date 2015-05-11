.class public Lcom/itim/explorer/io/model/DirectionBound;
.super Ljava/lang/Object;
.source "DirectionBound.java"


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

.field private northeast:Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "northeast"
    .end annotation
.end field

.field private southwest:Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "southwest"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/DirectionBound;->additionalProperties:Ljava/util/Map;

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
    .line 42
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionBound;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getNortheast()Lcom/itim/explorer/io/model/GPS;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "northeast"
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionBound;->northeast:Lcom/itim/explorer/io/model/GPS;

    return-object v0
.end method

.method public getSouthwest()Lcom/itim/explorer/io/model/GPS;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "southwest"
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionBound;->southwest:Lcom/itim/explorer/io/model/GPS;

    return-object v0
.end method

.method public setAdditionalProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionBound;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public setNortheast(Lcom/itim/explorer/io/model/GPS;)V
    .locals 0
    .param p1, "northeast"    # Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "northeast"
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionBound;->northeast:Lcom/itim/explorer/io/model/GPS;

    .line 28
    return-void
.end method

.method public setSouthwest(Lcom/itim/explorer/io/model/GPS;)V
    .locals 0
    .param p1, "southwest"    # Lcom/itim/explorer/io/model/GPS;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "southwest"
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionBound;->southwest:Lcom/itim/explorer/io/model/GPS;

    .line 38
    return-void
.end method
