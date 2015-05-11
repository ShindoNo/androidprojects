.class public Lcom/itim/explorer/io/model/Direction$Polyline;
.super Ljava/lang/Object;
.source "Direction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/io/model/Direction;
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

.field final synthetic this$0:Lcom/itim/explorer/io/model/Direction;


# direct methods
.method public constructor <init>(Lcom/itim/explorer/io/model/Direction;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/itim/explorer/io/model/Direction$Polyline;->this$0:Lcom/itim/explorer/io/model/Direction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/Direction$Polyline;->additionalProperties:Ljava/util/Map;

    .line 68
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
    .line 86
    iget-object v0, p0, Lcom/itim/explorer/io/model/Direction$Polyline;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getPoints()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "points"
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/itim/explorer/io/model/Direction$Polyline;->points:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/itim/explorer/io/model/Direction$Polyline;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public setPoints(Ljava/lang/String;)V
    .locals 0
    .param p1, "points"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "points"
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/itim/explorer/io/model/Direction$Polyline;->points:Ljava/lang/String;

    .line 82
    return-void
.end method
