.class public Lcom/itim/explorer/io/model/FacebookPost;
.super Ljava/lang/Object;
.source "FacebookPost.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;
    value = {
        "id",
        "post_id",
        "user_id",
        "poi_hash",
        "created",
        "rating"
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

.field private created:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private poi_hash:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "poi_hash"
    .end annotation
.end field

.field private post_id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "post_id"
    .end annotation
.end field

.field private rating:Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rating"
    .end annotation
.end field

.field private user_id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/FacebookPost;->additionalProperties:Ljava/util/Map;

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
    .line 93
    iget-object v0, p0, Lcom/itim/explorer/io/model/FacebookPost;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created"
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/itim/explorer/io/model/FacebookPost;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/itim/explorer/io/model/FacebookPost;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPoi_hash()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "poi_hash"
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/itim/explorer/io/model/FacebookPost;->poi_hash:Ljava/lang/String;

    return-object v0
.end method

.method public getPost_id()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "post_id"
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/itim/explorer/io/model/FacebookPost;->post_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rating"
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/itim/explorer/io/model/FacebookPost;->rating:Ljava/lang/Object;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_id"
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/itim/explorer/io/model/FacebookPost;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/itim/explorer/io/model/FacebookPost;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0
    .param p1, "created"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created"
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/itim/explorer/io/model/FacebookPost;->created:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/itim/explorer/io/model/FacebookPost;->id:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPoi_hash(Ljava/lang/String;)V
    .locals 0
    .param p1, "poi_hash"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "poi_hash"
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lcom/itim/explorer/io/model/FacebookPost;->poi_hash:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setPost_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "post_id"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "post_id"
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/itim/explorer/io/model/FacebookPost;->post_id:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setRating(Ljava/lang/Object;)V
    .locals 0
    .param p1, "rating"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rating"
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lcom/itim/explorer/io/model/FacebookPost;->rating:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_id"
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/itim/explorer/io/model/FacebookPost;->user_id:Ljava/lang/String;

    .line 59
    return-void
.end method
