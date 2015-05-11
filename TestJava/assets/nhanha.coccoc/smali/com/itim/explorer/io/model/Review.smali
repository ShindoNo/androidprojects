.class public Lcom/itim/explorer/io/model/Review;
.super Ljava/lang/Object;
.source "Review.java"


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

.field private comment:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comment"
    .end annotation
.end field

.field private fb_post_id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fb_post_id"
    .end annotation
.end field

.field private fb_user_id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fb_user_id"
    .end annotation
.end field

.field private fb_user_name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fb_user_name"
    .end annotation
.end field

.field private rating:F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rating"
    .end annotation
.end field

.field private timestamp:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/io/model/Review;->additionalProperties:Ljava/util/Map;

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
    .line 92
    iget-object v0, p0, Lcom/itim/explorer/io/model/Review;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comment"
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/itim/explorer/io/model/Review;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getFb_post_id()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fb_post_id"
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/itim/explorer/io/model/Review;->fb_post_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFb_user_id()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fb_user_id"
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/itim/explorer/io/model/Review;->fb_user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFb_user_name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fb_user_name"
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/itim/explorer/io/model/Review;->fb_user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rating"
    .end annotation

    .prologue
    .line 62
    iget v0, p0, Lcom/itim/explorer/io/model/Review;->rating:F

    return v0
.end method

.method public getTimestamp()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created"
    .end annotation

    .prologue
    .line 82
    iget v0, p0, Lcom/itim/explorer/io/model/Review;->timestamp:I

    return v0
.end method

.method public setAdditionalProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/itim/explorer/io/model/Review;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comment"
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Lcom/itim/explorer/io/model/Review;->comment:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setFb_post_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "fb_post_id"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fb_post_id"
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/itim/explorer/io/model/Review;->fb_post_id:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setFb_user_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "fb_user_id"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fb_user_id"
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/itim/explorer/io/model/Review;->fb_user_id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setFb_user_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "fb_user_name"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fb_user_name"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/itim/explorer/io/model/Review;->fb_user_name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setRating(F)V
    .locals 0
    .param p1, "rating"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rating"
    .end annotation

    .prologue
    .line 67
    iput p1, p0, Lcom/itim/explorer/io/model/Review;->rating:F

    .line 68
    return-void
.end method

.method public setTimestamp(I)V
    .locals 0
    .param p1, "timestamp"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created"
    .end annotation

    .prologue
    .line 87
    iput p1, p0, Lcom/itim/explorer/io/model/Review;->timestamp:I

    .line 88
    return-void
.end method
