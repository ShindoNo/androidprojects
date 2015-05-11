.class public Lcom/itim/explorer/io/model/DirectionStep$Polyline;
.super Ljava/lang/Object;
.source "DirectionStep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/io/model/DirectionStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Polyline"
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

.field private points:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "points"
    .end annotation
.end field

.field final synthetic this$0:Lcom/itim/explorer/io/model/DirectionStep;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/io/model/DirectionStep;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionStep$Polyline;->this$0:Lcom/itim/explorer/io/model/DirectionStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep$Polyline;->additionalProperties:Ljava/util/Map;

    .line 124
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
    .line 142
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep$Polyline;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getPoints()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "points"
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep$Polyline;->points:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/itim/explorer/io/model/DirectionStep$Polyline;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public setPoints(Ljava/lang/String;)V
    .locals 0
    .param p1, "points"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "points"
    .end annotation

    .prologue
    .line 137
    iput-object p1, p0, Lcom/itim/explorer/io/model/DirectionStep$Polyline;->points:Ljava/lang/String;

    .line 138
    return-void
.end method
